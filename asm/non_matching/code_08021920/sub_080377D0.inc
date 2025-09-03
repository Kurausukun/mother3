	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _08037860
	ldr r4, _08037864
	ldr r1, _08037868
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r6, #0
	strb r0, [r5]
	ldr r2, _0803786C
	adds r3, r4, r2
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r2, _08037870
	adds r0, r4, r2
	strb r6, [r0]
	ldr r0, _08037874
	adds r2, r4, r0
	movs r0, #2
	mov r8, r0
	movs r0, #2
	strb r0, [r2]
	ldr r0, _08037878
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, r8
	orrs r1, r0
	strb r1, [r2]
	ldr r1, _0803787C
	adds r5, r5, r1
	movs r0, #0xa
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	ldr r2, _08037880
	adds r0, r4, r2
	strh r6, [r0]
	strh r6, [r0, #2]
	movs r1, #0x20
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, _08037884
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08037888
	adds r4, r4, r1
	ldrb r0, [r4]
	mov r2, r8
	orrs r0, r2
	strb r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037860: .4byte gGame
_08037864: .4byte gSomeBlend
_08037868: .4byte 0x00003532
_0803786C: .4byte 0x000035BA
_08037870: .4byte 0x00003530
_08037874: .4byte 0x00003531
_08037878: .4byte 0x0000351A
_0803787C: .4byte 0x000082A4
_08037880: .4byte 0x00003528
_08037884: .4byte 0x000121B8
_08037888: .4byte 0x000121BA
	.syntax divided
