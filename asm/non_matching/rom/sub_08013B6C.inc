	.syntax unified
sub_08013B6C:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _08013BD0
	ldr r1, _08013BD4
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	bne _08013C40
	ldr r0, _08013BD8
	adds r6, r2, r0
	movs r7, #0
	ldr r1, _08013BDC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013C40
	ldr r0, _08013BDC
	adds r5, r2, r0
_08013B98:
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08013C28
	ldr r4, [r6, #0x20]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08013BBA
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013C28
_08013BBA:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08013BFA
	cmp r0, #1
	bgt _08013BE0
	cmp r0, #0
	beq _08013BE6
	b _08013C28
	.align 2, 0
_08013BD0: .4byte gGame
_08013BD4: .4byte 0x000067C4
_08013BD8: .4byte 0x000065BC
_08013BDC: .4byte 0x000065E0
_08013BE0:
	cmp r0, #2
	beq _08013C0E
	b _08013C28
_08013BE6:
	ldrh r1, [r4]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	bl sub_08003408
	b _08013C28
_08013BFA:
	ldrh r1, [r4]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	bl sub_080034C8
	b _08013C28
_08013C0E:
	adds r1, r4, #0
	adds r1, #0xc
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4]
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x1c
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08013C48
_08013C28:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x28
	adds r6, #0x28
	cmp r7, #0xb
	bhi _08013C40
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013B98
_08013C40:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
