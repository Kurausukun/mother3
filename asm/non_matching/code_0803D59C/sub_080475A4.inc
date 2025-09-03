	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r3, _080475FC
	ldr r2, _08047600
	adds r1, r3, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #8]
	subs r0, r1, r2
	cmp r0, #0xe
	ble _080475BE
	movs r0, #0xe
_080475BE:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	lsls r2, r2, #2
	ldr r4, _08047604
	adds r1, r3, r4
	adds r4, r2, r1
	movs r7, #0
	lsrs r0, r0, #0x11
	cmp r7, r0
	bhs _08047658
_080475D4:
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _0804764A
	ldrb r0, [r4]
	bl sub_080486D8
	adds r3, r0, #0
	adds r1, r7, #3
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, [r4]
	lsls r0, r0, #9
	adds r5, r1, #0
	cmp r0, #0
	bge _08047608
	movs r0, #0xf
	b _0804760A
	.align 2, 0
_080475FC: .4byte gSomeBlend
_08047600: .4byte 0x0000427E
_08047604: .4byte 0x00003BFC
_08047608:
	movs r0, #1
_0804760A:
	str r0, [sp]
	adds r0, r3, #0
	movs r1, #1
	adds r3, r6, #0
	bl sub_08047B9C
	adds r4, #4
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _0804764A
	ldrb r0, [r4]
	bl sub_080486D8
	adds r1, r0, #0
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, [r4]
	lsls r0, r0, #9
	cmp r0, #0
	bge _0804763C
	movs r0, #0xf
	b _0804763E
_0804763C:
	movs r0, #1
_0804763E:
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #0xb
	bl sub_08047B9C
	adds r4, #4
_0804764A:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, r8
	lsrs r0, r1, #1
	cmp r7, r0
	blo _080475D4
_08047658:
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _08047694
	movs r5, #1
	mov r0, r8
	ands r0, r5
	cmp r0, #0
	beq _08047694
	ldrb r0, [r4]
	bl sub_080486D8
	adds r1, r0, #0
	adds r0, r7, #3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #9
	cmp r0, #0
	bge _08047686
	movs r0, #0xf
	str r0, [sp]
	b _08047688
_08047686:
	str r5, [sp]
_08047688:
	adds r0, r1, #0
	movs r1, #1
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08047B9C
_08047694:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
