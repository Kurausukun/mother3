	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08057F74
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08057DD4
	ldr r3, _08057DE8
	ldr r0, _08057DEC
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x13
	bhi _08057DD4
	ldr r1, _08057DF0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08057DD4
	ldr r0, _08057DF4
	adds r1, r3, r0
	adds r0, r4, #0
	bl _call_via_r2
_08057DD4:
	ldr r0, _08057DE8
	ldr r2, _08057DF8
	adds r1, r0, r2
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _08057DFC
	ldr r0, [r1]
	adds r0, #1
	b _08057DFE
	.align 2, 0
_08057DE8: .4byte gSomeBlend
_08057DEC: .4byte 0x00002CE4
_08057DF0: .4byte gUnknown_09BCDD30
_08057DF4: .4byte 0x00002CB8
_08057DF8: .4byte 0x00002CE0
_08057DFC:
	movs r0, #0
_08057DFE:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
