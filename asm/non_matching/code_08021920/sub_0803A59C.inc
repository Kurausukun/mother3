	.syntax unified
	push {r4, lr}
	ldrh r4, [r1, #4]
	cmp r4, #1
	beq _0803A5F0
	cmp r4, #1
	bgt _0803A5AE
	cmp r4, #0
	beq _0803A5B4
	b _0803A63C
_0803A5AE:
	cmp r4, #2
	beq _0803A638
	b _0803A63C
_0803A5B4:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A5E4
	ldr r0, _0803A5E8
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A5EC
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	b _0803A63C
	.align 2, 0
_0803A5E4: .4byte gSomeBlend
_0803A5E8: .4byte 0x00003668
_0803A5EC: .4byte gGame
_0803A5F0:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A62C
	ldr r0, _0803A630
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A634
	ldrb r2, [r3, #3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	eors r1, r4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bl sub_08000D64
	bl sub_0803B5C4
	b _0803A63C
	.align 2, 0
_0803A62C: .4byte gSomeBlend
_0803A630: .4byte 0x00003668
_0803A634: .4byte gGame
_0803A638:
	bl sub_0803A644
_0803A63C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
