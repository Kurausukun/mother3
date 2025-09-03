	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	ldr r7, _08051480
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r5, r7, r0
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	bl sub_080521A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08051484
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	b _0805152A
	.align 2, 0
_08051480: .4byte gUnknown_020050C0
_08051484:
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805191C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080514AC
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805191C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805152A
_080514AC:
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08052184
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08051A74
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080514E2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08052184
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08051A74
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805152A
_080514E2:
	ldr r1, _08051538
	movs r0, #0x64
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x10]
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08051C74
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08051C74
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_0805152A:
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08051538: .4byte gSave
	.syntax divided
