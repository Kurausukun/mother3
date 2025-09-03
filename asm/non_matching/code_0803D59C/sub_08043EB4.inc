	.syntax unified
sub_08043EB4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r0, [r0]
	bl sub_08054FB8
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r2, r5, #0x10
	mov sb, r2
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r5, r5, r1
	lsrs r5, r5, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r2, #1
	mov sl, r2
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #9
	bl sub_08047CDC
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #0x12]
	adds r4, r6, #0
	adds r4, #0x4e
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sb
	adds r2, #0x2c
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r1, sl
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r7, #0
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r4, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r2, [sp, #0x1c]
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	mov r2, sb
	adds r2, #0x38
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r1, sl
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r4, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r2, [sp, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	mov r2, sb
	adds r2, #0x44
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r1, sl
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r4, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r2, [sp, #0x1c]
	movs r1, #0x22
	ldrsh r0, [r2, r1]
	mov r2, sb
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r1, sl
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r4, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r2, [sp, #0x1c]
	movs r1, #0x28
	ldrsh r0, [r2, r1]
	mov r2, sb
	adds r2, #0x5c
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r1, sl
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r4, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r2, [sp, #0x18]
	ldr r5, [r2, #0x14]
	ldr r0, _080441B4
	cmp r5, r0
	bls _08043FF4
	adds r5, r0, #0
_08043FF4:
	ldr r0, [sp, #0x18]
	bl sub_08055068
	adds r4, r0, #0
	adds r1, r6, #0
	adds r1, #0x32
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	adds r2, #0x68
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	movs r3, #7
	bl sub_08046BA8
	adds r1, r6, #0
	adds r1, #0x39
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	adds r2, #0x74
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r3, #6
	bl sub_08046BA8
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #0x18]
	movs r2, #0x90
	adds r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	mov r4, sb
	adds r4, #0x2b
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sl
	str r1, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	mov r1, r8
	adds r2, r4, #0
	movs r3, #3
	bl sub_08046BA8
	adds r5, r6, #0
	adds r5, #0xa8
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	str r0, [sp]
	ldr r0, _080441B8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08046A28
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #8]
	adds r6, #0xb1
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	str r7, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r1, [sp, #0x18]
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	mov r4, sb
	adds r4, #0x37
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sl
	str r1, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	mov r1, r8
	adds r2, r4, #0
	movs r3, #3
	bl sub_08046BA8
	mov r0, sl
	str r0, [sp]
	ldr r0, _080441B8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08046A28
	ldr r1, [sp, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	str r7, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08046BA8
	movs r0, #0x52
	bl sub_080486A0
	movs r4, #1
	rsbs r4, r4, #0
	mov r2, sl
	str r2, [sp]
	str r2, [sp, #4]
	movs r1, #0x6c
	movs r2, #0x44
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #0x54
	bl sub_080486A0
	mov r1, sl
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x6c
	movs r2, #0x50
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #0x53
	bl sub_080486A0
	mov r2, sl
	str r2, [sp]
	str r2, [sp, #4]
	movs r1, #0x6c
	movs r2, #0x5c
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #0x55
	bl sub_080486A0
	mov r1, sl
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x6c
	movs r2, #0x68
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #0x56
	bl sub_080486A0
	mov r2, sl
	str r2, [sp]
	str r2, [sp, #4]
	movs r1, #0x6c
	movs r2, #0x74
	adds r3, r4, #0
	bl sub_08047CDC
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080441B4: .4byte 0x0098967F
_080441B8: .4byte gUnknown_080C6648
	.syntax divided
