all: build

publish:
	landslide presentation.md --relative --copy-theme
	mv presentation.html index.html

build:
	landslide presentation.md
	mv presentation.html index.html

show: build
	open index.html
