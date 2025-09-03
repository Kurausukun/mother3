	.syntax unified
sub_08016984:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080169E8
	ldrh r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	ldrh r1, [r6, #8]
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r5, _080169EC
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r5, #2
	ldrh r2, [r0]
	subs r0, r5, #4
	ldrh r3, [r0]
	movs r0, #0x78
	movs r1, #0x1e
	bl sub_08002E60
	strh r0, [r5, #4]
	ldr r1, _080169F0
	adds r4, r6, r1
	ldrb r2, [r4]
	movs r3, #0x40
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _080169F4
	movs r0, #0
	b _08016A0C
	.align 2, 0
_080169E8: .4byte gSomeBlend
_080169EC: .4byte gUnknown_0200B564
_080169F0: .4byte 0x0001ED10
_080169F4:
	ldrh r0, [r6, #8]
	mov r1, r8
	orrs r0, r1
	ldrh r1, [r6, #8]
	orrs r0, r7
	strh r0, [r6, #8]
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08019408
	movs r0, #1
_08016A0C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
