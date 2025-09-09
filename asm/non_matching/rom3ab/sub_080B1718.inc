	.syntax unified
sub_080B1718:
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	movs r2, #0
	ldr r1, _080B1740
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B1738
	movs r2, #1
_080B1738:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B1740: .4byte gUnknown_080F95B8
	.syntax divided
