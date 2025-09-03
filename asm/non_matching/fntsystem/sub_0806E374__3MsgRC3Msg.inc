	.syntax unified
sub_0806E374__3MsgRC3Msg:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r1, [r4, #6]
	ldrh r0, [r5, #6]
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806E418
	movs r3, #0
	ldrh r0, [r5, #6]
	cmp r3, r0
	bge _0806E3AC
	ldr r6, [r4]
	ldr r2, [r5]
_0806E392:
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	adds r3, #1
	ldrh r0, [r5, #6]
	cmp r3, r0
	blt _0806E392
_0806E3AC:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
