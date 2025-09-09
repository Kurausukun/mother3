	.syntax unified
sub_080AD380:
	push {lr}
	adds r2, r0, #0
	cmp r1, #3
	bne _080AD398
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #1
	bne _080AD398
	movs r0, #0x64
	b _080AD39E
_080AD398:
	adds r0, r2, #0
	bl getElementWeakness__C4UnitUi
_080AD39E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
