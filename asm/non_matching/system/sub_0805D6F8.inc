    .syntax unified
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _0805D714 @ =gUnknown_020050C0
	movs r0, #0x64
	adds r2, r4, #0
	muls r2, r0, r2
	adds r0, r2, r1
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805D718
	movs r0, #0xa
	b _0805D746
	.align 2, 0
_0805D714: .4byte gUnknown_020050C0
_0805D718:
	movs r3, #7
	adds r0, r1, r2
	adds r2, r0, #0
	adds r2, #0x31
_0805D720:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0805D740
	subs r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0805D720
	movs r0, #0x64
	muls r0, r4, r0
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0805D744
	movs r0, #0
	b _0805D746
_0805D740:
	adds r0, r3, #2
	b _0805D746
_0805D744:
	movs r0, #1
_0805D746:
	pop {r4}
	pop {r1}
	bx r1
    .syntax divided
