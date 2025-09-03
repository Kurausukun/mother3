	.syntax unified
sub_080227BC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08022820
	adds r0, r6, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r2, _08022824
	adds r0, r6, r2
	ldrh r7, [r0]
	ldr r5, [r6, #8]
	movs r0, #0
	mov sl, r0
	adds r1, #0x31
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp sl, r0
	blo _080227EA
	b _080229C4
_080227EA:
	ldr r2, _08022828
	ldr r1, _0802282C
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080227FC
	b _080229C4
_080227FC:
	ldr r0, _08022820
	adds r0, r0, r6
	mov sb, r0
_08022802:
	ldrh r1, [r5]
	ldr r2, _08022830
	lsrs r0, r2, #0x10
	cmp r1, r0
	bne _08022838
	ldr r1, _08022834
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	bl sub_0802400C
	b _080229C4
	.align 2, 0
_08022820: .4byte 0x00001444
_08022824: .4byte 0x00001446
_08022828: .4byte gSomeBlend
_0802282C: .4byte 0x00011C92
_08022830: .4byte 0xFFFF0000
_08022834: .4byte 0x00001490
_08022838:
	movs r0, #0xfe
	lsls r0, r0, #4
	cmp r1, r0
	bne _08022850
	ldrh r0, [r5]
	ldrh r3, [r5, #2]
	mov r1, r8
	adds r2, r7, #0
	bl sub_080088AC
	adds r5, #2
	b _0802299E
_08022850:
	ldr r0, _08022894
	cmp r1, r0
	bls _0802289C
	mov r0, r8
	mov r2, sb
	strh r0, [r2]
	strh r7, [r2, #2]
	ldrh r1, [r5]
	adds r2, r5, #2
	adds r0, r6, #0
	bl sub_080229F0
	mov r1, sp
	strh r0, [r1]
	ldrh r0, [r5]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r5, r5, r0
	mov r1, sb
	ldrh r1, [r1]
	mov r8, r1
	ldr r2, _08022898
	adds r0, r6, r2
	ldrh r7, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08022890
	b _080229C4
_08022890:
	b _0802299E
	.align 2, 0
_08022894: .4byte 0x0000FEFF
_08022898: .4byte 0x00001446
_0802289C:
	ldr r1, _080228B0
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080228B4
	adds r5, #2
	b _0802299E
	.align 2, 0
_080228B0: .4byte 0x00001490
_080228B4:
	ldr r2, _080228E4
	adds r4, r6, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _080228F4
	bl sub_08023FA8
	ldr r2, _080228E8
	ldr r1, _080228EC
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, _080228F0
	ldrh r1, [r2]
	bl sub_08002FD4
	cmp r0, #0
	bne _080228FC
	ldrh r0, [r4]
	bl play_sound
	b _080228FC
	.align 2, 0
_080228E4: .4byte 0x0000146A
_080228E8: .4byte gSomeBlend
_080228EC: .4byte 0x00004AF8
_080228F0: .4byte gUnknown_0201AB1C
_080228F4:
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08023FA8
_080228FC:
	ldrh r0, [r5]
	ldr r2, _0802297C
	adds r1, r6, r2
	ldrb r3, [r1]
	mov r1, r8
	adds r2, r7, #0
	bl sub_080088AC
	adds r5, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _08022980
	ldr r1, _08022984
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r8, r0
	blo _0802299E
	movs r2, #0xa2
	lsls r2, r2, #5
	adds r0, r6, r2
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08022988
	adds r3, r4, r0
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0
	mov ip, r1
	strb r0, [r3]
	adds r2, #0x36
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802295C
	ldr r1, _0802298C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	mov r2, ip
	strb r2, [r3]
	movs r0, #0
	bl sub_0802400C
_0802295C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #1
	bls _0802299E
	ldr r0, _0802298C
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022990
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _0802299C
	.align 2, 0
_0802297C: .4byte 0x00001474
_08022980: .4byte gSomeBlend
_08022984: .4byte 0x00011C8A
_08022988: .4byte 0x00004AFE
_0802298C: .4byte 0x00004B18
_08022990:
	ldr r1, _080229E0
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_0802299C:
	movs r7, #1
_0802299E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _080229E4
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp sl, r0
	bhs _080229C4
	ldr r1, _080229E8
	ldr r2, _080229E0
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080229C4
	b _08022802
_080229C4:
	ldr r1, _080229EC
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0]
	strh r7, [r0, #2]
	str r5, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080229E0: .4byte 0x00011C92
_080229E4: .4byte 0x00001475
_080229E8: .4byte gSomeBlend
_080229EC: .4byte 0x00001444
	.syntax divided
