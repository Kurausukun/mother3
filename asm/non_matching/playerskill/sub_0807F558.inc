	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #1
	bl sub_08061A4C
	adds r1, r0, #0
	str r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08080060
	cmp r0, #1
	beq _0807F58E
	cmp r0, #1
	bgt _0807F5AC
	cmp r0, #0
	bne _0807F5AC
	movs r0, #0
	b _0807F5C8
_0807F58E:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807F5A4
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F5A4:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _0807F5C8
_0807F5AC:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807F5C2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F5C2:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_0807F5C8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
