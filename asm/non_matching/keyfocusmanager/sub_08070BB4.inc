	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r7, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r5, sp, #4
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _08070C2E
	adds r2, r1, #0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	cmp r2, r0
	bge _08070C2E
	ldrh r0, [r7, #2]
	movs r2, #2
	ldrsh r1, [r6, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08070C2E
	adds r0, r1, #0
	movs r2, #2
	ldrsh r1, [r7, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	cmp r0, r1
	bge _08070C2E
	movs r0, #1
	b _08070C30
_08070C2E:
	movs r0, #0
_08070C30:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
