	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08087AF8
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08087AFC
	cmp r0, #1
	ble _08087BCE
	cmp r0, #2
	beq _08087B9A
	b _08087BCE
	.align 2, 0
_08087AF8: .4byte 0x00000434
_08087AFC:
	ldr r2, _08087B40
	adds r6, r5, r2
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _08087B44
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xb4
	bl _call_via_r2
	b _08087BCE
	.align 2, 0
_08087B40: .4byte 0x0000042C
_08087B44:
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #0xb4
	cmp r4, r0
	bne _08087BCE
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08087BCE
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08087BCE
_08087B9A:
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1f
	bls _08087BCE
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08087BCE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
