	.syntax unified
__14StatusTimeBombUsP4Unit:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __6StatusUsP4Unit
	ldr r0, _080B6B6C
	str r0, [r4, #0x1c]
	movs r0, #2
	movs r1, #3
	bl randS32
	str r0, [r4, #0x34]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6B6C: .4byte _vt.14StatusTimeBomb
	.syntax divided
