	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027A14
	ldrb r0, [r5, #4]
	ldrb r1, [r5, #6]
	ldrh r2, [r5, #2]
	ldrh r3, [r5]
	bl sub_08002E60
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #7]
	ldrh r2, [r5, #2]
	ldrh r3, [r5]
	bl sub_08002E60
	lsls r0, r0, #0x10
	ldr r2, _08027A1C
	ldr r1, _08027A20
	lsrs r0, r0, #8
	orrs r4, r0
	ldr r0, _08027A24
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r3, #0
	strh r4, [r1]
	ldrh r0, [r1]
	ldrh r1, [r2, #2]
	strh r0, [r2, #2]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	cmp r0, r1
	bls _08027A14
	ldrb r1, [r5, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #8]
	strb r3, [r5, #4]
	strb r3, [r5, #5]
	strb r3, [r5, #6]
	strb r3, [r5, #7]
_08027A14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027A1C: .4byte gSomeBlend
_08027A20: .4byte gGame
_08027A24: .4byte 0x0000679E
	.syntax divided
