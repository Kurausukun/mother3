	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r1, _08047800
	ldr r3, _08047804
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #6
	bls _080477D0
	movs r0, #6
_080477D0:
	adds r6, r0, #0
	ldrh r0, [r2, #8]
	lsls r0, r0, #2
	movs r2, #0xd2
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r6
	bhs _08047822
_080477E4:
	ldrb r1, [r4]
	movs r0, #2
	bl get_misctext_msg
	adds r1, r0, #0
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _08047808
	movs r0, #0xf
	b _0804780A
	.align 2, 0
_08047800: .4byte gSomeBlend
_08047804: .4byte 0x0000426C
_08047808:
	movs r0, #1
_0804780A:
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #0xa
	movs r3, #9
	bl sub_08047B9C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, r6
	blo _080477E4
_08047822:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
