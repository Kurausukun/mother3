	.syntax unified
sub_08047A78:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r1, _08047AC4
	ldr r3, _08047AC8
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #8
	bls _08047A8C
	movs r0, #8
_08047A8C:
	adds r6, r0, #0
	ldrh r0, [r2, #8]
	lsls r0, r0, #2
	movs r2, #0xd3
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r6
	bhs _08047B02
	movs r7, #0xf
_08047AA2:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08047ACC
	movs r0, #0x58
	bl sub_080486A0
	adds r2, r5, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r7, [sp]
	movs r1, #0xc
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08047B9C
	b _08047AF6
	.align 2, 0
_08047AC4: .4byte gSomeBlend
_08047AC8: .4byte 0x0000426E
_08047ACC:
	ldrb r1, [r4]
	movs r0, #2
	bl get_misctext_msg
	adds r1, r0, #0
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #9
	cmp r0, #0
	bge _08047AE8
	str r7, [sp]
	b _08047AEC
_08047AE8:
	movs r0, #1
	str r0, [sp]
_08047AEC:
	adds r0, r1, #0
	movs r1, #0xc
	movs r3, #9
	bl sub_08047B9C
_08047AF6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, r6
	blo _08047AA2
_08047B02:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
