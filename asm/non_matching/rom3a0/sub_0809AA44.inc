	.syntax unified
sub_0809AA44:
	push {r4, r5, r6, lr}
	movs r5, #0
	b _0809AA8A
_0809AA4A:
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r4, r1, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r0
	bge _0809AA80
	adds r1, r0, #0
_0809AA80:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	bl _call_via_r2
	adds r5, #1
_0809AA8A:
	bl sub_08072A88__Fv
	cmp r5, r0
	blt _0809AA4A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
