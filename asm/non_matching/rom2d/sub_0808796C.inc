	.syntax unified
sub_0808796C:
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #3
	adds r4, r2, r0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808798E
	adds r0, r2, #0
	bl sub_08087A48
	ldrh r1, [r4]
	movs r0, #1
	orrs r0, r1
	b _0808799A
_0808798E:
	adds r0, r2, #0
	bl sub_080879A8
	ldrh r1, [r4]
	ldr r0, _080879A4
	ands r0, r1
_0808799A:
	strh r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080879A4: .4byte 0x0000FFFE
	.syntax divided
