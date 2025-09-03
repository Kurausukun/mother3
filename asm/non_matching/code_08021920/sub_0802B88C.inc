	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _0802B8A2
	cmp r1, #1
	beq _0802B8B0
	movs r0, #0
	b _0802B8BA
_0802B8A2:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0802B8AC
	b _0802B8B8
	.align 2, 0
_0802B8AC: .4byte gUnknown_0200DE08
_0802B8B0:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0802B8C0
_0802B8B8:
	adds r0, r0, r1
_0802B8BA:
	pop {r1}
	bx r1
	.align 2, 0
_0802B8C0: .4byte gUnknown_0200DE44
	.syntax divided
