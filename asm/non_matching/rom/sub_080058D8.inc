	.syntax unified
	ldr r1, _080058F4
	ldrh r2, [r1, #0xa]
	ldr r0, _080058F8
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080058FC
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xa
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080058F4: .4byte 0x040000B0
_080058F8: .4byte 0x0000C5FF
_080058FC: .4byte 0x00007FFF
	.syntax divided
