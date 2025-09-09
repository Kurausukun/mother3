	.syntax unified
sub_080BB60C:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082670
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BB620
	movs r0, #0
	b _080BB65A
_080BB620:
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
	bne _080BB658
	bl sub_08074614
	cmp r0, #0
	beq _080BB658
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_080BB658:
	movs r0, #1
_080BB65A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
