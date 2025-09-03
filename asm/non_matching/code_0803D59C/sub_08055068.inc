	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x12]
	cmp r0, #0x62
	bls _08055076
	movs r0, #0
	b _0805508C
_08055076:
	ldrb r0, [r4]
	ldrb r1, [r4, #0x12]
	adds r1, #1
	bl sub_0805C178
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	ldr r1, _08055094
	cmp r0, r1
	bls _0805508C
	adds r0, r1, #0
_0805508C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08055094: .4byte 0x000F423F
	.syntax divided
