	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [r0, #0x68]
	ldr r3, [r0, #0x1c]
	adds r3, #0x70
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r6, [r5, r1]
	movs r1, #2
	ldrsh r2, [r5, r1]
	mov r4, sp
	subs r2, #0xc
	mov r1, sp
	strh r6, [r1]
	strh r2, [r4, #2]
	ldr r2, [r3, #4]
	bl _call_via_r2
	mov r2, r8
	ldr r0, [r2, #0x6c]
	ldr r4, [r0, #0x1c]
	adds r4, #0x80
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r1, #2
	ldrsh r3, [r5, r1]
	add r1, sp, #4
	subs r2, #1
	subs r3, #4
	strh r2, [r1]
	strh r3, [r1, #2]
	ldr r2, [r4, #4]
	bl _call_via_r2
	mov r2, r8
	ldr r0, [r2, #0x70]
	ldr r4, [r0, #0x1c]
	adds r4, #0x80
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r1, #2
	ldrsh r3, [r5, r1]
	add r1, sp, #8
	subs r2, #1
	adds r3, #6
	strh r2, [r1]
	strh r3, [r1, #2]
	ldr r2, [r4, #4]
	bl _call_via_r2
	mov r2, r8
	ldr r0, [r2, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
