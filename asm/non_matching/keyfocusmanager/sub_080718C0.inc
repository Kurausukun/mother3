	.syntax unified
sub_080718C0:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080718D4
	adds r0, #0x40
	ldrb r2, [r0]
	movs r1, #1
	orrs r1, r2
	b _080718DC
_080718D4:
	adds r0, #0x40
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
_080718DC:
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
	.syntax divided
