	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x20]
	ldr r0, [r4, #4]
	adds r1, r1, r0
	ldr r2, _080295E4
	cmp r1, r2
	ble _080294F0
	adds r1, r2, #0
_080294F0:
	str r1, [r4]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	cmp r1, r2
	ble _08029502
	adds r1, r2, #0
_08029502:
	movs r6, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r5]
	bl sub_08001D58
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029516
	strh r6, [r4, #0xe]
	strh r6, [r4, #0xc]
_08029516:
	adds r1, r5, #0
	adds r1, #0x28
	movs r2, #0x14
	ldrsh r0, [r4, r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08029528
	movs r0, #0xff
_08029528:
	strh r0, [r4, #0x12]
	adds r1, r5, #0
	adds r1, #0x29
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0802953C
	movs r0, #0xff
_0802953C:
	movs r2, #0
	strh r0, [r4, #0x18]
	adds r1, r5, #0
	adds r1, #0x2a
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08029552
	movs r0, #0xff
_08029552:
	strh r0, [r4, #0x1e]
	adds r1, r5, #0
	adds r1, #0x2b
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08029566
	movs r0, #0xff
_08029566:
	strh r0, [r4, #0x24]
	adds r1, r5, #0
	adds r1, #0x2c
	movs r3, #0x2c
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0802957A
	movs r0, #0xff
_0802957A:
	strh r0, [r4, #0x2a]
	ldr r0, [r4]
	cmp r0, #0
	bgt _08029586
	movs r0, #1
	str r0, [r4]
_08029586:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08029590
	strh r2, [r4, #0xc]
_08029590:
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0802959A
	strh r2, [r4, #0x12]
_0802959A:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080295A4
	strh r2, [r4, #0x18]
_080295A4:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _080295AE
	strh r2, [r4, #0x1e]
_080295AE:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080295B8
	strh r2, [r4, #0x24]
_080295B8:
	movs r3, #0x2a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _080295C2
	strh r2, [r4, #0x2a]
_080295C2:
	ldr r0, [r4]
	str r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0x28]
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x2e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080295E4: .4byte 0x000003E7
	.syntax divided
