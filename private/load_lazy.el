(defun load-lazy (library-name before-jobs after-jobs)
  "Load a library lazily by NAME, then execute AFTER-JOBS."
  (unless (featurep library-name)
    (funcall before-jobs)
    (require library-name)
	  ;(eval after-jobs)
    (funcall after-jobs)
	)
)


(defun load-lazy-cscope ()
  "Load xcscope library lazily
   and enable cscope minor mode.
   you can unload cscope by (unload-feature 'xcscope)
   or M-x unload-feature RET xcscope "
  (interactive)
  (load-lazy 'xcscope (lambda ()
											(add-to-list 'load-path "~/.emacs.d/cscope"))
						          (lambda ()
											(cscope-minor-mode)
                      (setq cscope-program "~/bin/cscope")
											(message "OK xcscope"))
	)
)

