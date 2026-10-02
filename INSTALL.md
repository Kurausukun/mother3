# Installing

First, copy your Mother 3 JP ROM into the repository named `baserom.gba`.

To setup up the compiler, it is recommended to download the pre-existing binaries:
```
mkdir -p tools/agbcc
curl -s -L https://github.com/notyourav/agbcc/releases/download/cp/agbcc.tar.gz | tar xvz - -C tools/agbcc
```

Optionally you can build agbcc from source:

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

# Installing (Apple Silicon)

Building with an ARM Mac native version of agbcc can reduce build times significantly over using the Docker-based setup provided by `setup.sh`/`build.sh`.

First, install devkitPro onto your Mac using the [guide on the devkitPro wiki](https://devkitpro.org/wiki/Getting_Started#macOS).

Then install the gba-dev package using devkitPro pacman:
```
sudo dkp-pacman -S gba-dev
```

Once you have all the prerequisites installed, download the ARM Mac agbcc pre-built binaries: 
```
mkdir -p tools/agbcc
curl -s -L https://github.com/wunnr/agbcc/releases/download/10-02-2026/agbcc-mac-arm64.tar.gz | tar xvz - -C tools/agbcc
```

Or build agbcc from source to avoid all the macOS security prompts:
```
git clone https://github.com/wunnr/agbcc
cd ./agbcc
sh build.sh
sh install.sh ..
```

Finally, build **mother3.gba** with:
```
make setup
make -s
```
