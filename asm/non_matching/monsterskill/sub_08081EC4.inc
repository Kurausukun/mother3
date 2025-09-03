	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r1, #0
	adds r0, #0x98
	movs r2, #0
	ldrsh r6, [r0, r2]
	adds r0, #2
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r2, [r1, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r0, [sp]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	.syntax divided
