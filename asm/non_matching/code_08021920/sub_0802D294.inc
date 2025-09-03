	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, _0802D3EC
	ldr r1, _0802D3F0
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r6, r0, #0
	movs r2, #0
	mov r8, r2
	mov r0, sb
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r8, r0
	blo _0802D2BE
	b _0802D3DC
_0802D2BE:
	movs r3, #3
	mov sl, r3
_0802D2C2:
	mov r0, r8
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xbc
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D3C4
	ldrb r0, [r6, #9]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x8b
	movs r7, #0
	strb r0, [r1]
	adds r1, #1
	ldr r0, _0802D3F4
	strh r0, [r1]
	str r7, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x92
	movs r1, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x8e
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x8f
	strb r1, [r0]
	adds r3, r4, #0
	adds r3, #0xbf
	ldrb r0, [r3]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0xcc
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	subs r2, #4
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldrb r0, [r6, #9]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	ldrb r1, [r5]
	movs r3, #0x1d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrh r1, [r6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1e
	adds r5, #1
	mov r0, sl
	ands r1, r0
	lsls r1, r1, #3
	ldrb r0, [r5]
	adds r3, #4
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r5]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	strh r1, [r4]
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r4, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D3B2
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r4]
_0802D3B2:
	ldrb r0, [r6, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D3C0
	ldrh r0, [r4, #2]
	adds r0, #0x80
	strh r0, [r4, #2]
_0802D3C0:
	strh r7, [r4, #4]
	strh r7, [r4, #6]
_0802D3C4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r6, #0x18
	mov r0, sb
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r8, r0
	bhs _0802D3DC
	b _0802D2C2
_0802D3DC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D3EC: .4byte gGame
_0802D3F0: .4byte 0x000067AC
_0802D3F4: .4byte 0x0000FFFF
	.syntax divided
