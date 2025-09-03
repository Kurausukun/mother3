	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806D740
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806D7D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D70A
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r1, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x24
	adds r3, r4, #0
	adds r3, #0x28
	bl sub_08088044
_0806D70A:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #2
	bl sub_08088024
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D580
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_08087F10
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D740: .4byte vt_09F7FC50
	.syntax divided
