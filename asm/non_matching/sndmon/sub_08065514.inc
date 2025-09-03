	.syntax unified
sub_08065514:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_0806BE14
	mov r8, r0
	adds r0, r7, #0
	bl sub_080655B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	bl sub_080655D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r6, #0
	ldr r0, [r7, #0x34]
	cmp r6, r0
	bge _0806559E
	adds r5, r7, #0
	adds r5, #0x38
_0806554A:
	ldr r4, [r5, #4]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	bl sub_0806BFB0
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0806C010
	movs r1, #0
	ldrsh r2, [r5, r1]
	subs r2, #8
	lsls r2, r2, #0x10
	ldr r1, _080655AC
	ands r2, r1
	str r2, [r0]
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r1, #8
	movs r3, #0xff
	ands r1, r3
	orrs r2, r1
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r2, r1
	str r2, [r0]
	ldr r1, [r5, #4]
	asrs r1, r1, #1
	lsls r1, r1, #0xa
	mov r2, sl
	orrs r1, r2
	mov r3, sb
	lsls r2, r3, #0xc
	orrs r1, r2
	strh r1, [r0, #4]
	adds r5, #0xc
	adds r6, #1
	ldr r0, [r7, #0x34]
	cmp r6, r0
	blt _0806554A
_0806559E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080655AC: .4byte 0x01FF0000
	.syntax divided
