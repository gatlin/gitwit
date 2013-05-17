all: build

build:
	landslide presentation.md
	mv presentation.html index.html

show: build
	open index.html
