	.syntax unified
sub_080803F4:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __6ActionP4Unit
	ldr r0, _0808041C
	str r0, [r5, #0x1c]
	movs r0, #0x2c
	muls r0, r4, r0
	ldr r1, _08080420
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808041C: .4byte vt_09F82A28
_08080420: .4byte gPlayerSkillData
	.syntax divided
