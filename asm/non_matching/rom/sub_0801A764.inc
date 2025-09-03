	.syntax unified
	push {lr}
	cmp r0, #0
	beq _0801A774
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r1, r0, #0x1c
	cmp r1, #0
	bne _0801A778
_0801A774:
	movs r0, #0
	b _0801A7A2
_0801A778:
	cmp r1, #0xb
	bne _0801A784
	ldr r0, _0801A780
	b _0801A7A2
	.align 2, 0
_0801A780: .4byte 0x000003F3
_0801A784:
	cmp r1, #0xc
	bne _0801A790
	ldr r0, _0801A78C
	b _0801A7A2
	.align 2, 0
_0801A78C: .4byte 0x0000021B
_0801A790:
	cmp r1, #0xd
	beq _0801A7A0
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	b _0801A7A2
_0801A7A0:
	ldr r0, _0801A7A8
_0801A7A2:
	pop {r1}
	bx r1
	.align 2, 0
_0801A7A8: .4byte 0x0000061F
	.syntax divided
