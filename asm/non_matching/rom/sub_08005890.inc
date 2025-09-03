	.syntax unified
	ldr r1, _080058BC
	ldrh r2, [r1, #0xa]
	ldr r0, _080058C0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080058C4
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r2, _080058C8
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080058CC
	str r0, [r1]
	ldr r0, _080058D0
	str r0, [r1, #4]
	ldr r0, _080058D4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_080058BC: .4byte 0x040000B0
_080058C0: .4byte 0x0000C5FF
_080058C4: .4byte 0x00007FFF
_080058C8: .4byte 0x040000BA
_080058CC: .4byte gUnknown_030045F0
_080058D0: .4byte 0x0400001C
_080058D4: .4byte 0xA2600001
	.syntax divided
