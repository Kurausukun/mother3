	.syntax unified
sub_0808477C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r1, #0
	ldr r0, [r3]
	str r0, [r7, #0x24]
	movs r1, #0
_08084790:
	movs r4, #0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov r8, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r5, r0, #4
	adds r0, r5, #0
	adds r0, #0xb0
	adds r0, r0, r7
	mov sb, r0
_080847A8:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r5, r7
	adds r1, r0, r1
	adds r1, #0xb0
	ldr r2, [r1, #0x1c]
	adds r2, #0x90
	add r0, sb
	movs r6, #0
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	adds r1, r3, #0
	str r3, [sp]
	bl _call_via_r2
	adds r4, #1
	ldr r3, [sp]
	cmp r4, #0x15
	ble _080847A8
	mov r1, r8
	cmp r1, #1
	ble _08084790
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
