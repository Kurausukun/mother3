	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x20]
	ldr r0, [r4, #4]
	adds r1, r1, r0
	ldr r2, _0803F368
	cmp r1, r2
	ble _0803F274
	adds r1, r2, #0
_0803F274:
	str r1, [r4]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	cmp r1, r2
	ble _0803F286
	adds r1, r2, #0
_0803F286:
	movs r6, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r5]
	bl sub_08001D58
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F29A
	strh r6, [r4, #0xe]
	strh r6, [r4, #0xc]
_0803F29A:
	adds r1, r5, #0
	adds r1, #0x28
	movs r2, #0x14
	ldrsh r0, [r4, r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0803F2AC
	movs r0, #0xff
_0803F2AC:
	strh r0, [r4, #0x12]
	adds r1, r5, #0
	adds r1, #0x29
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0803F2C0
	movs r0, #0xff
_0803F2C0:
	movs r2, #0
	strh r0, [r4, #0x18]
	adds r1, r5, #0
	adds r1, #0x2a
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0803F2D6
	movs r0, #0xff
_0803F2D6:
	strh r0, [r4, #0x1e]
	adds r1, r5, #0
	adds r1, #0x2b
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0803F2EA
	movs r0, #0xff
_0803F2EA:
	strh r0, [r4, #0x24]
	adds r1, r5, #0
	adds r1, #0x2c
	movs r3, #0x2c
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0803F2FE
	movs r0, #0xff
_0803F2FE:
	strh r0, [r4, #0x2a]
	ldr r0, [r4]
	cmp r0, #0
	bgt _0803F30A
	movs r0, #1
	str r0, [r4]
_0803F30A:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0803F314
	strh r2, [r4, #0xc]
_0803F314:
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0803F31E
	strh r2, [r4, #0x12]
_0803F31E:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0803F328
	strh r2, [r4, #0x18]
_0803F328:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0803F332
	strh r2, [r4, #0x1e]
_0803F332:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0803F33C
	strh r2, [r4, #0x24]
_0803F33C:
	movs r3, #0x2a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0803F346
	strh r2, [r4, #0x2a]
_0803F346:
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
_0803F368: .4byte 0x000003E7
	.syntax divided
