	.syntax unified
	push {r4, lr}
	ldr r4, _08087D74
	ldr r0, [r4]
	cmp r0, #0
	bne _08087D5A
	bl sub_0808E7C0
	bl sub_08087C58
_08087D5A:
	ldr r0, [r4]
	ldr r1, [r0]
	adds r1, #0x48
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08087D74: .4byte gUnknown_02001A50
	.syntax divided
