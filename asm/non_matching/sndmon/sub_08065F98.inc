	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08066000
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _08065FBC
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065FBC:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _08065FD6
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065FD6:
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _08065FF0
	adds r0, r2, #0
	adds r0, #0xd0
	ldr r1, [r0]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065FF0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066000: .4byte vt_09F7E280
	.syntax divided
