	.syntax unified
remove__5ComboP5Combo:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	cmp r0, r1
	bne _08070926
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x2c]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	b _0807093A
_0807091A:
	ldr r0, [r2, #0x28]
	str r0, [r3, #0x28]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	b _0807093A
_08070926:
	adds r3, r0, #0
	b _08070932
_0807092A:
	ldr r2, [r3, #0x28]
	cmp r2, r1
	beq _0807091A
	adds r3, r2, #0
_08070932:
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _0807092A
	movs r0, #0
_0807093A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
