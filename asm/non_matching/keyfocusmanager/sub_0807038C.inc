	.syntax unified
sub_0807038C:
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x20]
	cmp r0, #0
	beq _0807039E
	ldr r0, [r1, #0x24]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	b _080703A0
_0807039E:
	movs r0, #0
_080703A0:
	pop {r1}
	bx r1
	.syntax divided
