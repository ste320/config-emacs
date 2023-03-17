
;; open terminal
;(defun brds/open-Terminal-here ()
(defun shell-terminal ()
    (interactive)
    (shell-command
     (concat "open -a Terminal "
             (shell-quote-argument (expand-file-name
                                    default-directory))) nil nil))

;; to append novel path to $PATH env val
(defun shell-env-append (VAR VAL delimiter)
	"set env VAR=$VAR:VAL"
	(setenv VAR (concat (getenv VAR) delimiter VAL ) )
)

(defun shell-env-append-colon (VAR VAL)
	""
	(shell-env-append VAR VAL ":") )

;; to append novel path to $PATH env val
(defun shell-env-append-path (VAL)
	""
	(shell-env-append-colon "PATH"
										(expand-file-name VAL)
										))


