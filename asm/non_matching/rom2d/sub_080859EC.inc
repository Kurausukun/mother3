	.syntax unified
sub_080859EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [r6, #0x2c]
	strh r0, [r6, #0x28]
	strh r0, [r6, #0x2a]
	movs r7, #0
	b _08085ADA
_08085A02:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08085A28
	cmp r1, r0
	beq _08085A6A
	cmp r1, r0
	bgt _08085A38
	subs r0, #0x2f
	cmp r1, r0
	beq _08085A62
	cmp r1, r0
	bgt _08085A2C
	cmp r1, #0
	beq _08085A54
	b _08085A92
	.align 2, 0
_08085A28: .4byte 0x0000FF30
_08085A2C:
	ldr r0, _08085A34
	cmp r1, r0
	beq _08085A5C
	b _08085A92
	.align 2, 0
_08085A34: .4byte 0x0000FF02
_08085A38:
	ldr r0, _08085A50
	cmp r1, r0
	beq _08085A7A
	cmp r1, r0
	blt _08085A72
	adds r0, #1
	cmp r1, r0
	beq _08085A82
	adds r0, #1
	cmp r1, r0
	beq _08085A8A
	b _08085A92
	.align 2, 0
_08085A50: .4byte 0x0000FF32
_08085A54:
	adds r0, r6, #0
	bl sub_08085B1C
	b _08085AD8
_08085A5C:
	adds r0, r6, #0
	bl sub_08085C48
_08085A62:
	adds r0, r6, #0
	bl sub_08085AF4
	b _08085AD8
_08085A6A:
	movs r0, #5
	bl setsleep
	b _08085AD8
_08085A72:
	movs r0, #0xa
	bl setsleep
	b _08085AD8
_08085A7A:
	movs r0, #0x1e
	bl setsleep
	b _08085AD8
_08085A82:
	movs r0, #0x3c
	bl setsleep
	b _08085AD8
_08085A8A:
	movs r0, #0x5a
	bl setsleep
	b _08085AD8
_08085A92:
	ldrh r2, [r6, #0x28]
	ldrh r1, [r6, #0x2a]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r0, r1, r0
	adds r0, #0x9c
	ldr r5, [r0, #0x1c]
	adds r5, #0xd0
	adds r4, #0x9c
	adds r4, r6, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl sub_08085B1C
	adds r0, r6, #0
	bl sub_08085BF8
_08085AD8:
	adds r7, #1
_08085ADA:
	mov r0, r8
	bl len__3Msg
	cmp r7, r0
	blt _08085A02
	adds r0, r6, #0
	bl sub_08085C48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
