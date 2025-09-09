	.syntax unified
sub_080BADA4:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x48]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x4c]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x50]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x54]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r4, r5
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [r6, #0x58]
	subs r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl nullsub_39
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
