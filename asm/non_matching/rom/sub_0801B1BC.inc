	.syntax unified
sub_0801B1BC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r2, #0
	str r3, [sp, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, _0801B1FC
	ldr r1, _0801B200
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_0801B520
	ldr r1, _0801B204
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r4
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #2]
	ldr r0, _0801B208
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0
	mov sl, r1
	b _0801B2AA
	.align 2, 0
_0801B1FC: .4byte gGame
_0801B200: .4byte 0x000067AC
_0801B204: .4byte 0xFFFF0000
_0801B208: .4byte 0x00005FE0
_0801B20C:
	adds r4, r1, #0
	mov r1, sb
	ldr r7, [r1, #4]
	movs r0, #0
	mov r8, r0
	ldrb r1, [r4, #8]
	cmp r8, r1
	bhs _0801B296
	add r6, sp, #4
_0801B21E:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801B234
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #0x1b
	lsrs r5, r0, #0x1b
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x16
	lsrs r3, r0, #0x1b
	b _0801B240
_0801B234:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r5, r0, #0x1d
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r3, r0, #0x1d
_0801B240:
	ldrb r1, [r7, #1]
	lsls r1, r1, #4
	ldr r2, _0801B280
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r7, #2]
	lsls r0, r0, #4
	strh r0, [r6, #2]
	adds r0, r5, #1
	lsls r0, r0, #4
	strh r0, [r6, #4]
	adds r0, r3, #1
	lsls r0, r0, #4
	strh r0, [r6, #6]
	adds r0, r6, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B284
	mov r1, sl
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	mov r1, r8
	ldr r0, [sp, #0x30]
	strh r1, [r0]
	movs r0, #1
	b _0801B2C2
	.align 2, 0
_0801B280: .4byte 0xFFFF0000
_0801B284:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r7, #4
	ldrb r0, [r4, #8]
	cmp r8, r0
	blo _0801B21E
_0801B296:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x10
	add sb, r1
	cmp r0, #0x18
	bhi _0801B2C0
	mov r0, sb
_0801B2AA:
	ldrb r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B2C0
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801B20C
_0801B2C0:
	movs r0, #0
_0801B2C2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
