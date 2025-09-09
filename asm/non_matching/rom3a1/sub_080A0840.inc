	.syntax unified
sub_080A0840:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_08072AC4
	adds r4, r0, #0
	cmp r4, #0
	bne _080A0854
	movs r0, #0
	b _080A08DC
_080A0854:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0882
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080A0882
	movs r0, #0x13
	b _080A08D6
_080A0882:
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x13
	bgt _080A08BE
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bgt _080A08AA
	movs r0, #0x10
	b _080A08D6
_080A08AA:
	cmp r0, #3
	bne _080A08BE
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _080A08BE
	movs r0, #0x11
	b _080A08D6
_080A08BE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xd
	cmp r1, #0x21
	blt _080A08D6
	movs r0, #0xf
	cmp r1, #0x42
	bge _080A08D6
	movs r0, #0xe
_080A08D6:
	adds r1, r5, #0
	bl sub_08074124
_080A08DC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
