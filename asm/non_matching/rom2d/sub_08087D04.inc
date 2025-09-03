	.syntax unified
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	ldr r5, _08087D40
	ldr r0, [r5]
	cmp r0, #0
	bne _08087D18
	bl sub_0808E7C0
	bl sub_08087C58
_08087D18:
	add r2, sp, #0x10
	ldr r4, _08087D44
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl vsprintf
	ldr r0, [r5]
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08087D40: .4byte gUnknown_02001A50
_08087D44: .4byte gUnknown_02001A58
	.syntax divided
