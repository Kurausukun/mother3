make -C tools/salsa/build
tools/salsa/build/salsa --extract baserom.gba assets/logic.salsa
cpp -E -P -Wno-everything assets/logic.salsa - > build/mother3/assets/logic.salsa
tools/salsa/build/salsa --build build/mother3/assets/logic.salsa build/mother3/assets/logic.bin 2> log.txt
# diff -y first.txt second.txt
xxd -l 256 1stscript.bin > /tmp/logic.txt
xxd -l 256 myscript.bin > /tmp/logic2.txt
diff -y /tmp/logic.txt /tmp/logic2.txt
