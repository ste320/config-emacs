;; ful screen
(global-set-key  (kbd "C-M-f")  (kbd "M-x toggle-frame-fullscreen"))

;; window resizing
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)


;; korean input method, switching english and korean
;; TODO 3bul
;; unset keybinding  toggle-korean-input-method
(global-unset-key (kbd "S-SPC") )
(global-set-key   (kbd "C-|")  (kbd "M-x toggle-input-method"))


;; compile
(global-set-key [f4] 'compile)
;; see make_util.el
(global-set-key [f2] 'desperately-compile)


;; focused buffer list
(global-set-key  (kbd "C-x C-b")  'buffer-menu-other-window)


(global-set-key [f7] #'vimish-fold)
(global-set-key [f8] #'vimish-fold-delete)
;; (global-set-key (kbd "<menu> v v") #'vimish-fold-delete)


;; folding : hideshow minor mode
(global-set-key [f5] (kbd "C-c @ C-c")) ; hs-toggle-hidding
(global-set-key [f6] (kbd "C-c @ C-t")) 
