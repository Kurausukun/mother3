	.syntax unified
sub_0809B53C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _0809B5DA
_0809B544:
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0xf6
	lsls r3, r3, #4
	adds r1, r6, r3
	lsls r4, r5, #2
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B604
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B608
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _0809B60C
	adds r1, r6, r3
	ldr r1, [r1, #8]
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r5, #1
_0809B5DA:
	bl sub_08072A88__Fv
	cmp r5, r0
	blt _0809B544
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, _0809B604
	adds r0, r6, r2
	str r1, [r0, #4]
	ldr r3, _0809B608
	adds r0, r6, r3
	str r1, [r0, #4]
	adds r2, #0x18
	adds r0, r6, r2
	str r1, [r0, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B604: .4byte 0x00000F6C
_0809B608: .4byte 0x00000F78
_0809B60C: .4byte 0x00000F84
	.syntax divided
