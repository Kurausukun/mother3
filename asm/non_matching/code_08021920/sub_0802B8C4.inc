	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r3, _0802B8DC
_0802B8CE:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _0802B8E0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _0802B8EE
	.align 2, 0
_0802B8DC: .4byte gSave
_0802B8E0:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _0802B8CE
	movs r0, #1
	rsbs r0, r0, #0
_0802B8EE:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
