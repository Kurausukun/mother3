	.syntax unified
sub_080897C8:
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	subs r0, #1
	cmp r0, #2
	bhi _080897D6
	movs r1, #1
_080897D6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
