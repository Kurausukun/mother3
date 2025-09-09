	.syntax unified
sub_080A07C0:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	bl sub_08072E38
	adds r5, r0, #0
	cmp r5, #0
	bne _080A07E6
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A083A
_080A07E6:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A0802
	movs r0, #0xd
	b _080A0834
_080A0802:
	ldr r1, [r5, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	cmp r0, #0
	ble _080A0832
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A083A
_080A0832:
	movs r0, #0x12
_080A0834:
	adds r1, r4, #0
	bl sub_08074124
_080A083A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
