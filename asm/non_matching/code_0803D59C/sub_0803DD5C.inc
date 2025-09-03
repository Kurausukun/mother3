	.syntax unified
	push {r4, lr}
	ldr r0, _0803DD80
	movs r1, #3
	strb r1, [r0]
	bl sub_0804C3E0
	bl sub_08049DC4
	bl sub_08046D90
	ldr r0, _0803DD84
	ldrb r0, [r0]
	cmp r0, #9
	beq _0803DD88
	cmp r0, #0xa
	beq _0803DDB4
	b _0803DDC6
	.align 2, 0
_0803DD80: .4byte gUnknown_0200F920
_0803DD84: .4byte gUnknown_02004100
_0803DD88:
	ldr r4, _0803DDA8
	ldr r0, _0803DDAC
	adds r1, r4, r0
	movs r0, #0x1d
	strh r0, [r1]
	movs r0, #0
	movs r1, #5
	bl sub_08053EEC
	ldr r1, _0803DDB0
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	b _0803DDC6
	.align 2, 0
_0803DDA8: .4byte gSomeBlend
_0803DDAC: .4byte 0x000041CC
_0803DDB0: .4byte 0x000041DA
_0803DDB4:
	ldr r0, _0803DDD0
	ldr r1, _0803DDD4
	adds r0, r0, r1
	movs r1, #0x20
	strh r1, [r0]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
_0803DDC6:
	bl sub_0803DE38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDD0: .4byte gSomeBlend
_0803DDD4: .4byte 0x000041CC
	.syntax divided
