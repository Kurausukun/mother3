	.syntax unified
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r4, _08036930
	ldr r1, _08036934
	adds r0, r4, r1
	ldr r0, [r0]
	adds r1, r3, #0
	bl __udivsi3
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08036938
	adds r1, r5, #0
	adds r2, r6, #0
	b _08036944
	.align 2, 0
_08036930: .4byte gGame
_08036934: .4byte 0x00009D10
_08036938:
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08036944:
	ldr r3, _08036958
	adds r0, r4, r3
	strh r1, [r0]
	ldr r1, _0803695C
	adds r0, r4, r1
	strh r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036958: .4byte 0x000067A8
_0803695C: .4byte 0x000067AA
	.syntax divided
