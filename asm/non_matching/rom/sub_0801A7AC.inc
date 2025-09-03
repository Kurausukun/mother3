	.syntax unified
sub_0801A7AC:
	push {lr}
	cmp r0, #0
	beq _0801A7BC
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0801A7C0
_0801A7BC:
	movs r0, #0
	b _0801A7C6
_0801A7C0:
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
_0801A7C6:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
