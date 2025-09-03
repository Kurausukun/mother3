	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	ldr r5, [sp, #0x38]
	ldr r6, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0xc]
	adds r4, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0x1f
	mov sl, r1
_0801780C:
	mov r2, r8
	ldr r3, [r2]
	lsls r7, r3, #0x1b
	lsrs r1, r7, #0x1b
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r3, #0x16
	lsrs r2, r2, #0x1b
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x1b
	adds r0, r0, r3
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #4]
	adds r1, r3, #0
	muls r1, r0, r1
	lsls r1, r1, #0xc
	lsrs r2, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r3, #0
	muls r1, r0, r1
	lsls r1, r1, #0xc
	lsrs r5, r1, #0x10
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	lsls r0, r0, #0xc
	lsrs r6, r0, #0x10
	cmp r2, #0x1f
	bls _08017856
	movs r2, #0x1f
_08017856:
	cmp r5, #0x1f
	bls _0801785C
	movs r5, #0x1f
_0801785C:
	cmp r6, #0x1f
	bls _08017862
	movs r6, #0x1f
_08017862:
	mov r3, sb
	cmp r3, #0x1f
	bne _080178B4
	ldr r0, [sp]
	cmp r0, #6
	bne _080178AC
	mov r1, sl
	ands r2, r1
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	mov r0, sb
	ands r5, r0
	lsls r2, r5, #5
	ldrh r0, [r4]
	ldr r3, _080178A8
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	mov r0, sl
	ands r6, r0
	lsls r2, r6, #2
	ldrb r0, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #1]
	b _0801797E
	.align 2, 0
_080178A8: .4byte 0xFFFFFC1F
_080178AC:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	b _0801797E
_080178B4:
	ldr r3, [sp]
	cmp r3, #6
	bne _08017918
	lsrs r0, r7, #0x1b
	adds r1, r2, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r5, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _08017914
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r2, sl
	ands r0, r2
	b _0801796E
	.align 2, 0
_08017914: .4byte 0xFFFFFC1F
_08017918:
	lsrs r1, r7, #0x1b
	adds r0, r2, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r0, r5, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _080179A4
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r0, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
_0801796E:
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_0801797E:
	adds r4, #2
	movs r0, #2
	add r8, r0
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xf
	bhi _08017994
	b _0801780C
_08017994:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080179A4: .4byte 0xFFFFFC1F
	.syntax divided
