	.syntax unified
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08021420
	ldr r2, _08021424
	adds r1, r4, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08026508
	movs r0, #1
	bl sub_080052E4
	ldr r0, _08021428
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08021420: .4byte gGame
_08021424: .4byte 0x00008450
_08021428: .4byte 0x00008494
	.syntax divided
