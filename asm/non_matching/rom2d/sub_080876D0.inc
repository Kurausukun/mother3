	.syntax unified
sub_080876D0:
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _080876F8
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_080876E6:
	ldr r0, [r2]
	cmp r0, r4
	bne _080876F0
	adds r0, r3, #0
	b _080876FA
_080876F0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	blt _080876E6
_080876F8:
	ldr r0, [r5]
_080876FA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
