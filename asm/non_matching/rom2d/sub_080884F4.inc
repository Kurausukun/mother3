	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r2, #0
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0808851A
	adds r0, r4, #0
	b _0808851E
_0808851A:
	adds r0, r4, #0
	adds r0, #8
_0808851E:
	movs r1, #8
	bl __divsi3
	lsls r1, r0, #3
	mov r0, sp
	strh r1, [r0]
	movs r0, #2
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0808853E
	adds r0, r4, #0
	b _08088542
_0808853E:
	adds r0, r4, #0
	adds r0, #8
_08088542:
	movs r1, #8
	bl __divsi3
	lsls r1, r0, #3
	mov r0, sp
	strh r1, [r0, #2]
	ldr r0, [sp]
	str r0, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
