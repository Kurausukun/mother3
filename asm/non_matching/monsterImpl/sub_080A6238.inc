	.syntax unified
sub_080A6238:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitP6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A62F6
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A62F6
	lsls r0, r0, #2
	ldr r1, _080A6270
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6270: .4byte _080A6274
_080A6274:
	.4byte _080A6288
	.4byte _080A629E
	.4byte _080A62B4
	.4byte _080A62CA
	.4byte _080A62E0
_080A6288:
	ldr r1, [r4, #0x1c]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A629E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62B4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x93
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62CA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x95
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
