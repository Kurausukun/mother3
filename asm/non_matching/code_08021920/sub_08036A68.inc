	.syntax unified
sub_08036A68:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08036A88
	adds r0, r1, #0
	adds r0, #0x8f
	strb r4, [r0]
_08036A88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
