	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r1, #2]
	cmp r1, #7
	bls _0802E4FA
	cmp r1, #8
	beq _0802E4D8
	cmp r1, #9
	beq _0802E4E2
	b _0802E4FA
_0802E4D8:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	b _0802E4EA
_0802E4E2:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0
_0802E4EA:
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802E4FA:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802E514
	adds r0, r1, #0
	bl sub_080270C8
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	b _0802E51E
_0802E514:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036A1C
_0802E51E:
	ldr r1, _0802E52C
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802E52C: .4byte gObjectContinue
	.syntax divided
