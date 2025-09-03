	.syntax unified
sub_08017648:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	adds r4, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x1f
	mov sl, r1
_0801766C:
	mov r2, r8
	ldr r3, [r2]
	lsls r5, r3, #0x1b
	lsrs r1, r5, #0x1b
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
	lsrs r6, r0, #0x10
	adds r7, r6, #0
	mov r3, sb
	cmp r3, #0x1f
	bne _080176E8
	ldr r0, [sp]
	cmp r0, #4
	bne _080176E0
	adds r1, r6, #0
	mov r2, sl
	ands r1, r2
	lsls r1, r1, #2
	ldrb r0, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	ands r2, r0
	lsls r1, r2, #5
	ldrh r0, [r4]
	ldr r3, _080176DC
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	b _080177A4
	.align 2, 0
_080176DC: .4byte 0xFFFFFC1F
_080176E0:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	b _080177A4
_080176E8:
	ldr r2, [sp]
	cmp r2, #4
	bne _08017740
	lsrs r0, r5, #0x1b
	adds r1, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r3, sl
	ands r0, r3
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r2, _0801773C
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	b _0801778A
	.align 2, 0
_0801773C: .4byte 0xFFFFFC1F
_08017740:
	lsrs r1, r5, #0x1b
	adds r0, r7, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r3, sl
	ands r0, r3
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r0, r7, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r2, _080177CC
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r0, r7, #0
_0801778A:
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r2, #0x7d
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_080177A4:
	adds r4, #2
	movs r3, #2
	add r8, r3
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0xf
	bhi _080177BA
	b _0801766C
_080177BA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080177CC: .4byte 0xFFFFFC1F
	.syntax divided
