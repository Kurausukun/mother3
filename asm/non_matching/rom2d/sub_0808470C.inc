	.syntax unified
sub_0808470C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08084774
	str r0, [r5, #0x1c]
	ldr r1, _08084778
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r2, #0xfd
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r0, r5, #0
	adds r0, #0xb0
	cmp r0, #0
	beq _08084752
	cmp r0, r4
	beq _08084752
	adds r6, r0, #0
_0808473C:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808473C
_08084752:
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_0806D6E0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _08084766
	bl __builtin_vec_delete
_08084766:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084774: .4byte vt_09F83F20
_08084778: .4byte 0x0000106C
	.syntax divided
