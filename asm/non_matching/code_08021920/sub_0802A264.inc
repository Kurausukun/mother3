	.syntax unified
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
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _0802A2CC
	ldr r1, _0802A2D0
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r7, r1
	bhs _0802A300
	mov sl, r0
_0802A28C:
	mov r0, r8
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802A2EE
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A2EE
	adds r0, r5, #0
	mov r1, sb
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A2EE
	cmp r4, r6
	blo _0802A2D4
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_0802A49C
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0802A300
	.align 2, 0
_0802A2CC: .4byte gGame
_0802A2D0: .4byte 0x00008299
_0802A2D4:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_0802A49C
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r0, r6, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0802A300
_0802A2EE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sl
	ldrb r0, [r0]
	cmp r8, r0
	blo _0802A28C
_0802A300:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
