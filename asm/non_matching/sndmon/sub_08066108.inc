	.syntax unified
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xab
	lsls r0, r0, #4
	bl __builtin_new
	bl sub_08067438
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806616C
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _08066144
	cmp r0, #1
	bne _08066146
	movs r0, #2
_08066144:
	str r0, [r4, #0x34]
_08066146:
	adds r0, r4, #0
	movs r1, #8
	bl sub_080661DC
	ldr r2, [sp]
	cmp r2, #0
	beq _08066164
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066164:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
