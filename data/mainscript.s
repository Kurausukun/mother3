.section .data
.align 2, 0

    .global gMainScript
gMainScript:
    .incbin "build/mainscript.o"
