	.syntax unified
	push {lr}
	ldr r2, _0808E7E0
	ldr r0, [r2]
	cmp r0, #0
	bne _0808E7DA
	ldr r1, _0808E7E4
	ldr r0, _0808E7E8
	str r0, [r1]
	movs r0, #1
	str r0, [r2]
	ldr r0, _0808E7EC
	bl sub_08093698
_0808E7DA:
	ldr r0, _0808E7E4
	pop {r1}
	bx r1
	.align 2, 0
_0808E7E0: .4byte gUnknown_02001A48
_0808E7E4: .4byte gUnknown_02001A44
_0808E7E8: .4byte vt_09F85E18
_0808E7EC: .4byte sub_0808E7B0
	.syntax divided
