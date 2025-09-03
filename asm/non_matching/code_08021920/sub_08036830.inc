	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _0803685A
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r4, #0
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	movs r4, #2
	ldrsh r1, [r2, r4]
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	bl sub_0803329C
	lsrs r0, r0, #4
	b _0803685C
_0803685A:
	movs r0, #0
_0803685C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
