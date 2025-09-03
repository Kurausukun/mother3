	.syntax unified
	push {r4, lr}
	ldr r4, _0804BB54
	adds r2, r4, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0804BB4E
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x3c
	movs r2, #0x36
	bl sub_08051080
	adds r0, r4, #0
	bl sub_08050D80
_0804BB4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB54: .4byte gUnknown_0201A55C
	.syntax divided
