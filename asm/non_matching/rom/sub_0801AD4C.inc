	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r3, #0xb
	bhi _0801AD5E
	cmp r2, #0x3f
	bls _0801AD68
_0801AD5E:
	ldr r0, _0801AD64
	b _0801AD78
	.align 2, 0
_0801AD64: .4byte gUnknown_02000038
_0801AD68:
	ldr r0, _0801AD7C
	ldr r1, _0801AD80
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r3, #9
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r0, r0, r1
_0801AD78:
	pop {r1}
	bx r1
	.align 2, 0
_0801AD7C: .4byte gGame
_0801AD80: .4byte 0x00004088
	.syntax divided
