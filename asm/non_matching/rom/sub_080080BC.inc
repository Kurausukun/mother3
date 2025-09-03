	.syntax unified
sub_080080BC:
	push {lr}
	ldr r0, _080080D4
	movs r1, #0x22
	bl sub_0800289C
	ldr r1, _080080D8
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_080080D4: .4byte gUnknown_09AF3790
_080080D8: .4byte 0x06014000
	.syntax divided
