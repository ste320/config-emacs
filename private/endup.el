
(global-hl-line-mode t)
; don't work
;(set-face-attribute 'hl-line nil :inherit nil :background "gray6")
; TODO before highlighting white background, black foreground
(set-face-background 'hl-line "gray15")
(set-face-foreground 'hl-line nil)


;; hide show minor mode 
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; slim side edge
(scroll-bar-mode 0)
(window-divider-mode 1)
(fringe-mode 1 )



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "black"
									:foreground "gray65"
									:box 1
									:height 0.9))))
 '(mode-line-buffer-id
	           ((t (:background "black"
										:foreground "gray65"
										:weight normal
										:height 0.9))))
 '(mode-line-inactive
	           ((t (:background "black"
										:foreground "grey50"
										:box 1
										:weight light
										:height 0.9))))
)

(shell-env-append-path "~/bin")


;; ---- debug
;; (display-buffer "*Messages*")


(message "Emacs loaded in %.3fs." 
(float-time (time-subtract (current-time) emacs-start-time)) )
