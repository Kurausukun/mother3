	.syntax unified
sub_0809D6B8:
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08074614
	cmp r0, #0
	beq _0809D6E4
	adds r4, r5, #0
	adds r4, #0x60
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl setTempo__5Soundi
_0809D6E4:
	bl sub_08074614
	cmp r0, #0
	beq _0809D708
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D720
_0809D708:
	ldr r1, [r5, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_0809D720:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
