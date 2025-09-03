	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802DFC0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E068
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08036864
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802E06A
_0802E068:
	movs r0, #0
_0802E06A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
