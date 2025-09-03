	.syntax unified
sub_08015360:
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801541C
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
	bl sub_08004FB4
	ldr r4, _08015420
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r1, [r4, #0x1d]
	movs r7, #1
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0801540C
	ldr r0, _08015424
	ldr r1, _08015428
	adds r4, r0, r1
	ldrb r2, [r4]
	lsls r1, r2, #0x1f
	ldr r5, _0801542C
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #0x1f
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ands r0, r7
	movs r3, #2
	rsbs r3, r3, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4]
	lsls r1, r3, #0x1e
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1f
	cmp r0, #0
	blt _080153C2
	orrs r1, r6
_080153C2:
	ands r1, r7
	lsls r0, r1, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	orrs r0, r6
	ands r0, r7
	lsls r0, r0, #2
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, _08015430
	adds r4, r5, r2
	ldrh r0, [r4]
	ldr r3, _08015434
	adds r1, r5, r3
	ldrh r1, [r1]
	adds r3, #2
	adds r2, r5, r3
	bl sub_08018F9C
	ldr r1, _08015438
	adds r0, r5, r1
	ldrh r2, [r0]
	ldr r3, _0801543C
	adds r0, r5, r3
	ldrh r3, [r0]
	movs r0, #0x40
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4]
_0801540C:
	ldr r0, _08015420
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801541C: .4byte gUnknown_03005314
_08015420: .4byte gUnknown_02000008
_08015424: .4byte gSomeBlend
_08015428: .4byte 0x0001ED11
_0801542C: .4byte gGame
_08015430: .4byte 0x00005968
_08015434: .4byte 0x0000596A
_08015438: .4byte 0x00005962
_0801543C: .4byte 0x00005960
	.syntax divided
