	.syntax unified
cmd_BC:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	cmp r5, #0x10
	bls _08020956
	movs r1, #0x10
_08020956:
	adds r5, r1, #0
	adds r1, r0, #0
	cmp r0, #0x10
	bls _08020960
	movs r1, #0x10
_08020960:
	ldr r2, _08020980
	ldr r0, _08020984
	lsls r1, r1, #8
	orrs r5, r1
	ldr r1, _08020988
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r5, [r0]
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	strh r0, [r2, #2]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08020980: .4byte gSomeBlend
_08020984: .4byte gGame
_08020988: .4byte 0x0000679E
	.syntax divided
