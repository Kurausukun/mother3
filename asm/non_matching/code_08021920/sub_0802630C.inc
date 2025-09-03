	.syntax unified
	push {r4, lr}
	sub sp, #8
	ldr r2, _0802636C
	ldr r1, _08026370
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08026384
	ldr r1, _08026374
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	ldr r4, _08026378
	adds r3, r2, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #4
	adds r0, #0x60
	mov r1, sp
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	ldr r4, _0802637C
	adds r0, r2, r4
	ldrb r0, [r0]
	adds r0, #0x10
	strh r0, [r1, #6]
	ldr r1, _08026380
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _08026358
	movs r2, #0
_08026358:
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_0800A2CC
	b _0802638A
	.align 2, 0
_0802636C: .4byte gSomeBlend
_08026370: .4byte 0x00004B19
_08026374: .4byte 0xFFFF0000
_08026378: .4byte 0x00004ACE
_0802637C: .4byte 0x00011C89
_08026380: .4byte 0x00011D16
_08026384:
	ldr r0, _0802639C
	bl sub_0800A240
_0802638A:
	ldr r0, _080263A0
	movs r1, #0
	bl sub_08009E38
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802639C: .4byte gUnknown_080C1FF0
_080263A0: .4byte gUnknown_0201B7A0
	.syntax divided
