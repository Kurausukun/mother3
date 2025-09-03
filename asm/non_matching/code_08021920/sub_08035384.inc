	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r4, _0803540C
	movs r6, #0
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r2
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0x1f
	ands r5, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sl, r0
	asrs r7, r3, #0x10
	lsls r3, r3, #7
	lsrs r3, r3, #0x12
_080353BC:
	cmp ip, r2
	beq _080353CA
	ldrb r1, [r4, #4]
	mov r0, sl
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #4]
_080353CA:
	cmp r7, r2
	beq _080353D8
	ldrh r1, [r4, #4]
	ldr r0, _08035410
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #4]
_080353D8:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #8
	cmp r6, #0x9f
	bls _080353BC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803540C: .4byte gUnknown_0200D908
_08035410: .4byte 0xFFFFC01F
	.syntax divided
