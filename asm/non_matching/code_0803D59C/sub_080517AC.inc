	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r5, _080517DC
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	bl sub_080521A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080517E0
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	b _08051836
	.align 2, 0
_080517DC: .4byte gUnknown_020050C0
_080517E0:
	ldrh r4, [r5, #4]
	movs r0, #0x64
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #8
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051836
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r2, #8]
	adds r2, #0x2a
	mov r0, sp
	ldrh r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08051C74
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08051C74
_08051836:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
