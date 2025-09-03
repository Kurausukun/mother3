	.syntax unified
	push {r4, lr}
	sub sp, #4
	ldr r0, _080554B0
	ldr r1, _080554B4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08054FE0
	adds r4, r0, #0
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #5
	bhi _08055504
	lsls r0, r0, #2
	ldr r1, _080554B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080554B0: .4byte gSomeBlend
_080554B4: .4byte 0x000044EC
_080554B8: .4byte _080554BC
_080554BC:
	.4byte _080554FE
	.4byte _080554D4
	.4byte _080554FE
	.4byte _08055504
	.4byte _08055504
	.4byte _08055504
_080554D4:
	movs r0, #6
	bl get_misctext_len
	adds r1, r0, #0
	adds r0, r4, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08048748
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #1
	ands r1, r2
	cmp r1, #0
	beq _080554F8
	mov r0, sp
	strh r2, [r0]
	b _0805550A
_080554F8:
	mov r0, sp
	strh r1, [r0]
	b _0805550A
_080554FE:
	mov r1, sp
	movs r0, #1
	b _08055508
_08055504:
	mov r1, sp
	movs r0, #0
_08055508:
	strh r0, [r1]
_0805550A:
	ldr r0, _08055524
	ldr r1, _08055528
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08055530
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805552C
	movs r0, #0xb0
	b _0805554A
	.align 2, 0
_08055524: .4byte gUnknown_0200F920
_08055528: .4byte 0x00006472
_0805552C:
	movs r0, #0xb1
	b _0805554A
_08055530:
	ldr r0, _08055540
	ldr r1, _08055544
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055548
	movs r0, #0xa0
	b _0805554A
	.align 2, 0
_08055540: .4byte gSomeBlend
_08055544: .4byte 0x0000C5D3
_08055548:
	movs r0, #0xa1
_0805554A:
	bl sub_080486A0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
