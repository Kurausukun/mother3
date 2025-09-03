	.syntax unified
sub_08022120:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	add r4, sp, #4
	ldr r0, _0802218C
	ldr r2, _08022190
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_08002634
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r2, #0
	cmp r2, r6
	bhs _0802217E
	mov r3, sp
	subs r7, r6, #1
	movs r0, #1
	mov ip, r0
_0802215A:
	ldrh r0, [r3]
	ldrh r1, [r4]
	cmp r0, #0
	bne _0802216A
	cmp r2, r7
	beq _0802216A
	cmp r1, r8
	beq _08022172
_0802216A:
	strh r1, [r5]
	adds r5, #2
	mov r0, ip
	strh r0, [r3]
_08022172:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #2
	cmp r2, r6
	blo _0802215A
_0802217E:
	adds r0, r5, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802218C: .4byte gSomeBlend
_08022190: .4byte 0x00011C80
	.syntax divided
