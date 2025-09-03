	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0
	bl get_obj_direct
	adds r2, r0, #0
	movs r0, #0xca
	adds r0, r0, r6
	mov ip, r0
	ldrb r4, [r0]
	lsrs r3, r4, #7
	cmp r3, #0
	bne _080262DA
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802621E
	adds r0, r2, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	mov r8, r0
_0802621E:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _0802622C
	movs r0, #0x20
	mov sb, r0
_0802622C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _08026236
	movs r5, #0x20
_08026236:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _08026240
	movs r7, #0x1c
_08026240:
	ldr r1, _080262E8
	ldr r2, _080262EC
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r1, #0x80
	adds r0, r4, #0
	orrs r0, r1
	mov r2, ip
	strb r0, [r2]
	adds r4, r6, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	orrs r0, r1
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, #9
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xa2
	strh r3, [r0]
	adds r0, #0xc
	strh r5, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r7, [r0]
	mov r0, r8
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	strh r2, [r6, #0xc]
	strh r3, [r6, #0xe]
	mov r7, sb
	lsls r1, r7, #0x10
	asrs r1, r1, #0xc
	mov r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r1, r0
	adds r2, r2, r0
	strh r2, [r6, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	adds r3, r3, r0
	strh r3, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
_080262DA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080262E8: .4byte gGame
_080262EC: .4byte 0x000082B7
	.syntax divided
