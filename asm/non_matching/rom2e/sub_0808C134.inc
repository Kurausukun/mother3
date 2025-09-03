	.syntax unified
sub_0808C134:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x4c
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r6, r4, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r5, r4, #0
	adds r5, #0x4e
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r3, #1
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808C164
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0808C188
_0808C164:
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r2, #1
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r0, r4, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808C182
	movs r0, #0
	b _0808C18A
_0808C182:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0808C188:
	movs r0, #1
_0808C18A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
