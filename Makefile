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

.PHONY: example
example:
	@echo "example"
	rm -f ./n12_225_33.grd
	rm -f ./NACA0012
	rm -f ./gr224n20
	gfortran -std=legacy ./archive/example_cases/NACA0012/Grid/cnvrtgrd.f -o NACA0012
	cp ./archive/example_cases/NACA0012/Grid/gr224n20 .
	./NACA0012
	rm -f ./NACA0012
	rm -f ./gr224n20
	@echo "grid prepared"
	./isaac < ./archive/example_cases/NACA0012/Results/naca0012_mg.dat
	# ./isaac < ./archive/example_cases/NACA0012/Results/naca0012_nomg.dat
	rm -f ./n12_225_33.grd



# ./archive/example_cases/Klebanoff/Results
# ../../../../isaac < asm.dat
