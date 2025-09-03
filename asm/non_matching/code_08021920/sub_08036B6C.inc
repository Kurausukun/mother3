	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08036B74:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08036B92
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_08036A68
_08036B92:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08036B74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
