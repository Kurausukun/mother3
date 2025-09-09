	.syntax unified
sub_080BD954:
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08083018
	adds r5, r0, #0
	cmp r5, #0x63
	bgt _080BD9D2
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BD9D2
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _080BD9C4
	ldr r1, [r4, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080BD9D2
_080BD9C4:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
_080BD9D2:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
