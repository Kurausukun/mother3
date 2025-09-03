	.syntax unified
	push {r4, lr}
	ldr r4, _08023404
	ldr r1, _08023408
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0802340C
	adds r1, r4, r2
	ldrh r1, [r1]
	adds r1, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #8
	bl sub_08027EF8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080233FE
	ldr r0, _08023410
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	bl sub_08023414
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_080233FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023404: .4byte gGame
_08023408: .4byte 0x000067AC
_0802340C: .4byte 0x0000845C
_08023410: .4byte 0x00009480
	.syntax divided
