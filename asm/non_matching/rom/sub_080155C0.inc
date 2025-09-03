	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _08015634
	ldrh r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldrh r1, [r7, #8]
	movs r1, #0
	mov r8, r1
	mov r1, sb
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r6, _08015638
	ldrh r1, [r6, #0xa]
	ldrh r2, [r6, #0xc]
	adds r0, r6, #0
	bl sub_080195B0
	bl sub_08001960
	bl sub_08005C4C
	subs r5, r6, #2
	ldrh r2, [r5]
	subs r4, r6, #4
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x90
	bl sub_08002E60
	strh r0, [r6, #0xa]
	ldrh r2, [r5]
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x60
	bl sub_08002E60
	strh r0, [r6, #0xc]
	ldr r0, _0801563C
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrh r0, [r6, #0xa]
	cmp r0, #0x8f
	bhi _08015640
	movs r0, #0
	b _0801565A
	.align 2, 0
_08015634: .4byte gSomeBlend
_08015638: .4byte gUnknown_0200B564
_0801563C: .4byte 0x0001ED10
_08015640:
	ldrh r0, [r7, #8]
	mov r1, sb
	orrs r0, r1
	ldrh r1, [r7, #8]
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #8]
	ldrh r1, [r6, #0xa]
	ldrh r2, [r6, #0xc]
	adds r0, r6, #0
	bl sub_080195B0
	movs r0, #1
_0801565A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
