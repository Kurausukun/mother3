	.syntax unified
sub_0800ACA0:
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	ldr r3, _0800ACF4
	cmp r0, #0
	beq _0800AD14
	ldr r1, _0800ACF8
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _0800ACFC
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	cmp r1, r0
	beq _0800AD4C
	ldr r1, _0800AD00
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800AD14
	ldr r0, _0800AD04
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800AD08
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0800AD0C
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800AD10
	strh r2, [r0]
	b _0800AD4C
	.align 2, 0
_0800ACF4: .4byte gGame
_0800ACF8: .4byte 0x00009484
_0800ACFC: .4byte 0x0003FF00
_0800AD00: .4byte 0x00008496
_0800AD04: .4byte 0x00009486
_0800AD08: .4byte gUnknown_03004B04
_0800AD0C: .4byte gUnknown_03004B06
_0800AD10: .4byte gUnknown_03004B08
_0800AD14:
	ldr r1, _0800AD54
	adds r2, r3, r1
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800AD58
	adds r0, r3, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r1, _0800AD5C
	movs r0, #9
	strh r0, [r1]
	ldr r1, _0800AD60
	movs r0, #0xd0
	strh r0, [r1]
	ldr r0, _0800AD64
	strh r2, [r0]
	ldr r1, _0800AD68
	ldrh r0, [r1, #0x1a]
	movs r0, #9
	strh r0, [r1, #0x1a]
_0800AD4C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800AD54: .4byte 0x00009486
_0800AD58: .4byte 0x00009484
_0800AD5C: .4byte gUnknown_03004B04
_0800AD60: .4byte gUnknown_03004B06
_0800AD64: .4byte gUnknown_03004B08
_0800AD68: .4byte gSomeBlend
	.syntax divided
