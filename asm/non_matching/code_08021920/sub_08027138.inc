	.syntax unified
sub_08027138:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r1, #0
	bne _08027148
	movs r0, #0
	b _0802715A
_08027148:
	adds r0, r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0802715A
	ldr r2, _08027160
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802715A:
	pop {r1}
	bx r1
	.align 2, 0
_08027160: .4byte 0x0000FFFA
	.syntax divided
