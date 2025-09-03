	.syntax unified
sub_080251F4:
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0802528C
	ldr r0, _08025290
	adds r0, r0, r3
	mov ip, r0
	ldrb r4, [r0]
	lsls r0, r4, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _08025212
	b _08025338
_08025212:
	cmp r5, #9
	bls _08025218
	b _08025338
_08025218:
	ldr r7, _08025294
	adds r1, r3, r7
	ldr r0, _08025298
	strh r0, [r1]
	ldr r0, _0802529C
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r7, #4
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _080252A0
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r7, #4
	adds r0, r3, r7
	strh r1, [r0]
	ldr r1, _080252A4
	adds r0, r3, r1
	strh r2, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r7, ip
	strb r0, [r7]
	ldr r0, _080252A8
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080252AC
	adds r0, r3, r1
	str r6, [r0]
	ldr r7, _080252B0
	adds r1, r3, r7
	movs r0, #1
	str r0, [r1]
	ldr r0, _080252B4
	adds r4, r3, r0
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	strb r0, [r4]
	cmp r5, #4
	beq _080252B8
	cmp r5, #4
	blt _080252DE
	cmp r5, #6
	bgt _080252DE
	b _080252D4
	.align 2, 0
_0802528C: .4byte gGame
_08025290: .4byte 0x00008494
_08025294: .4byte 0x00008450
_08025298: .4byte 0x0000FFFF
_0802529C: .4byte 0x00008452
_080252A0: .4byte 0x000067AC
_080252A4: .4byte 0x0000845C
_080252A8: .4byte 0x0000845E
_080252AC: .4byte 0x00008484
_080252B0: .4byte 0x00008490
_080252B4: .4byte 0x00008496
_080252B8:
	ldr r1, _08025308
	adds r5, r3, r1
	ldrb r0, [r5]
	cmp r0, #1
	bne _080252C8
	movs r0, #1
	bl sub_0800ADBC
_080252C8:
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	strb r0, [r5]
_080252D4:
	movs r0, #5
	bl sub_080260C8
	bl sub_080233C0
_080252DE:
	ldr r1, _0802530C
	ldr r2, _08025310
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08025338
	ldr r7, _08025314
	adds r0, r1, r7
	ldrh r1, [r0]
	movs r0, #0xfd
	lsls r0, r0, #1
	cmp r1, r0
	beq _08025320
	cmp r1, r0
	bgt _08025318
	subs r0, #0x1f
	cmp r1, r0
	beq _08025320
	b _08025332
	.align 2, 0
_08025308: .4byte 0x00009485
_0802530C: .4byte gGame
_08025310: .4byte 0x00008494
_08025314: .4byte 0x000067AC
_08025318:
	movs r0, #0x9e
	lsls r0, r0, #2
	cmp r1, r0
	bne _08025332
_08025320:
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	b _08025338
_08025332:
	movs r0, #1
	bl sub_08025F98
_08025338:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
