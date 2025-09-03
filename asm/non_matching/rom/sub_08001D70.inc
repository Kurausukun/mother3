	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	ldr r3, _08001D9C
	movs r5, #1
	rsbs r5, r5, #0
_08001D7E:
	lsls r0, r2, #1
	adds r1, r0, r3
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r5
	beq _08001DAA
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r4
	beq _08001DA0
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08001D7E
	.align 2, 0
_08001D9C: .4byte gUnknown_08CDB8BC
_08001DA0:
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
_08001DAA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
