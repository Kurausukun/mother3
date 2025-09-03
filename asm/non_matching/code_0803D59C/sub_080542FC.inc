	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r4, #0x8e
	beq _08054358
	cmp r4, #0x8e
	blt _08054314
	cmp r4, #0x94
	bgt _08054314
	cmp r4, #0x93
	bge _08054358
_08054314:
	adds r0, r5, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054330
	ldr r1, _08054354
	movs r0, #0x6c
	muls r0, r4, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	beq _0805434E
_08054330:
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08054358
	ldr r1, _08054354
	movs r0, #0x6c
	muls r0, r4, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	bne _08054358
_0805434E:
	movs r0, #0
	b _0805435A
	.align 2, 0
_08054354: .4byte gGoodsInfo
_08054358:
	movs r0, #1
_0805435A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
