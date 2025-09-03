	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802E770
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r4, r2]
	bl sub_08002FD4
	ldr r2, [r5, #0x2c]
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r5, #0x2c]
	movs r4, #1
	strh r4, [r0, #2]
	bl sub_080030A4
	ands r0, r4
	movs r2, #6
	cmp r0, #0
	beq _0802E764
	movs r2, #2
_0802E764:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E770:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0802E78A
	movs r0, #1
	b _0802E7B8
_0802E78A:
	adds r0, r1, #0
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E7B6
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	movs r2, #2
	cmp r0, #2
	bne _0802E7AA
	movs r2, #6
_0802E7AA:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E7B6:
	movs r0, #0
_0802E7B8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
