	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #3
	adds r5, r4, r1
_08067F1C:
	movs r0, #1
	bl setsleep
	ldr r0, [r5]
	cmp r0, #0
	beq _08067F1C
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08067F4A
	movs r0, #1
	b _08067F4C
_08067F4A:
	movs r0, #0
_08067F4C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
