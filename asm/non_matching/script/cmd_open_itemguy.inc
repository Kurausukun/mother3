	.syntax unified
	push {lr}
	ldr r3, _080216BC
	ldr r0, _080216C0
	adds r2, r3, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080216C8
	ldrh r0, [r2]
	bl get_obj_direct
	ldr r1, _080216C4
	adds r0, #0x88
	ldrh r0, [r0]
	b _080216F0
	.align 2, 0
_080216BC: .4byte gGame
_080216C0: .4byte 0x00008450
_080216C4: .4byte gUnknown_02004100
_080216C8:
	ldr r2, _080216E4
	adds r1, r3, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _080216EC
	ldrh r0, [r1]
	bl get_obj_direct
	ldr r1, _080216E8
	adds r0, #0x88
	ldrh r0, [r0]
	b _080216F0
	.align 2, 0
_080216E4: .4byte 0x00008452
_080216E8: .4byte gUnknown_02004100
_080216EC:
	ldr r1, _08021710
	movs r0, #0
_080216F0:
	strh r0, [r1, #6]
	movs r0, #1
	bl sub_0803C4DC
	ldr r1, _08021710
	movs r0, #6
	strb r0, [r1]
	ldr r1, _08021714
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08021710: .4byte gUnknown_02004100
_08021714: .4byte gGame
	.syntax divided
