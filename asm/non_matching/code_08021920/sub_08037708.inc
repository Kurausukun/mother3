	.syntax unified
sub_08037708:
	push {r4, r5, lr}
	ldr r4, _08037774
	ldr r2, _08037778
	ldrb r1, [r2]
	ldr r3, _0803777C
	adds r0, r4, r3
	movs r5, #0
	strb r1, [r0]
	movs r0, #0xe
	strb r0, [r2]
	ldr r0, _08037780
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08037784
	adds r0, r4, r1
	bl sub_080376EC
	ldr r3, _08037788
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0803778C
	adds r0, r4, r1
	strb r5, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	bl sub_08037B4C
	ldr r3, _08037790
	adds r4, r4, r3
	strh r5, [r4]
	strh r5, [r4, #2]
	movs r0, #0x20
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037774: .4byte gSomeBlend
_08037778: .4byte gGame
_0803777C: .4byte 0x00003532
_08037780: .4byte 0x000121BB
_08037784: .4byte 0x00003510
_08037788: .4byte 0x000035BA
_0803778C: .4byte 0x00003530
_08037790: .4byte 0x00003528
	.syntax divided
