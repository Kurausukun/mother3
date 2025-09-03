	.syntax unified
sub_08033C14:
	push {r4, lr}
	movs r0, #0
	bl get_obj_direct
	ldr r0, [r0, #0x18]
	bl sub_0801A6D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033C3E
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08033C3E
	movs r0, #5
	bl sub_08003BA8
_08033C3E:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
