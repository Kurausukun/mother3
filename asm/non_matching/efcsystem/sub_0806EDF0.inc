	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl sub_080894BC
	ldr r0, _0806EE80
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x3c
	ldr r1, _0806EE84
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806EE0C:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _0806EE0C
	movs r4, #0
	strh r6, [r5, #0x2c]
	bl sub_0806EC08
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [r5, #0x30]
	ldrh r1, [r0, #8]
	strh r1, [r5, #0x34]
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x36]
	strh r4, [r5, #0x38]
	movs r6, #0
_0806EE40:
	ldr r0, [r5, #0x30]
	lsls r4, r6, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0806EE62
	ldr r0, _0806EE88
	bl __builtin_new
	ldr r1, [r5, #0x30]
	adds r1, r1, r4
	ldrh r2, [r1]
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	adds r1, r5, #0
	bl sub_0806F030
_0806EE62:
	adds r6, #1
	cmp r6, #1
	ble _0806EE40
	bl get__10IrcManager
	ldr r1, _0806EE8C
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r5, #0
	bl sub_08069A50__3IrcUiG5Intr2
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806EE80: .4byte vt_09F80168
_0806EE84: .4byte 0x00000141
_0806EE88: .4byte 0x000004AC
_0806EE8C: .4byte gUnknown_0810056C
	.syntax divided
