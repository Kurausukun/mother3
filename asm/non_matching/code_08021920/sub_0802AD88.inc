	.syntax unified
sub_0802AD88:
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	movs r4, #0
_0802AD96:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802ADB8
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sp
	ldrh r2, [r1]
	adds r1, r5, #0
	bl set_ailment
_0802ADB8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802AD96
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
