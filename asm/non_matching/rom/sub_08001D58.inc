	.syntax unified
sub_08001D58:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08001D66
	cmp r0, #4
	bne _08001D6A
_08001D66:
	movs r0, #1
	b _08001D6C
_08001D6A:
	movs r0, #0
_08001D6C:
	pop {r1}
	bx r1
	.syntax divided
