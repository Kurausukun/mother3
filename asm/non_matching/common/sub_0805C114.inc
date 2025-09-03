    .syntax unified
sub_0805C114:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r3, #0
	ldr r7, [sp, #0x14]
	cmp r6, r4
	bne _0805C126
	adds r0, r4, #0
	b _0805C160
_0805C126:
	subs r0, r2, r7
	lsls r0, r0, #0x10
	subs r1, r2, r5
	cmp r1, #0
	beq _0805C134
	bl Div
_0805C134:
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	muls r1, r6, r1
	muls r0, r4, r0
	adds r1, r1, r0
	asrs r4, r1, #0x10
	adds r0, r7, #0
	bl sub_0805C168
	adds r1, r0, #0
	adds r1, r4, r1
	adds r0, r4, #0
	bl sub_0805D234
	adds r4, r0, #0
	ldr r0, [sp, #0x18]
	cmp r0, r4
	ble _0805C15E
	adds r0, r4, #0
_0805C15E:
	adds r4, r0, #0
_0805C160:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
