	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	add r6, sp, #0xc
_0806E1D4:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08090F80
	adds r2, r5, #0
	adds r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	mov r3, sp
	adds r1, r3, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	cmp r4, #0
	bgt _0806E1D4
	adds r0, r6, #0
	bl __3Msg
	adds r2, r5, #0
	cmp r2, #0
	beq _0806E21C
_0806E204:
	subs r4, r2, #1
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r1, #0xcb
	adds r0, r6, #0
	bl sub_0806E34C
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	cmp r2, #0
	bne _0806E204
_0806E21C:
	adds r0, r7, #0
	adds r1, r6, #0
	bl __3MsgRC3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
