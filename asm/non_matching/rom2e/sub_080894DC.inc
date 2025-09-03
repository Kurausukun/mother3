	.syntax unified
sub_080894DC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808951C
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _080894FE
	ldr r1, [r2, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_080894FE:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0808950E
	movs r1, #0
_08089506:
	str r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _08089506
_0808950E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808951C: .4byte vt_09F850A8
	.syntax divided
