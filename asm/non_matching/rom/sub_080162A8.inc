	.syntax unified
	push {r4, lr}
	ldr r4, _0801630C
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r0, _08016310
	ldr r1, _08016314
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08016318
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08016324
	ldr r3, _0801631C
	adds r1, r4, #0
	adds r1, #0x50
	adds r2, r0, #0
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #2
	adds r1, r0, r1
	lsrs r2, r2, #4
	lsls r2, r2, #7
	adds r1, r1, r2
	strh r3, [r1]
	strh r3, [r1, #2]
	adds r0, r1, #0
	adds r0, #0x40
	strh r3, [r0]
	adds r1, #0x42
	strh r3, [r1]
	ldr r2, _08016320
	adds r1, r4, r2
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0
	b _08016326
	.align 2, 0
_0801630C: .4byte gSomeBlend
_08016310: .4byte gGame
_08016314: .4byte 0x00005962
_08016318: .4byte gUnknown_080C211A
_0801631C: .4byte 0x0000C001
_08016320: .4byte 0x00002C90
_08016324:
	movs r0, #1
_08016326:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
