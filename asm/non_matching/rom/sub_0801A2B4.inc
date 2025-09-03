	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r4, #0
	mov r5, sp
_0801A2C0:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_0801A2DC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0801A2C0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
