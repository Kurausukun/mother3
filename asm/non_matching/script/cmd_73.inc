	.syntax unified
cmd_73:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #3
	bl scriptstack_peek
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B414
	ldr r1, _08020298
	ldr r2, _0802029C
	adds r1, r1, r2
	str r0, [r1]
	movs r0, #9
	cmp r5, #0
	bne _08020288
	movs r0, #8
_08020288:
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_080272F4
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020298: .4byte gGame
_0802029C: .4byte 0x000083A4
	.syntax divided
