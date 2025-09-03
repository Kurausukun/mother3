	.syntax unified
cmd_DC:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080212E6
	movs r0, #0
	bl sub_08003C20
	movs r0, #1
	bl sub_08003C20
	b _080212EC
_080212E6:
	lsrs r0, r2, #0x10
	bl sub_08003C20
_080212EC:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
