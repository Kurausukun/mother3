	.syntax unified
sub_080BB5C4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BB600
	bl sub_08074614
	cmp r0, #0
	beq _080BB600
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_080BB600:
	adds r0, r4, #0
	bl nullsub_39
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
