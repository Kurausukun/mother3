	.syntax unified
sub_08033BCC:
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r4, #0
_08033BD6:
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033C02
	mov r0, sp
	ldrh r0, [r0]
	adds r3, #0xcc
	movs r2, #1
	ands r2, r0
	lsls r2, r2, #4
	ldrb r0, [r3]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_08033C02:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033BD6
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
