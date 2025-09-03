	.syntax unified
	push {lr}
	movs r0, #0x18
	bl sub_08002998
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802BB60
	ldr r0, _0802BB2C
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0xbf
	beq _0802BB58
	cmp r1, #0xbf
	bgt _0802BB30
	cmp r1, #0x23
	beq _0802BB58
	b _0802BB60
	.align 2, 0
_0802BB2C: .4byte gSave
_0802BB30:
	ldr r0, _0802BB4C
	cmp r1, r0
	bgt _0802BB60
	subs r0, #5
	cmp r1, r0
	blt _0802BB60
	ldr r0, _0802BB50
	ldr r1, _0802BB54
	adds r0, r0, r1
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r0]
	b _0802BB60
	.align 2, 0
_0802BB4C: .4byte 0x0000014B
_0802BB50: .4byte gGame
_0802BB54: .4byte 0x000082B4
_0802BB58:
	movs r0, #0x18
	movs r1, #0
	bl sub_080028F4
_0802BB60:
	pop {r0}
	bx r0
	.syntax divided
