	.syntax unified
sub_080B2C90:
	push {r4, lr}
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	movs r2, #0
	ldr r1, _080B2CB8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _080B2CB0
	movs r2, #1
_080B2CB0:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B2CB8: .4byte gUnknown_080F9538
	.syntax divided
