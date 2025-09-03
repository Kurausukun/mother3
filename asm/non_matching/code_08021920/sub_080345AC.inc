	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08034BAC
	movs r0, #0
	bl get_obj_direct
	bl sub_08034EB8
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	mov r5, sp
_080345C8:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080345EC
	adds r0, r1, #0
	bl sub_08034608
	ldrh r1, [r5]
	orrs r1, r0
	strh r1, [r5]
_080345EC:
	adds r0, r4, #0
	cmp r0, #3
	bls _080345C8
	movs r1, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _080345FE
	movs r1, #1
_080345FE:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
