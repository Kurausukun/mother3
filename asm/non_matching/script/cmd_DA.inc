	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r0, r5, #0
	bl get_obj
	adds r6, r0, #0
	cmp r6, #0
	beq _0801FF38
	adds r2, r6, #0
	adds r2, #0xc7
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xba
	movs r5, #0
	movs r1, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	add r4, sp, #0xc
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08036BEC
	ldrh r0, [r4, #2]
	subs r0, #0xa0
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #0x28
	add r2, sp, #0xc
	bl sub_08035DFC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0x1e
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_080362C0
_0801FF38:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
