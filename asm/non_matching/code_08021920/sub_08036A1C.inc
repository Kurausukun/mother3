	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r0, r4, #0
	bl get_obj_direct
	mov ip, r0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08036A60
	mov r3, ip
	adds r3, #0xbc
	movs r0, #7
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x8b
	ldrb r1, [r0]
	lsrs r1, r1, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080332AC
_08036A60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
