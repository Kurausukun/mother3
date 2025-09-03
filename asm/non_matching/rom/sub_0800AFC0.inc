	.syntax unified
sub_0800AFC0:
	push {lr}
	adds r3, r0, #0
	ldr r0, _0800AFF8
	ldr r1, _0800AFFC
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r2, r0, #0x1f
	cmp r2, #0
	bne _0800AFF2
	ldrb r1, [r3, #2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3, #2]
	ldr r0, _0800B000
	strh r2, [r0]
	ldr r1, _0800B004
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800B008
	strh r2, [r0]
_0800AFF2:
	pop {r0}
	bx r0
	.align 2, 0
_0800AFF8: .4byte gGame
_0800AFFC: .4byte 0x00008494
_0800B000: .4byte gUnknown_03004B04
_0800B004: .4byte gUnknown_03004B06
_0800B008: .4byte gUnknown_03004B08
	.syntax divided
