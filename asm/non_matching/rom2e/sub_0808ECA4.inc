	.syntax unified
sub_0808ECA4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl get__17ObjPltPoolManager
	adds r6, r0, #0
	adds r4, #0x5c
	adds r0, r4, #0
	bl sub_0806D53C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806C9A0__10ObjPltPooli
	adds r4, r0, #0
	ldr r0, _0808ECE8
	cmp r4, r0
	bne _0808ECE0
	bl sub_0806BE14
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806C174
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806C898
_0808ECE0:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808ECE8: .4byte 0x0000FFFF
	.syntax divided
