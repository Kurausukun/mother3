	.syntax unified
sub_08061678:
	push {r4, lr}
	sub sp, #0x180
	movs r0, #0
	bl GetPlayer
	adds r2, r0, #0
	mov r0, sp
	movs r1, #2
	bl __16UnitTargetChoiceUsP4Unit
	mov r0, sp
	bl sub_08076B30
	cmp r0, #0
	beq _080616A2
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	movs r0, #0
	b _080616BA
_080616A2:
	mov r0, sp
	movs r1, #0
	bl attackdata_118__10UnitTargeti
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	adds r0, r4, #0
_080616BA:
	add sp, #0x180
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
