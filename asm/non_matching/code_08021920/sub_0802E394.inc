	.syntax unified
sub_0802E394:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r1, #2
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802E3BE
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bgt _0802E3CE
_0802E3BE:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802E3D2
_0802E3CE:
	movs r0, #1
	b _0802E3F2
_0802E3D2:
	ldr r4, _0802E3F8
	ldr r0, _0802E3FC
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0802F774
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
_0802E3F2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E3F8: .4byte gGame
_0802E3FC: .4byte 0x00008382
	.syntax divided
