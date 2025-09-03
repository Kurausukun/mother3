	.syntax unified
sub_080770C8:
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x60]
	cmp r0, r1
	bne _080770DA
	cmp r2, #1
	bne _080770E0
_080770DA:
	str r1, [r3, #0x60]
	movs r0, #1
	b _080770E2
_080770E0:
	movs r0, #0
_080770E2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
