	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08087E1C
	ldr r0, [r4]
	cmp r0, #0
	bne _08087DE0
	bl sub_0808E7C0
	bl sub_08087C58
_08087DE0:
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4]
	ldr r2, [r0]
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087E1C: .4byte gUnknown_02001A50
	.syntax divided
