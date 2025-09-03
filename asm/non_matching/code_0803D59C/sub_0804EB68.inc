	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldrh r0, [r0, #0xa]
	bl sub_08054FE0
	adds r7, r0, #0
	mov r1, r8
	ldrh r0, [r1, #0xa]
	bl sub_08054FF0
	adds r0, r7, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804EBD0
	adds r0, r7, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0
	bne _0804EBD0
	mov r2, r8
	ldrh r1, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldrb r5, [r0]
	rsbs r3, r5, #0
	orrs r3, r5
	lsrs r3, r3, #0x1f
	adds r0, r7, #0
	adds r2, r5, #0
	bl sub_0805270C
	adds r0, r7, #0
	movs r1, #0
	bl sub_08052BE0
	ldr r6, _0804EBD8
	ldr r4, _0804EBDC
	adds r4, r4, r6
	mov sl, r4
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804EBE0
_0804EBD0:
	movs r0, #0xd6
	bl play_sound
	b _0804EC8C
	.align 2, 0
_0804EBD8: .4byte gSomeBlend
_0804EBDC: .4byte 0x0000426E
_0804EBE0:
	movs r0, #0xd2
	bl play_sound
	mov r0, r8
	ldrh r3, [r0, #4]
	ldr r1, _0804EC9C
	adds r0, r6, r1
	strh r3, [r0]
	ldr r2, _0804ECA0
	adds r2, r2, r6
	mov ip, r2
	ldrb r2, [r2]
	movs r0, #1
	orrs r2, r0
	ldr r4, _0804ECA4
	adds r0, r6, r4
	mov r1, sb
	strh r1, [r0]
	mov r4, r8
	ldrh r1, [r4, #0xa]
	ldr r4, _0804ECA8
	adds r0, r6, r4
	strb r1, [r0]
	ldr r1, _0804ECAC
	adds r0, r6, r1
	mov r4, sb
	strh r4, [r0]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #1
	movs r1, #0x3f
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	mov r0, ip
	strb r2, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08055098
	ldr r1, _0804ECB0
	adds r2, r6, r1
	ands r4, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r2, _0804ECB4
	adds r0, r6, r2
	mov r4, sb
	strh r4, [r0]
	mov r0, r8
	ldrh r1, [r0, #0xa]
	adds r2, #6
	adds r0, r6, r2
	strh r1, [r0]
	mov r4, sl
	ldrh r1, [r4]
	subs r2, #8
	adds r0, r6, r2
	strh r1, [r0]
	ldr r4, _0804ECB8
	adds r1, r6, r4
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0804ECBC
	adds r0, r6, r1
	mov r2, sb
	strh r2, [r0]
	adds r0, r6, #0
	adds r0, #0x50
	ldr r4, _0804ECC0
	adds r1, r6, r4
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r1, _0804ECC4
	adds r0, r6, r1
	bl sub_08049AF8
_0804EC8C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC9C: .4byte 0x000041BC
_0804ECA0: .4byte 0x000041C6
_0804ECA4: .4byte 0x000041BE
_0804ECA8: .4byte 0x000041C2
_0804ECAC: .4byte 0x000041C0
_0804ECB0: .4byte 0x000041C7
_0804ECB4: .4byte 0x00003064
_0804ECB8: .4byte 0x00003066
_0804ECBC: .4byte 0x00003068
_0804ECC0: .4byte 0x00004244
_0804ECC4: .4byte 0x00004ED0
	.syntax divided
