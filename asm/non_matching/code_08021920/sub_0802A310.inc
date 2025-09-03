	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r1, _0802A35C
	ldr r2, _0802A360
	adds r0, r1, r2
	ldrb r2, [r0]
	cmp r8, r2
	bhs _0802A3B4
	ldr r0, _0802A364
	mov sl, r0
_0802A33C:
	adds r0, r6, #0
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802A3A6
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A3A6
	movs r4, #0
	ldr r2, _0802A368
	b _0802A37C
	.align 2, 0
_0802A35C: .4byte gGame
_0802A360: .4byte 0x00008299
_0802A364: .4byte gUnknown_0201AAF8
_0802A368: .4byte gUnknown_0200DEAE
_0802A36C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802A37C:
	cmp r4, r7
	bhs _0802A394
	adds r0, r5, #0
	mov r1, sb
	str r2, [sp]
	bl sub_0802A630
	lsls r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #0
	bne _0802A36C
	strb r6, [r2]
_0802A394:
	mov r1, sl
	str r6, [r1]
	ldr r2, _0802A3C8
	strb r6, [r2]
	subs r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0802A3B4
_0802A3A6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802A3CC
	ldrb r0, [r0]
	cmp r6, r0
	blo _0802A33C
_0802A3B4:
	mov r0, r8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A3C8: .4byte gUnknown_0200DEAE
_0802A3CC: .4byte gUnknown_0200DE99
	.syntax divided
