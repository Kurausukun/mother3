	.syntax unified
cmd_set_bgm:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	bne _08020FDE
	ldr r0, _08020FF8
	ldr r1, _08020FFC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08020FDE:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _08021004
	ldr r0, _08020FF8
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	ldr r3, _08021000
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r3, [r1]
	b _0802100A
	.align 2, 0
_08020FF8: .4byte gGame
_08020FFC: .4byte 0x000067AC
_08021000: .4byte 0x00009C88
_08021004:
	movs r3, #0xff
	ands r3, r0
	lsls r2, r5, #0x10
_0802100A:
	ldr r0, _0802102C
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	ldr r4, _08021030
	adds r0, r0, r4
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r0, r0, #8
	cmp r2, #0x7f
	bgt _08021024
	lsls r0, r0, #8
	orrs r3, r0
	strh r3, [r1]
_08021024:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802102C: .4byte gSave
_08021030: .4byte 0x00000482
	.syntax divided
