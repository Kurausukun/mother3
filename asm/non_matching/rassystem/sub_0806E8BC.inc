	.syntax unified
sub_0806E8BC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E908
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806E93C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E8DA
	adds r0, r4, #0
	bl sub_0806EAC8
_0806E8DA:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #2
	bl _._1V
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	bl _._15Struct_09F85088
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E908: .4byte vt_09F7FFE0
	.syntax divided
