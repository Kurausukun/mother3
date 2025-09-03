	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	bl playSfx__6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [r4, #0x1c]
	movs r6, #0xb0
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl PlayAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
