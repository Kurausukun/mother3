	.syntax unified
sub_0806E150:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r0, #0x78
	ldrh r1, [r6, #0x24]
	bl sub_0808875C
	adds r2, r0, #0
	movs r0, #0x8c
	adds r0, r0, r6
	mov r8, r0
	str r2, [r0]
	adds r7, r6, #0
	adds r7, #0x88
	ldr r0, [r7]
	cmp r2, r0
	beq _0806E1B6
	adds r5, r6, #0
	adds r5, #0x84
	ldr r0, [r5]
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x3c
	ldrh r2, [r2, #2]
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_08088830
	adds r1, r6, #0
	adds r1, #0x80
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r6, #0
	adds r0, #0x90
	adds r1, r6, #0
	adds r1, #0x80
	adds r2, r6, #0
	adds r2, #0x58
	adds r3, r6, #0
	adds r3, #0x6c
	bl sub_08088900
_0806E1B6:
	mov r1, r8
	ldr r0, [r1]
	str r0, [r7]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
