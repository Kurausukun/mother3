# Installing

To setup up the repository:

```
git clone https://github.com/Kurausukun/mother3
git clone https://github.com/notyourav/agbcc

cd ./agbcc
git checkout cp
sh build.sh
sh install.sh ../mother3

cd ../mother3
make setup

```

To build **mother3.gba**:
```
make -j$(nproc)
```
