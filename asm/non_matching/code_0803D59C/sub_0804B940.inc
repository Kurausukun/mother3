	.syntax unified
sub_0804B940:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804B978
	movs r1, #0x14
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0x36
	bl sub_08051080
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0x50
	bl sub_080511F8
	ldrb r0, [r5, #9]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #9]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B978: .4byte gUnknown_0201A72C
	.syntax divided
