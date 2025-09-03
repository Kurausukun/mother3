	.syntax unified
sub_080551B0:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	movs r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _080551D2
	ldr r0, [r4, #0x38]
	lsrs r6, r0, #1
	b _08055210
_080551D2:
	adds r0, r4, #0
	adds r1, r5, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_08055180
	lsls r0, r0, #0x10
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _080551EA
	orrs r6, r2
_080551EA:
	lsls r2, r2, #1
	lsls r3, r3, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bhi _08055210
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r5
	adds r1, r7, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080551D2
	ldr r0, [r4, #0x38]
	ands r0, r3
	lsrs r0, r0, #1
	orrs r6, r0
_08055210:
	str r6, [r4, #0x38]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
