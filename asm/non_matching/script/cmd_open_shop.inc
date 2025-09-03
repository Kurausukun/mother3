	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r5, _08021548
	strb r0, [r5, #3]
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	strb r0, [r5, #4]
	ldr r3, _0802154C
	ldr r0, _08021550
	adds r2, r3, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08021554
	ldrh r0, [r2]
	bl get_obj_direct
	adds r0, #0x88
	ldrh r0, [r0]
	b _08021572
	.align 2, 0
_08021548: .4byte gUnknown_02004100
_0802154C: .4byte gGame
_08021550: .4byte 0x00008450
_08021554:
	ldr r2, _0802156C
	adds r1, r3, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08021570
	ldrh r0, [r1]
	bl get_obj_direct
	adds r0, #0x88
	ldrh r0, [r0]
	b _08021572
	.align 2, 0
_0802156C: .4byte 0x00008452
_08021570:
	movs r0, #0
_08021572:
	strh r0, [r5, #6]
	movs r0, #1
	bl sub_0803C4DC
	ldr r1, _08021594
	movs r0, #5
	strb r0, [r1]
	ldr r1, _08021598
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021594: .4byte gUnknown_02004100
_08021598: .4byte gGame
	.syntax divided
