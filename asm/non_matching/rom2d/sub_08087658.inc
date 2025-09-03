	.syntax unified
sub_08087658:
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, [r3, #0x24]
	cmp r1, r0
	bge _0808769A
	movs r0, #0x87
	lsls r0, r0, #3
	adds r4, r3, r0
	adds r2, r3, #0
	adds r2, #0x28
_08087670:
	ldr r0, [r2]
	cmp r0, r5
	bne _08087690
	adds r1, #1
	ldr r0, [r3, #0x24]
	cmp r1, r0
	bge _08087682
	ldr r0, [r2, #4]
	b _0808769C
_08087682:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808769A
	ldr r0, [r3, #0x28]
	b _0808769C
_08087690:
	adds r2, #4
	adds r1, #1
	ldr r0, [r3, #0x24]
	cmp r1, r0
	blt _08087670
_0808769A:
	movs r0, #0
_0808769C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
