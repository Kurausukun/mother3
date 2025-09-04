docker run --platform=linux/amd64 --rm -it \
  -v "$PWD":/work -w /work \
  -e DEVKITPRO=/opt/devkitpro \
  -e DEVKITARM=/opt/devkitpro/devkitARM \
  devkitpro/devkitarm:latest \
<<<<<<< Updated upstream
  bash -lc "make $@"
=======
  bash -lc 'make -s'
>>>>>>> Stashed changes
