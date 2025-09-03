	.syntax unified
sub_08022694:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _080226F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009E38
	ldr r0, _080226F8
	adds r6, r4, r0
	ldr r2, _080226FC
	adds r0, r6, #0
	movs r1, #0x28
	bl sub_08001B54
	ldr r0, _08022700
	adds r1, r4, r0
	ldr r0, _08022704
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080025D8
	adds r2, r0, #0
	subs r2, r2, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08001B18
	ldr r1, _08022708
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r0, _0802270C
	adds r4, r4, r0
	ldrh r2, [r4]
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080226F4: .4byte gUnknown_0201B7A0
_080226F8: .4byte 0xFFFFF31C
_080226FC: .4byte 0x00AC00AC
_08022700: .4byte 0xFFFFF342
_08022704: .4byte 0x0000FFFF
_08022708: .4byte 0xFFFFF354
_0802270C: .4byte 0xFFFFF356
	.syntax divided
