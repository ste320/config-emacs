
;; caps lock is now control by macos setting
;; In MacOS settings, you can change cmd to control.
; (setq mac-command-modifier 'control)

;; why do I use it?
; (package-initialize)

;; visual line mode. If it's not set, long line over monitor width
;; But 28 verson default having it
; (global-visual-line-mode t)

;; scroll one line
;; ver 28 have that function defaultly
;(setq scroll-conservatively most-positive-fixnum)

;; It's used for run cscope app, but it don't work.
;(setenv "PATH" (concat (getenv "PATH")
;										 (concat ":" (getenv "HOME") "/bin")
;							 )
;				)


;; git add in dired
(defun diredext-exec-git-command-in-shell (command &optional arg file-list)
  "Run a shell command git COMMAND on the marked files.
if no files marked, always operate on current line in dired-mode "
  (interactive
   (let ((files (dired-get-marked-files t current-prefix-arg)))
     (list
      ;; Want to give feedback whether this file or marked files are used:
      (dired-read-shell-command "git command on %s: " current-prefix-arg files)
      current-prefix-arg
      files)))
  (unless (string-match "[?][ \t]\'" command)
    (setq command (concat command " *")))
  (setq command (concat "git " command))
  (dired-do-shell-command command arg file-list)
  (message command)
)
(eval-after-load 'dired '
	(define-key dired-mode-map "]" 'diredext-exec-git-command-in-shell)
)

;; https://gist.github.com/justinhj/5945047
(defun git-add-files(files)
  "Run git add with the input file"
  (interactive)
  (shell-command (format "git add %s" files)))

;; https://gist.github.com/justinhj/5945047
(defun dired-git-add-marked-files()
  "For each marked file in a dired buffer add it to the index
   TODO
    This func have the same thing
    with diredext-exec-git-command-in-shell
    at running git command on dired"
  (interactive)
  (if (eq major-mode 'dired-mode)
      (let ((filenames (dired-get-marked-files))
	          (files ""))
			 (dolist (fn filenames)
				(setq fn (shell-quote-argument fn))
				(setq files (concat files " " fn))
			 )
			 (git-add-files files)
			)
      (error (format "Not a Dired buffer \(%s\)" major-mode))
	)
)

;; viper
;(setq viper-mode t)
;(require 'viper)
;(viper-mode)


;; -------
;; cscope
;;  see load-lazy-cscode() in load-lazy.el
(add-to-list 'load-path "~/.emacs.d/cscope")
;(autoload 'cscope-find-this-symbol "xcscope" nil t)
;; To make Emacs find cscope which is a executable file.
;; You can use (setq cscope-program "/path/to/cscope")
;; or (setq exec-path (append '("~/bin") exec-path))
(setq cscope-program "~/bin/cscope")
;; chat gpt advice
(defun cscope-lazy-load ()
  "Lazy load xcscope library."
  (interactive)
  (unless (featurep 'xcscope)
    (require 'xcscope)
    (cscope-minor-mode)
	)
)

;; ------ debug
;;(load (expand-file-name "keymap.el"))
;; don't work at relative
; (load "keymap.el"))

;(switch-to-buffer (find-file "~/"))
;(switch-to-buffer "*Messages*")

;; -------- remove below

;;(message (expand-file-name "src/keymap.el" ))
;;(message ( concat " ** " default-directory " ** ") )
; (message default-directory)
; error (message load-path)
;(load "src/keymap.el")



