	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r4, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	ldrb r0, [r4]
	bl sub_08054FB8
	ldr r2, [sp, #0x20]
	lsls r1, r2, #0x10
	asrs r7, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	ldr r3, [sp, #0x24]
	lsls r2, r3, #0x10
	asrs r6, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #9
	bl sub_08047CDC
	ldrb r0, [r4, #0x12]
	adds r5, r7, #0
	adds r5, #0x48
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r2, r6, #0
	adds r2, #0x2c
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #1
	str r1, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	mov sl, r3
	str r3, [sp, #4]
	movs r1, #0xb
	mov sb, r1
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #2
	mov r8, r3
	str r3, [sp, #0x14]
	adds r1, r5, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #8]
	adds r6, #0x38
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #1
	str r2, [sp]
	mov r3, sl
	str r3, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r2, r8
	str r2, [sp, #0x14]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r3, [sp, #0x18]
	ldr r1, [r3, #8]
	ldr r2, [sp, #0x1c]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080434A8
	cmp r1, r0
	bge _08043458
	ldr r0, _08043454
	adds r1, r7, #0
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #1
	str r3, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _0804346E
	.align 2, 0
_08043454: .4byte gUnknown_080C65D0
_08043458:
	ldr r0, _08043514
	adds r1, r7, #0
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	str r2, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_0804346E:
	ldr r3, [sp, #0x1c]
	ldr r0, [r3, #8]
	ldr r2, [sp, #0x20]
	lsls r1, r2, #0x10
	movs r3, #0xcc
	lsls r3, r3, #0xf
	adds r1, r1, r3
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x24]
	lsls r2, r3, #0x10
	movs r3, #0xe0
	lsls r3, r3, #0xe
	adds r2, r2, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
_080434A8:
	ldr r1, [sp, #0x18]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x20]
	lsls r4, r3, #0x10
	asrs r1, r4, #0x10
	mov r8, r1
	movs r2, #0x90
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x24]
	lsls r5, r3, #0x10
	movs r3, #0x88
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r6, r2, #0x10
	movs r7, #1
	str r7, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	cmp r1, r0
	beq _08043564
	cmp r1, r0
	bge _0804351C
	ldr r0, _08043518
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043530
	.align 2, 0
_08043514: .4byte gUnknown_080C65E4
_08043518: .4byte gUnknown_080C65D0
_0804351C:
	ldr r0, _080435C8
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043530:
	ldr r3, [sp, #0x1c]
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0x88
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r3, #3
	bl sub_08046BA8
_08043564:
	ldr r1, [sp, #0x18]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	asrs r3, r4, #0x10
	mov r8, r3
	movs r2, #0x90
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xa0
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r6, r2, #0x10
	movs r7, #1
	str r7, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c]
	movs r2, #0x16
	ldrsh r0, [r3, r2]
	cmp r1, r0
	beq _08043616
	cmp r1, r0
	bge _080435D0
	ldr r0, _080435CC
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _080435E4
	.align 2, 0
_080435C8: .4byte gUnknown_080C65E4
_080435CC: .4byte gUnknown_080C65D0
_080435D0:
	ldr r0, _0804367C
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_080435E4:
	ldr r3, [sp, #0x1c]
	movs r1, #0x16
	ldrsh r0, [r3, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xa0
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043616:
	ldr r1, [sp, #0x18]
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	asrs r3, r4, #0x10
	mov r8, r3
	movs r2, #0x90
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xb8
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r6, r2, #0x10
	movs r7, #1
	str r7, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r3, r2]
	cmp r1, r0
	beq _080436CA
	cmp r1, r0
	bge _08043684
	ldr r0, _08043680
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043698
	.align 2, 0
_0804367C: .4byte gUnknown_080C65E4
_08043680: .4byte gUnknown_080C65D0
_08043684:
	ldr r0, _08043730
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043698:
	ldr r3, [sp, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xb8
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_080436CA:
	ldr r1, [sp, #0x18]
	movs r2, #0x22
	ldrsh r0, [r1, r2]
	asrs r3, r4, #0x10
	mov r8, r3
	movs r2, #0x90
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xd0
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r6, r2, #0x10
	movs r7, #1
	str r7, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c]
	movs r2, #0x22
	ldrsh r0, [r3, r2]
	cmp r1, r0
	beq _0804377E
	cmp r1, r0
	bge _08043738
	ldr r0, _08043734
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _0804374C
	.align 2, 0
_08043730: .4byte gUnknown_080C65E4
_08043734: .4byte gUnknown_080C65D0
_08043738:
	ldr r0, _080437E4
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_0804374C:
	ldr r3, [sp, #0x1c]
	movs r1, #0x22
	ldrsh r0, [r3, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xd0
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_0804377E:
	ldr r1, [sp, #0x18]
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	asrs r3, r4, #0x10
	mov r8, r3
	movs r2, #0x90
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xe8
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r6, r2, #0x10
	movs r7, #1
	str r7, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r2, #0xb
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046BA8
	ldr r0, [sp, #0x18]
	movs r2, #0x28
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c]
	movs r2, #0x28
	ldrsh r0, [r3, r2]
	cmp r1, r0
	beq _08043832
	cmp r1, r0
	bge _080437EC
	ldr r0, _080437E8
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	b _08043800
	.align 2, 0
_080437E4: .4byte gUnknown_080C65E4
_080437E8: .4byte gUnknown_080C65D0
_080437EC:
	ldr r0, _08043898
	mov r1, r8
	adds r1, #0x5e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
_08043800:
	ldr r3, [sp, #0x1c]
	movs r1, #0x28
	ldrsh r0, [r3, r1]
	movs r2, #0xcc
	lsls r2, r2, #0xf
	adds r1, r4, r2
	asrs r1, r1, #0x10
	movs r3, #0xe8
	lsls r3, r3, #0xf
	adds r2, r5, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x9c
	lsls r3, r3, #2
	str r3, [sp, #4]
	movs r3, #0xb
	str r3, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	bl sub_08046BA8
_08043832:
	movs r0, #0x52
	bl sub_080486A0
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #0x86
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_08047CDC
	movs r0, #0x54
	bl sub_080486A0
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #0x86
	movs r2, #0x38
	adds r3, r5, #0
	bl sub_08047CDC
	movs r0, #0x53
	bl sub_080486A0
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #0x86
	movs r2, #0x50
	adds r3, r5, #0
	bl sub_08047CDC
	movs r0, #0x55
	bl sub_080486A0
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #0x86
	movs r2, #0x68
	adds r3, r5, #0
	bl sub_08047CDC
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043898: .4byte gUnknown_080C65E4
	.syntax divided
