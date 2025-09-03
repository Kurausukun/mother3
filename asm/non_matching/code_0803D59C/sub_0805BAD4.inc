	.syntax unified
sub_0805BAD4:
	push {lr}
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805BAEC
	cmp r0, #1
	beq _0805BAE6
	ldr r1, _0805BAF0
_0805BAE6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805BAEC: .4byte gUnknown_080EE83F
_0805BAF0: .4byte gUnknown_080EE7DF
	.syntax divided
