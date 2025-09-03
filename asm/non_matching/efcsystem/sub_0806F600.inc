	.syntax unified
sub_0806F600:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0x2c]
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0806F6C0
	ldrh r0, [r5, #0x30]
	cmp r0, #0
	bne _0806F6C0
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	subs r0, r2, #1
	subs r4, r1, r0
	ldr r0, [r3]
	cmp r0, #2
	beq _0806F63C
	cmp r0, #2
	bgt _0806F62C
	cmp r0, #1
	beq _0806F636
	b _0806F6C0
_0806F62C:
	cmp r0, #3
	beq _0806F644
	cmp r0, #4
	beq _0806F67A
	b _0806F6C0
_0806F636:
	adds r0, r5, #0
	adds r1, r2, #0
	b _0806F6A4
_0806F63C:
	subs r3, r4, #1
	adds r0, r5, #0
	adds r1, r2, #0
	b _0806F672
_0806F644:
	ldrh r0, [r5, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	cmp r1, #0
	beq _0806F652
	bl Div
_0806F652:
	adds r2, r0, #0
	lsls r1, r4, #1
	cmp r1, #0
	beq _0806F662
	adds r0, r2, #0
	bl sub_08090F80
	adds r2, r0, #0
_0806F662:
	cmp r2, r4
	blt _0806F69E
	cmp r2, r4
	ble _0806F6C0
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	subs r3, r4, #1
	adds r0, r5, #0
_0806F672:
	adds r2, r4, #0
	bl sub_0806F6E0
	b _0806F6C0
_0806F67A:
	ldrh r0, [r5, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	cmp r1, #0
	beq _0806F688
	bl Div
_0806F688:
	adds r2, r0, #0
	lsls r0, r4, #1
	adds r1, r0, #1
	cmp r1, #0
	beq _0806F69A
	adds r0, r2, #0
	bl sub_08090F80
	adds r2, r0, #0
_0806F69A:
	cmp r2, r4
	bge _0806F6AE
_0806F69E:
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	adds r0, r5, #0
_0806F6A4:
	adds r2, r4, #0
	movs r3, #1
	bl sub_0806F6E0
	b _0806F6C0
_0806F6AE:
	cmp r2, r4
	ble _0806F6C0
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	subs r3, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0806F6E0
_0806F6C0:
	ldrh r0, [r5, #0x30]
	adds r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5, #0x2c]
	movs r2, #8
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0806F6D8
	movs r0, #0
	strh r0, [r5, #0x30]
_0806F6D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
