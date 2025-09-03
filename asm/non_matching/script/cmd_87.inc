	.syntax unified
cmd_87:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08020F3C
	movs r0, #3
	bl sub_08003BA8
	movs r0, #4
	bl sub_08003BA8
	movs r0, #5
	bl sub_08003BA8
	b _08020F42
_08020F3C:
	lsrs r0, r2, #0x10
	bl sub_08003BA8
_08020F42:
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
