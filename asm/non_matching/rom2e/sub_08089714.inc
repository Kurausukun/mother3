	.syntax unified
sub_08089714:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0808977C
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_08089680
	adds r4, r0, #0
	cmp r4, #0
	beq _08089756
_0808972A:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _08089750
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08089750:
	adds r4, r5, #0
	cmp r4, #0
	bne _0808972A
_08089756:
	bl sub_0806B070
	ldr r2, [r6, #0x48]
	movs r1, #1
	bl sub_0806BACC
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _0808976C
	bl __builtin_vec_delete
_0808976C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080895C0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808977C: .4byte vt_09F851D8
	.syntax divided
