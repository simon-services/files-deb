.PHONY: all
all: build 

build:
	mkdir tmp
	rsync -ax --exclude tmp ./ tmp/
	rm -rfv tmp/Makefile tmp/.git* tmp/LICENSE tmp/README.md
	dpkg-deb --build tmp files-0.0.1-amd64.deb
	rm -rf tmp

.PHONY: clean 
clean:
	rm -fv *~ .*.swp *.deb
