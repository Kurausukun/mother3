	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r1, _08047710
	ldr r3, _08047714
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #8
	bls _080476D4
	movs r0, #8
_080476D4:
	adds r6, r0, #0
	ldrh r0, [r2, #8]
	lsls r0, r0, #2
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r6
	bhs _0804773C
	movs r7, #0xf
_080476EA:
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _08047718
	ldrb r1, [r4]
	movs r0, #7
	bl get_misctext_msg
	adds r2, r5, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r7, [sp]
	movs r1, #1
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08047B9C
	b _08047730
	.align 2, 0
_08047710: .4byte gSomeBlend
_08047714: .4byte 0x0000427C
_08047718:
	movs r0, #1
	bl sub_080486A0
	adds r2, r5, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r7, [sp]
	movs r1, #1
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08047B9C
_08047730:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, r6
	blo _080476EA
_0804773C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
