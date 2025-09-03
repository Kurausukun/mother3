	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807E61C
	b _0807DEF4
_0807DEDE:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
_0807DEF4:
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _0807DEDE
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
