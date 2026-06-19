	.syntax unified
sub_080A6C40:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6C56
	cmp r0, #1
	beq _080A6C80
	b _080A6CA8
_080A6C56:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6CA8
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A6CA8
_080A6C80:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6CA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
