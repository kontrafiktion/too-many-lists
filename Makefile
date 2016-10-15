RUSTBOOK:=rustbook
-include Makefile.local


TARGET_DIR:=book/

build: clean
	$(RUSTBOOK) build text/ $(TARGET_DIR)
	mkdir $(TARGET_DIR)images
	cp text/images/*.png $(TARGET_DIR)images

clean:
	rm -rf book

.PHONY: clean build

