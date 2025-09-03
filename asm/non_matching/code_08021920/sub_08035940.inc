	.syntax unified
sub_08035940:
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #1
	ldrsb r0, [r7, r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r3, r1, #0x10
	orrs r3, r2
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0xef
	bgt _080359D0
	asrs r6, r3, #0x10
	cmp r6, #0x9f
	bgt _080359D0
	movs r2, #0
	ldr r0, [sp, #4]
	ldr r1, _080359CC
	ands r0, r1
	str r0, [sp, #4]
	add r4, sp, #4
	strh r2, [r4, #2]
	movs r0, #0xf0
	strh r0, [r4, #4]
	movs r0, #0xa0
	strh r0, [r4, #6]
	ldr r1, [r7]
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	mov r7, sp
	adds r7, #2
	mov r2, sp
	adds r3, r7, #0
	bl sub_0800282C
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r5, r1
	cmp r2, r0
	bgt _080359D0
	ldrh r0, [r4, #4]
	adds r0, r2, r0
	subs r1, r5, r1
	cmp r0, r1
	blt _080359D0
	movs r0, #2
	ldrsh r2, [r4, r0]
	ldrh r1, [r7]
	adds r0, r6, r1
	cmp r2, r0
	bgt _080359D0
	ldrh r0, [r4, #6]
	adds r0, r2, r0
	subs r1, r6, r1
	cmp r0, r1
	blt _080359D0
	movs r0, #1
	b _080359D2
	.align 2, 0
_080359CC: .4byte 0xFFFF0000
_080359D0:
	movs r0, #0
_080359D2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
