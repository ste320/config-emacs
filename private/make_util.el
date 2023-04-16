
(defun desperately-compile ()
  "Traveling up the path, find a Makefile and `compile'."
  (interactive)
  (with-temp-buffer
    (while (and (not (or (file-exists-p "Makefile")
                         (file-exists-p "makefile")
										 ))
                (not (equal "/" default-directory)))
      (cd ".."))
    (when (or (file-exists-p "Makefile")
              (file-exists-p "makefile")
          )
      ;(compile "make -k")
      ;(compile "make")
      (compile compile-command)
			))
	)


(setq compilation-scroll-output 'first-error )
