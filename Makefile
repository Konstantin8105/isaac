.PHONY: build
build:
	@echo "build isaac application"
	rm -rf ./src
	mkdir ./src
	cp -r ./archive/isaacmk.4_2/*  ./src
	cp -r ./archive/isaacsrc.4_2/* ./src
	sed -i '/.*FC = f77.*/c\FC = gfortran -std=legacy' ./src/makefile
	cd src; make -f makefile
	mv ./src/isaac .
	rm -rf ./src
