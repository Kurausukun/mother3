	.syntax unified
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08087FF6
	adds r0, #7
_08087FF6:
	lsls r0, r0, #0xd
	lsrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r1, r0]
	cmp r1, #0
	bge _08088004
	adds r1, #7
_08088004:
	asrs r1, r1, #3
	lsls r1, r1, #6
	ldr r0, [r3, #0xc]
	adds r0, r0, r1
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
