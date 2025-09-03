	.syntax unified
sub_080850E0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08085128
	str r0, [r5, #0x1c]
	ldr r0, _0808512C
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0x30
	cmp r0, #0
	beq _0808511A
	cmp r0, r4
	beq _0808511A
	adds r6, r0, #0
_08085104:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _08085104
_0808511A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085128: .4byte vt_09F84008
_0808512C: .4byte 0x000014D0
	.syntax divided
