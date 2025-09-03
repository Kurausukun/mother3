	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r4, _08020CA4
	ldr r1, _08020CA8
	adds r6, r4, r1
	ldrb r1, [r6]
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r1, _08020CAC
	adds r7, r4, r1
	ldrb r1, [r7]
	strb r0, [r7]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08020CB0
	adds r4, r4, r1
	ldrb r1, [r4]
	strb r0, [r4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08020CBC
	ldrb r0, [r7]
	cmp r0, #0
	bne _08020CBC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020CBC
	ldr r0, _08020CB4
	ldr r1, _08020CB8
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	b _08020CC8
	.align 2, 0
_08020CA4: .4byte gSomeBlend
_08020CA8: .4byte 0x00002C9C
_08020CAC: .4byte 0x00002C9D
_08020CB0: .4byte 0x00002C9E
_08020CB4: .4byte gGame
_08020CB8: .4byte 0x0000598C
_08020CBC:
	ldr r0, _08020CD4
	ldr r1, _08020CD8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
_08020CC8:
	strb r1, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020CD4: .4byte gGame
_08020CD8: .4byte 0x0000598C
	.syntax divided
