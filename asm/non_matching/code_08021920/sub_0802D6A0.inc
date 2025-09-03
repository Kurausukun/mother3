	.syntax unified
sub_0802D6A0:
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0802D788
	adds r0, r5, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0802D788
	ldr r0, _0802D764
	ldrb r1, [r0]
	cmp r1, #1
	beq _0802D788
	cmp r1, #9
	beq _0802D788
	ldr r1, _0802D768
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	subs r1, #5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r6, r6, r0
	ldrb r0, [r6, #8]
	lsrs r0, r0, #5
	cmp r0, #0
	beq _0802D788
	adds r7, r5, #0
	adds r7, #0xa4
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	ldr r1, _0802D76C
	cmp r0, r1
	bls _0802D788
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	strh r1, [r5]
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r5, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D720
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r5]
_0802D720:
	ldrb r0, [r6, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D72E
	ldrh r0, [r5, #2]
	adds r0, #0x80
	strh r0, [r5, #2]
_0802D72E:
	mov r4, sp
	mov r0, sp
	bl sub_0801A530
	mov r0, sp
	ldrh r2, [r0]
	ldr r1, _0802D770
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r1, [r4, #2]
	add r0, sp, #4
	strh r1, [r0, #2]
	movs r1, #0xf0
	strh r1, [r0, #4]
	movs r1, #0xa0
	strh r1, [r0, #6]
	adds r1, r5, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802D774
	movs r0, #0
	strh r0, [r7]
	b _0802D788
	.align 2, 0
_0802D764: .4byte gGame
_0802D768: .4byte 0x000067AC
_0802D76C: .4byte 0x03830000
_0802D770: .4byte 0xFFFF0000
_0802D774:
	adds r0, r5, #0
	bl sub_0800CBE0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802D788
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0802CF14
_0802D788:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
