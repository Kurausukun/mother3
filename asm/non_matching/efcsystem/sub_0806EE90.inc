	.syntax unified
sub_0806EE90:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806EF04
	str r0, [r6, #0x1c]
	bl get__10IrcManager
	ldr r1, _0806EF08
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r6, #0
	bl sub_08069C84__3IrcUiG5Intr2
	ldr r1, _0806EF0C
	ldrh r2, [r1, #0xa]
	ldr r0, _0806EF10
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0806EF14
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r0, r6, #0
	bl sub_0808959C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806EEF6
_0806EECA:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _0806EEF0
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806EEF0:
	adds r4, r5, #0
	cmp r4, #0
	bne _0806EECA
_0806EEF6:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080894DC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EF04: .4byte vt_09F80168
_0806EF08: .4byte gUnknown_0810056C
_0806EF0C: .4byte 0x040000B0
_0806EF10: .4byte 0x0000C5FF
_0806EF14: .4byte 0x00007FFF
	.syntax divided
