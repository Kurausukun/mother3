	.syntax unified
cmd_81:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_080038A4
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08020774
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08020774:
	ldr r0, _08020788
	ldr r2, _0802078C
	adds r0, r0, r2
	strh r1, [r0]
	bl sub_08004794
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08020788: .4byte gGame
_0802078C: .4byte 0x00008462
	.syntax divided
