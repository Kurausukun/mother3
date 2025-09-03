	.syntax unified
	push {r4, r5, r6, lr}
	ldr r4, _0800AE54
	ldr r1, _0800AE58
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AE68
	ldr r0, _0800AE5C
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0800AE60
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800AE64
	strh r2, [r0]
	movs r0, #1
	b _0800AF1A
	.align 2, 0
_0800AE54: .4byte gGame
_0800AE58: .4byte 0x00009486
_0800AE5C: .4byte gUnknown_03004B04
_0800AE60: .4byte gUnknown_03004B06
_0800AE64: .4byte gUnknown_03004B08
_0800AE68:
	movs r6, #1
	ldr r1, _0800AE7C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AE80
	cmp r0, #1
	beq _0800AEAC
	b _0800AED2
	.align 2, 0
_0800AE7C: .4byte 0x00009485
_0800AE80:
	movs r6, #9
	ldr r5, _0800AEA0
	ldr r0, _0800AEA4
	adds r4, r4, r0
	ldrb r2, [r4]
	movs r0, #9
	movs r1, #0
	movs r3, #9
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _0800AEA8
	ldrb r2, [r4]
	movs r0, #0xd0
	movs r1, #0xf4
	b _0800AECA
	.align 2, 0
_0800AEA0: .4byte gUnknown_03004B04
_0800AEA4: .4byte 0x00009484
_0800AEA8: .4byte gUnknown_03004B06
_0800AEAC:
	movs r6, #9
	ldr r5, _0800AF20
	ldr r1, _0800AF24
	adds r4, r4, r1
	ldrb r2, [r4]
	movs r0, #0
	movs r1, #9
	movs r3, #9
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _0800AF28
	ldrb r2, [r4]
	movs r0, #0xf4
	movs r1, #0xd0
_0800AECA:
	movs r3, #9
	bl sub_08002E60
	strh r0, [r5]
_0800AED2:
	ldr r3, _0800AF2C
	ldr r1, _0800AF24
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, r6
	blo _0800AF0E
	ldr r0, _0800AF30
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0800AF34
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AF0E
	ldr r0, _0800AF38
	bl sub_0800A3B4
	ldr r1, _0800AF3C
	ldr r0, _0800AF40
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
_0800AF0E:
	ldr r0, _0800AF2C
	ldr r1, _0800AF30
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
_0800AF1A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800AF20: .4byte gUnknown_03004B04
_0800AF24: .4byte 0x00009484
_0800AF28: .4byte gUnknown_03004B06
_0800AF2C: .4byte gGame
_0800AF30: .4byte 0x00009486
_0800AF34: .4byte 0x00009485
_0800AF38: .4byte gUnknown_080C1FF0
_0800AF3C: .4byte gSomeBlend
_0800AF40: .4byte 0x000121BB
	.syntax divided
