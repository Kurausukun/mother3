	.syntax unified
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080212B6
	movs r0, #0
	bl sub_08003BF8
	movs r0, #1
	bl sub_08003BF8
	b _080212BC
_080212B6:
	lsrs r0, r2, #0x10
	bl sub_08003BF8
_080212BC:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
