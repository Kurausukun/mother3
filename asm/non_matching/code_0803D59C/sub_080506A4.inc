	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, _080506C8
	ldrb r0, [r0]
	cmp r0, #0
	blt _080506C2
	cmp r0, #1
	ble _080506BC
	cmp r0, #6
	bgt _080506C2
	cmp r0, #4
	blt _080506C2
_080506BC:
	adds r0, r1, #0
	bl sub_080016E4
_080506C2:
	pop {r0}
	bx r0
	.align 2, 0
_080506C8: .4byte gUnknown_0200F920
	.syntax divided
