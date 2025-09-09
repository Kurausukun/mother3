	.syntax unified
sub_080BC9C0:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	ldr r2, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r5, [r2, #4]
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	movs r3, #0
	mov sb, r3
	strb r3, [r2]
	ldr r5, [r1, #4]
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r6, r6, r0
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	ldr r5, [r1, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
