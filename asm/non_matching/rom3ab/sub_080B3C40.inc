	.syntax unified
sub_080B3C40:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	mov r8, r1
	ldr r0, [r4, #0x1c]
	adds r6, r0, #0
	adds r6, #0xe0
	movs r1, #0
	ldrsh r5, [r6, r1]
	adds r5, r4, r5
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [r6, #4]
	adds r0, r5, #0
	mov r2, r8
	bl _call_via_r3
	adds r1, r0, #0
	mov r0, r8
	movs r2, #1
	bl sub_08073CF0
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r3, [r0, #4]
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0
	bl _call_via_r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
