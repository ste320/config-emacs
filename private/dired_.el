
(add-hook 'dired-load-hook
               (lambda () (require 'dired-x) 
							 ;; dired vim
							 (define-key dired-mode-map "j" 'dired-next-line)
							 (define-key dired-mode-map "k" 'dired-previous-line)
							 )
)

(add-hook 'dired-mode-hook
          (lambda ()
            (unless (bound-and-true-p dired-omit-mode)
              (dired-omit-mode 1)
              (dired-hide-details-mode 1)
							(setq-local dired-omit-files 
											    (concat dired-omit-files "\\|^\\..+$"))
						)
					)
)

;; dired etc
(setq dired-kill-when-opening-new-dired-buffer t)
