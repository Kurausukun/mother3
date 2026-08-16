    .section .rodata

    .global gUnknown_080C17A0
gUnknown_080C17A0:
    .word sub_080008AC+1
    .word sub_080008D0+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
	
    .global gSineTable
gSineTable:
    .incbin "baserom.gba", 0x000C17D8, 0x280

gUnknown_080C1A58::
    .word sub_080053D0+1
    .word gUnknown_03004B14
    .word sub_080055E4+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
