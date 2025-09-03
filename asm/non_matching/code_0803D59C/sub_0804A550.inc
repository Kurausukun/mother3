	.syntax unified
sub_0804A550:
	push {r4, lr}
	ldr r1, _0804A580
	ldr r0, _0804A584
	adds r3, r1, r0
	ldrb r2, [r3]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0804A618
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt _0804A608
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r2, _0804A588
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804A618
	cmp r0, #4
	bgt _0804A58C
	cmp r0, #2
	beq _0804A592
	b _0804A5AE
	.align 2, 0
_0804A580: .4byte gSomeBlend
_0804A584: .4byte 0x000041DA
_0804A588: .4byte 0x000041D2
_0804A58C:
	cmp r0, #5
	beq _0804A5A8
	b _0804A5AE
_0804A592:
	adds r0, r1, #0
	adds r0, #0x50
	ldr r3, _0804A5A4
	adds r1, r1, r3
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	b _0804A608
	.align 2, 0
_0804A5A4: .4byte 0x0000422C
_0804A5A8:
	bl sub_0804A628
	b _0804A608
_0804A5AE:
	ldr r4, _0804A5D0
	ldr r0, _0804A5D4
	adds r1, r4, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	ldr r0, _0804A5D8
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804A5E0
	ldr r1, _0804A5DC
	adds r0, r4, r1
	movs r1, #1
	b _0804A5EE
	.align 2, 0
_0804A5D0: .4byte gUnknown_02016078
_0804A5D4: .4byte 0x000041DC
_0804A5D8: .4byte gUnknown_0200F920
_0804A5DC: .4byte 0x000041E4
_0804A5E0:
	cmp r0, #3
	blt _0804A5FC
	cmp r0, #5
	bgt _0804A5FC
	ldr r2, _0804A5F8
	adds r0, r4, r2
	movs r1, #2
_0804A5EE:
	movs r2, #0
	movs r3, #2
	bl sub_0804A738
	b _0804A608
	.align 2, 0
_0804A5F8: .4byte 0x000041E4
_0804A5FC:
	ldr r0, _0804A620
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0804A738
_0804A608:
	ldr r1, _0804A624
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
_0804A618:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A620: .4byte gUnknown_0201A25C
_0804A624: .4byte gSomeBlend
	.syntax divided
