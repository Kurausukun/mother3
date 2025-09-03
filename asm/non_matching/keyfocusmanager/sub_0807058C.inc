	.syntax unified
sub_0807058C:
	push {lr}
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0807059E
	ldr r0, [r1, #8]
	ldr r0, [r0]
	b _080705A0
_0807059E:
	movs r0, #0
_080705A0:
	pop {r1}
	bx r1
	.syntax divided
