	.syntax unified
sub_08037B94:
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _08037BE8
	ldr r2, _08037BEC
	adds r0, r4, r2
	movs r3, #0
	strb r3, [r0]
	strh r3, [r1, #4]
	ldr r0, _08037BF0
	ldr r2, _08037BF4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	movs r2, #4
	cmp r0, #0
	beq _08037BB6
	movs r2, #5
_08037BB6:
	strh r2, [r1, #2]
	movs r0, #1
	strh r0, [r1, #0xa]
	strh r3, [r1, #8]
	ldr r0, _08037BF8
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08037BFC
	movs r1, #0xc
	bl sub_0800289C
	ldr r2, _08037C00
	adds r1, r4, r2
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037BE8: .4byte gSomeBlend
_08037BEC: .4byte 0x00003530
_08037BF0: .4byte gGame
_08037BF4: .4byte 0x000082B8
_08037BF8: .4byte 0x0000351A
_08037BFC: .4byte gUnknown_09AF3790
_08037C00: .4byte 0x00003510
	.syntax divided
