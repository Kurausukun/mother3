	.syntax unified
sub_0800E450:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r2, #2]
	movs r6, #2
	ldrsh r0, [r2, r6]
	cmp r0, #0x10
	ble _0800E46A
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #2]
_0800E46A:
	adds r0, r3, #0
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800E47E
	movs r0, #0
	b _0800E494
_0800E47E:
	ldrh r0, [r4]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	strh r2, [r5]
	ldr r0, _0800E49C
	strh r0, [r5, #2]
	movs r0, #1
_0800E494:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800E49C: .4byte 0x0000FFFF
	.syntax divided
