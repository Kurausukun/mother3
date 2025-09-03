	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0802DF00
	movs r0, #0
	bl get_char_stats
	ldrb r2, [r0, #0x12]
	ldr r3, _0802DF04
	adds r0, r5, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0802DF08
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrb r0, [r0, #0x12]
	movs r3, #2
	ldrsh r1, [r4, r3]
	subs r2, r2, r0
	cmp r1, r2
	bgt _0802DF00
	movs r0, #4
	ldrsh r4, [r4, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802DF0C
_0802DF00:
	movs r0, #0
	b _0802DF0E
	.align 2, 0
_0802DF04: .4byte gMonsterData
_0802DF08: .4byte 0xFFFFFF00
_0802DF0C:
	movs r0, #1
_0802DF0E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
