	.syntax unified
sub_0808AE38:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, #0x54
	strh r4, [r0]
	mov r0, sp
	bl __3Msg
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E34C
	ldr r0, [r5, #0x1c]
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r2, [r0, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
