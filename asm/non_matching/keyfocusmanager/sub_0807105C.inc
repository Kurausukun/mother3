	.syntax unified
_._9ComboRoot:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _080710AC
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl head__5Combo
	adds r4, r0, #0
	cmp r4, #0
	beq _0807109E
_08071072:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _08071098
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08071098:
	adds r4, r5, #0
	cmp r4, #0
	bne _08071072
_0807109E:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._5Combo
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080710AC: .4byte _vt.9ComboRoot
	.syntax divided
