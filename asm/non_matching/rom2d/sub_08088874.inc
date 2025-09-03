	.syntax unified
sub_08088874:
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r0, sp
	bl sub_080886E0
	ldr r0, [r6, #0x14]
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	mov r0, sp
	bl sub_08088710
	ldr r0, _080888B0
	str r0, [r5, #4]
	ldr r0, [sp]
	str r0, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_080886F0
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080888B0: .4byte vt_09F85048
	.syntax divided
