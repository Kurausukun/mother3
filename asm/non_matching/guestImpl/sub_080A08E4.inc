	.syntax unified
sub_080A08E4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A08FE
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	b _080A0904
_080A08FE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #2
_080A0904:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
