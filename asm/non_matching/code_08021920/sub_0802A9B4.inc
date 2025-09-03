	.syntax unified
sub_0802A9B4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r5, r4, #0
	ldr r0, _0802A9F4
	ldr r1, _0802A9F8
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r1, _0802A9FC
	movs r0, #0x6c
	muls r0, r3, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #8
	bne _0802AA08
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0802A0F8
	cmp r4, #1
	bls _0802AA44
	ldr r0, _0802AA00
	ldr r2, _0802AA04
	adds r0, r0, r2
	movs r1, #3
	strh r1, [r0]
	b _0802AA6A
	.align 2, 0
_0802A9F4: .4byte gSomeBlend
_0802A9F8: .4byte 0x00004AD0
_0802A9FC: .4byte gGoodsInfo
_0802AA00: .4byte gGame
_0802AA04: .4byte 0x0000845C
_0802AA08:
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_0802A180
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0802AA58
	cmp r5, #1
	bls _0802AA44
	ldr r3, _0802AA38
	ldr r0, _0802AA3C
	adds r2, r3, r0
	movs r0, #3
	strh r0, [r2]
	cmp r5, r1
	bls _0802AA6A
	movs r0, #0x11
	strh r0, [r2]
	subs r1, r5, r1
	ldr r2, _0802AA40
	adds r0, r3, r2
	strh r1, [r0]
	b _0802AA6A
	.align 2, 0
_0802AA38: .4byte gGame
_0802AA3C: .4byte 0x0000845C
_0802AA40: .4byte 0x0000846A
_0802AA44:
	ldr r0, _0802AA50
	ldr r1, _0802AA54
	adds r0, r0, r1
	movs r1, #2
	strh r1, [r0]
	b _0802AA6A
	.align 2, 0
_0802AA50: .4byte gGame
_0802AA54: .4byte 0x0000845C
_0802AA58:
	ldr r0, _0802AA70
	ldr r2, _0802AA74
	adds r0, r0, r2
	movs r1, #0xe
	strh r1, [r0]
	ldrb r0, [r6, #0xa]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6, #0xa]
_0802AA6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AA70: .4byte gGame
_0802AA74: .4byte 0x0000845C
	.syntax divided
