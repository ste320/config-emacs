run:
	/Applications/Emacs.app/Contents/MacOS/Emacs 

install:
	mkdir -p ~/.config/emacs/private
	cp src/init.el ~/.config/emacs
	cp -R src/private/*.el ~/.config/emacs/private

clean:
	rm -f ~/.config/emacs/private/*.el~

run3:
	/Applications/Emacs.app/Contents/MacOS/Emacs \
		--no-init-file \
		--load .config/emacs/init.el

run2:
	/Applications/Emacs.app/Contents/MacOS/Emacs \
		--no-init-file \
	  -L .config/emacs \
		--load .config/emacs/init.el

run1:
	/Applications/Emacs.app/Contents/MacOS/Emacs \
		--no-init-file \
		--load src/init.el
