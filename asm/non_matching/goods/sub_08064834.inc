	.syntax unified
	push {r4, lr}
	movs r4, #0
_08064838:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08064908
	bl sub_08064940
	adds r4, #1
	cmp r4, #0xff
	bls _08064838
	ldr r4, _0806490C
	movs r0, #0xf
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x10
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _08064910
	movs r0, #0x11
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x12
	adds r1, r4, #0
	bl sub_08064940
	ldr r1, _08064914
	movs r0, #0x13
	bl sub_08064940
	ldr r4, _08064918
	movs r0, #0x1f
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x20
	adds r1, r4, #0
	bl sub_08064940
	ldr r1, _0806491C
	movs r0, #0x18
	bl sub_08064940
	ldr r1, _08064920
	movs r0, #5
	bl sub_08064940
	ldr r4, _08064924
	movs r0, #0x22
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x23
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _08064928
	movs r0, #0x24
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x25
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _0806492C
	movs r0, #0x26
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x27
	adds r1, r4, #0
	bl sub_08064940
	ldr r4, _08064930
	movs r0, #0x28
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x29
	adds r1, r4, #0
	bl sub_08064940
	ldr r1, _08064934
	movs r0, #0x1b
	bl sub_08064940
	ldr r1, _08064938
	movs r0, #0x1c
	bl sub_08064940
	ldr r4, _0806493C
	movs r0, #0x1d
	adds r1, r4, #0
	bl sub_08064940
	movs r0, #0x1e
	adds r1, r4, #0
	bl sub_08064940
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064908: .4byte sub_080BC324
_0806490C: .4byte sub_080BC304
_08064910: .4byte sub_080BC2E4
_08064914: .4byte sub_080BC2C4
_08064918: .4byte sub_080BC2A4
_0806491C: .4byte sub_080BC284
_08064920: .4byte sub_080BC264
_08064924: .4byte sub_080BC244
_08064928: .4byte sub_080BC224
_0806492C: .4byte sub_080BC204
_08064930: .4byte sub_080BC1E4
_08064934: .4byte sub_080BC1C4
_08064938: .4byte sub_080BC1A4
_0806493C: .4byte sub_080BC184
	.syntax divided
