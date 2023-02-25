
(define-skeleton sgt-skel-c-header
	"Auto C Header Skeleton"
	> "#ifndef _" (setq str (upcase (skeleton-read "Name? "))) "_H__" \n
	> "#define _" str "_H__\n"
	> \n
	> "#endif  /* _" str "_H__ */\n"
	)


(define-skeleton sgt-skel-c++-class-interface
	"Auto C++ Class Skeleton"
	 "class " (setq name   (skeleton-read "Name? "  )) 
	 " {\n"
	 "protected:\n"
	 "  " name "(){}\n"
	 "public:\n"
	 "  static std::shared_ptr<" name "> create();\n"
	 "  //virtual void f()=0;\n"
	 "};\n"
	)


(define-skeleton sgt-skel-c++-class-impl
	"Auto C++ Class Skeleton"
	> "class "  (setq name (skeleton-read "Name? "  )) "_ : " 
   "public " name  "\n"
	 "{\n"
	 "public:\n"
	 "  " name "_(){}\n"
	 "  virtual ~" name "_(){}\n"
	 "};\n"
	 "\n"
	 "shared_ptr<"name "> " name "::create() {\n"            
	 "  shared_ptr<" name "> p = make_shared<" name "_>();\n"
	 "  return p;\n"
 "}"
	)

;(current-buffer)
;(buffer-or-name)
;(buffer-name)

;(store-substring "aa" 1 "" )

;(format "%d" 1.3 )
 
;(message buffer-file-name)

;(redraw-frame)
