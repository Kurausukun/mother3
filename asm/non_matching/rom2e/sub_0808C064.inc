	.syntax unified
sub_0808C064:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808C08A
	movs r0, #0
	b _0808C096
_0808C08A:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0808C578
	movs r0, #1
_0808C096:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
