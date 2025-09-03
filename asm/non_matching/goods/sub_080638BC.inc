	.syntax unified
sub_080638BC:
	push {lr}
	adds r2, r1, #0
	cmp r2, #0
	beq _080638D4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080638D4:
	pop {r0}
	bx r0
	.syntax divided
