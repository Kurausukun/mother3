	.syntax unified
sub_080A0680:
	push {r4, lr}
	adds r4, r0, #0
	bl IsBossBattle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A06C4
	movs r0, #0
	bl GetMonster
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x95
	bgt _080A06C4
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A0734
_080A06C4:
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bgt _080A0702
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A06E0
	movs r0, #0x14
	b _080A072E
_080A06E0:
	cmp r0, #0x42
	bgt _080A06E8
	movs r0, #0x15
	b _080A072E
_080A06E8:
	cmp r0, #0x45
	ble _080A072C
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A0734
_080A0702:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A0712
	movs r0, #0x14
	b _080A072E
_080A0712:
	cmp r0, #0x45
	ble _080A072C
	ldr r1, [r4, #0x1c]
	movs r3, #0xc2
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A0734
_080A072C:
	movs r0, #0x19
_080A072E:
	adds r1, r4, #0
	bl sub_08074124
_080A0734:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
