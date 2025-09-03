	.syntax unified
sub_080895C0:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08089600
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _080895E2
	ldr r1, [r2, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_080895E2:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _080895F2
	movs r1, #0
_080895EA:
	str r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _080895EA
_080895F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089600: .4byte vt_09F85140
	.syntax divided
