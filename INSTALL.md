# Installing

To setup up the repository:

```
git clone https://github.com/Kurausukun/mother3
git clone https://github.com/agbcc/notyourav

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
