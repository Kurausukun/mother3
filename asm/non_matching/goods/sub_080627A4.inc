	.syntax unified
sub_080627A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r4, [r5, #0x1c]
	adds r4, #0x78
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r5, r0
	adds r3, r5, #0
	adds r3, #0x7c
	ldrh r1, [r3]
	adds r2, r1, #1
	strh r2, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #8
	str r2, [sp]
	ldr r4, [r4, #4]
	adds r2, r6, #0
	add r3, sp, #4
	bl _call_via_r4
	mov r8, r0
	ldr r1, [r5, #0x1c]
	adds r6, r1, #0
	adds r6, #0x70
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r5, r4
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	ldr r1, [r1, #4]
	adds r0, r5, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [r6, #4]
	adds r0, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
