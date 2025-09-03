	.syntax unified
sub_0806B258:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _0806B2C4
	str r0, [r6, #0x1c]
	bl sub_0806A9A4
	adds r4, r0, #0
	bl sub_0806AFF0
	ldr r1, _0806B2C8
	ands r1, r0
	adds r0, r4, #0
	bl sub_0806AF2C
	bl sub_0806A9B0
	adds r7, r6, #0
	adds r7, #0x2c
	adds r0, r6, #0
	adds r0, #0x30
	cmp r0, #0
	beq _0806B2B2
	movs r1, #0x88
	lsls r1, r1, #1
	adds r5, r6, r1
	cmp r0, r5
	beq _0806B2B2
_0806B294:
	subs r5, #0x38
	adds r4, r5, #4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0806B2A2
	bl __builtin_vec_delete
_0806B2A2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806B2AC
	bl __builtin_vec_delete
_0806B2AC:
	adds r0, r7, #4
	cmp r0, r5
	bne _0806B294
_0806B2B2:
	adds r0, r6, #0
	mov r1, r8
	bl _._4Base
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B2C4: .4byte vt_09F7EFB0
_0806B2C8: .4byte 0x0000FFF8
	.syntax divided
