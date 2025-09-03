	.syntax unified
sub_08044860:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsls r2, r2, #0x10
	add r0, sp, #0x18
	strh r3, [r0]
	movs r0, #0x64
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _0804490C
	adds r7, r1, r0
	lsrs r0, r4, #0x10
	str r0, [sp, #0x1c]
	asrs r1, r4, #0x10
	mov r8, r1
	movs r3, #0xe0
	lsls r3, r3, #0xd
	adds r4, r4, r3
	asrs r4, r4, #0x10
	lsrs r0, r2, #0x10
	mov sl, r0
	asrs r5, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	add r0, sp, #0x18
	ldrh r3, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080449C0
	add r0, sp, #0x18
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044910
	adds r0, r0, r1
	adds r5, #0x16
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r6, #1
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x20
	bl sub_08046A28
	add r0, sp, #0x18
	ldrh r0, [r0]
	adds r3, r0, #0
	cmp r3, #0
	beq _08044914
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x24
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r6, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #4
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r5, #0
	movs r3, #3
	bl sub_08046BA8
	b _0804493E
	.align 2, 0
_0804490C: .4byte gUnknown_020050C8
_08044910: .4byte gUnknown_080C6364
_08044914:
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x24
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r6, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r5, #0
	movs r3, #3
	bl sub_08046BA8
_0804493E:
	ldr r0, _080449BC
	ldrb r0, [r0]
	ldr r2, [sp, #0x1c]
	lsls r4, r2, #0x10
	mov r3, sl
	lsls r6, r3, #0x10
	cmp r0, #8
	beq _08044970
	adds r0, r7, #0
	adds r0, #0x36
	movs r2, #0xc8
	lsls r2, r2, #0xe
	adds r1, r4, r2
	lsrs r1, r1, #0x10
	movs r3, #0x90
	lsls r3, r3, #0xe
	adds r2, r6, r3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r3, #2
	str r3, [sp, #4]
	movs r3, #9
	bl sub_08047CDC
_08044970:
	ldrh r1, [r7, #0xa]
	asrs r5, r4, #0x10
	movs r0, #0x86
	lsls r0, r0, #0x10
	adds r2, r4, r0
	asrs r2, r2, #0x10
	asrs r4, r6, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xd
	adds r3, r6, r0
	asrs r3, r3, #0x10
	mov r0, sb
	bl sub_08044AD8
	ldr r0, [r7]
	adds r5, #0xa8
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r4, #0x3c
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r1, sp, #0x18
	ldrh r1, [r1]
	str r1, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0804557C
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080449BC: .4byte gUnknown_02004100
	.syntax divided
