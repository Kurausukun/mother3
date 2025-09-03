	.syntax unified
	push {r4, lr}
	adds r2, r1, #0
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08057EBE
	adds r4, r2, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	cmp r0, #0xc
	bne _08057E8E
	ldr r0, [r2, #0x24]
	cmp r0, #9
	bls _08057EBE
_08057E8E:
	ldr r1, _08057EC4
	movs r0, #0xc4
	lsls r0, r0, #6
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrh r0, [r1, #8]
	movs r0, #0x40
	strh r0, [r1, #8]
	ldr r2, _08057EC8
	adds r0, r1, r2
	ldr r2, _08057ECC
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_08001B18
	ldrb r0, [r4]
	adds r0, #1
	bl sub_08057A14
_08057EBE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057EC4: .4byte gSomeBlend
_08057EC8: .4byte 0x00002CFC
_08057ECC: .4byte 0x00002750
	.syntax divided
