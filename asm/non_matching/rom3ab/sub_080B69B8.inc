	.syntax unified
__10StatusFellUsP4Unit:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __6StatusUsP4Unit
	ldr r0, _080B69E0
	str r0, [r4, #0x1c]
	movs r0, #1
	movs r1, #2
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	bl setTurnLimit__6StatusUs
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B69E0: .4byte _vt.10StatusFell
	.syntax divided
