	.syntax unified
sub_0802A180:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r4, _0802A1B8
	ldr r0, _0802A1BC
	adds r5, r4, r0
	movs r0, #0xff
	strb r0, [r5]
	mov r0, sb
	bl is_equippable
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A1C0
	mov r0, sb
	adds r1, r6, #0
	bl sub_0802A310
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802A252
	.align 2, 0
_0802A1B8: .4byte gGame
_0802A1BC: .4byte 0x000082AE
_0802A1C0:
	movs r1, #0
	mov r8, r1
	movs r7, #0
	ldr r1, _0802A218
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r8, r1
	bhs _0802A250
	mov sl, r5
_0802A1D2:
	adds r0, r7, #0
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802A242
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A242
	adds r0, r5, #0
	bl sub_0802A42C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A242
	ldr r0, _0802A21C
	str r7, [r0]
	cmp r4, r6
	blo _0802A220
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_0802A454
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	b _0802A23A
	.align 2, 0
_0802A218: .4byte 0x00008299
_0802A21C: .4byte gUnknown_0201AAF8
_0802A220:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_0802A454
	mov r1, r8
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r0, r6, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802A23A:
	mov r0, sl
	strb r7, [r0]
	cmp r6, #0
	beq _0802A250
_0802A242:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _0802A260
	ldrb r1, [r1]
	cmp r7, r1
	blo _0802A1D2
_0802A250:
	mov r0, r8
_0802A252:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A260: .4byte gUnknown_0200DE99
	.syntax divided
