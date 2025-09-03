	.syntax unified
sub_0808661C:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0806B070
	mov r2, sp
	movs r4, #0
	mov r1, sp
	strh r4, [r1]
	strh r4, [r2, #2]
	bl sub_0806BA6C
	bl sub_0806BE14
	add r1, sp, #4
	strh r4, [r1]
	strh r4, [r1, #2]
	bl sub_0806C028
	bl sub_0806A9A4
	add r1, sp, #8
	strh r4, [r1]
	strh r4, [r1, #2]
	bl sub_0806ABB8
	ldr r1, [r5, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08086676
_08086662:
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r4, #1
_08086676:
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08086662
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
