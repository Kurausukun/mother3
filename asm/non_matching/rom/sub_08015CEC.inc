	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r5, _08015DCC
	ldr r0, _08015DD0
	adds r7, r5, r0
	ldrb r0, [r7]
	lsls r0, r0, #2
	ldr r1, _08015DD4
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08015DD8
	ldr r1, _08015DDC
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _08015D1E
	ldrh r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r5, #8]
	orrs r1, r0
	strh r1, [r5, #8]
_08015D1E:
	ldrh r0, [r3]
	cmp r0, #0x50
	bne _08015D4C
	bl sub_08026BCC
	ldr r0, _08015DE0
	ldr r4, _08015DE4
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldr r0, _08015DE8
	ldr r1, [r4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0xa
	bl sub_080031F0
_08015D4C:
	ldr r0, _08015DEC
	adds r6, r5, r0
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08015D9C
	ldr r1, _08015DF0
	adds r4, r5, r1
	ldrb r3, [r4]
	mov r2, r8
	ldrb r2, [r2, #3]
	cmp r3, r2
	bhs _08015D9C
	ldr r0, _08015DF4
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7]
	ldr r2, _08015DF8
	adds r0, r5, r2
	strb r1, [r0]
	ldr r1, _08015DFC
	adds r0, r5, r1
	strb r3, [r0]
	adds r0, r3, #1
	strb r0, [r4]
	ldr r2, _08015E00
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r4, [r4]
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6]
_08015D9C:
	ldr r1, _08015DCC
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _08015E04
	strh r0, [r1]
	ldrh r0, [r1, #2]
	ldr r0, _08015E08
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	bl sub_08004FB4
	ldr r1, _08015DE8
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	bne _08015E0C
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	b _08015E18
	.align 2, 0
_08015DCC: .4byte gSomeBlend
_08015DD0: .4byte 0x00011D9C
_08015DD4: .4byte gUnknown_080C2A90
_08015DD8: .4byte gGame
_08015DDC: .4byte 0x00005962
_08015DE0: .4byte gUnknown_03005314
_08015DE4: .4byte gUnknown_02000028
_08015DE8: .4byte gUnknown_02000008
_08015DEC: .4byte 0x00011D9F
_08015DF0: .4byte 0x00011D9E
_08015DF4: .4byte 0x000121B8
_08015DF8: .4byte 0x000121C0
_08015DFC: .4byte 0x000121C2
_08015E00: .4byte gUnknown_080C2A9C
_08015E04: .4byte 0x00001E41
_08015E08: .4byte 0x0000070C
_08015E0C:
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl sub_08016F68
_08015E18:
	bl sub_08001960
	bl sub_08005C4C
	ldr r0, _08015E48
	ldr r2, _08015E4C
	adds r4, r0, r2
	ldrh r0, [r4]
	cmp r0, #0x3c
	bne _08015E30
	bl sub_0800882C
_08015E30:
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #0x5a
	bls _08015E3A
	movs r1, #1
_08015E3A:
	adds r0, r1, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015E48: .4byte gGame
_08015E4C: .4byte 0x00005962
	.syntax divided
