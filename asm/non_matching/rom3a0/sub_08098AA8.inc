	.syntax unified
sub_08098AA8:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #4
	adds r5, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _08098B34
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _08098B30
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _08098B34
	movs r0, #1
	b _08098B36
	.align 2, 0
_08098B30: .4byte 0x00000F94
_08098B34:
	movs r0, #0
_08098B36:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
