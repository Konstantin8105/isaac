# isaac
isaac cfd golang replice
https://isaac-cfd.sourceforge.net/

Instruction:
```
mkdir src
cp -r ./archive/isaacmk.4_2  ./src
cp -r ./archive/isaacsrc.4_2 ./src
cd src
```

Edit `makefile` from `FC = f77` to `FC = gfortran -std=legacy`
