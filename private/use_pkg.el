;; ChatGPT said after showing Emacs, after-init-hook start by a thread
;; So lazy load and auto set viper-mode at the very soon after startup.
(use-package viper
  :ensure nil
	:demand t
	:defer t
  :hook (after-init . (lambda()
											  (setq viper-mode t)
											  (viper-mode)
											)	
        )
)

(use-package auto-complete
  :ensure t
  :defer t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t))
  :config
  (setq ac-ignore-case nil)
)

(use-package magit
  :defer t
	:ensure t  ;; if not installed, install
  :bind ("C-x g" . magit-status))
