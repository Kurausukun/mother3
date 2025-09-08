	.syntax unified
combo_b8__5CombobT1:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08070AEE
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _08070AF8
_08070AEE:
	adds r2, r0, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
_08070AF8:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
