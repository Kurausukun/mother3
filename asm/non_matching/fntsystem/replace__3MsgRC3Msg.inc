	.syntax unified
replace__3MsgRC3Msg:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4, #6]
	bl sub_0806E418
	ldr r1, [r4]
	ldrh r2, [r4, #6]
	adds r0, r5, #0
	bl sub_0806E454
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
