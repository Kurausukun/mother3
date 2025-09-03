	.syntax unified
sub_0800ADBC:
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r2, _0800AE0C
	ldr r0, _0800AE10
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800AE14
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0800AE18
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800AE1C
	strh r2, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800AE06
	ldr r0, _0800AE20
	bl sub_0800A3B4
	ldr r1, _0800AE24
	ldr r0, _0800AE28
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
_0800AE06:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800AE0C: .4byte gGame
_0800AE10: .4byte 0x00009486
_0800AE14: .4byte gUnknown_03004B04
_0800AE18: .4byte gUnknown_03004B06
_0800AE1C: .4byte gUnknown_03004B08
_0800AE20: .4byte gUnknown_080C1FF0
_0800AE24: .4byte gSomeBlend
_0800AE28: .4byte 0x000121BB
	.syntax divided
