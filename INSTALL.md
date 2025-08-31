# Installing

First, copy your Mother 3 JP ROM into the repository named `baserom.gba`.

To setup up the compiler, it is recommended to download the pre-existing binaries:
```
mkdir -p tools/agbcc
curl -s -L https://github.com/notyourav/agbcc/releases/download/cp/agbcc.tar.gz | tar xvz - -C tools/agbcc
```

Optionally you can build agbcc from source (this will not work on Apple Silicon):

```
git clone https://github.com/notyourav/agbcc
cd ./agbcc
git checkout cp
sh build.sh
sh install.sh ..
```

To build **mother3.gba**:
```
./setup.sh
./build.sh
```
