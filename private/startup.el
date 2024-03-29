(defvar emacs-start-time (current-time))

(load-theme 'manoj-dark)

; for ver 28.1
(set-frame-font "Roboto Mono ExtraLight 20" )


(setq inhibit-startup-message t)

;; tab size 2
(setq-default tab-width 2)
;; tab make 2 space
(setq indent-tabs-mode nil) 


;; show column number of pointer
(column-number-mode t)

;; visual line mode. If it's not set, long line over monitor width
(global-visual-line-mode t)
