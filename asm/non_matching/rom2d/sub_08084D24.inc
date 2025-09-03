	.syntax unified
sub_08084D24:
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bgt _08084D32
	movs r2, #1
_08084D32:
	cmp r2, #0
	beq _08084D3A
	movs r0, #0
	b _08084D44
_08084D3A:
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	bl sub_08084D48
_08084D44:
	pop {r1}
	bx r1
	.syntax divided
