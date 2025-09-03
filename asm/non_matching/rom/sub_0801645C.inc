	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _080164E8
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	movs r2, #0
	mov sb, r2
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080164EC
	ldr r0, _080164F0
	adds r7, r4, r0
	ldrh r2, [r7]
	movs r1, #0
	subs r0, #0xa
	adds r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #1
	bne _08016492
	movs r1, #1
_08016492:
	adds r0, r2, #0
	bl sub_080198A4
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _080164F4
	adds r1, r1, r4
	mov r8, r1
	ldrh r2, [r1]
	ldr r1, _080164F8
	adds r0, r4, r1
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x78
	bl sub_08002E60
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08016504
	ldrb r0, [r6]
	cmp r0, #5
	bne _08016500
	ldr r2, _080164FC
	adds r3, r5, r2
	ldrb r2, [r3]
	movs r4, #1
	movs r1, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	strb r4, [r6]
	mov r0, sb
	strh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	b _08016516
	.align 2, 0
_080164E8: .4byte gSomeBlend
_080164EC: .4byte gGame
_080164F0: .4byte 0x00005968
_080164F4: .4byte 0x00005962
_080164F8: .4byte 0x00005960
_080164FC: .4byte 0x0001ED10
_08016500:
	movs r0, #1
	b _08016518
_08016504:
	ldr r2, _08016524
	adds r3, r5, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_08016516:
	movs r0, #0
_08016518:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016524: .4byte 0x0001ED10
	.syntax divided
