	.syntax unified
	push {r4, r5, r6, lr}
	bl sub_08026DA8
	ldr r0, _08026C48
	ldr r1, _08026C4C
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r1, _08026C50
	ldrb r0, [r1]
	cmp r0, #0
	beq _08026C54
	cmp r0, #1
	beq _08026C5E
	b _08026C6C
	.align 2, 0
_08026C48: .4byte gGame
_08026C4C: .4byte 0x00008490
_08026C50: .4byte gEncounter
_08026C54:
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
	b _08026C6C
_08026C5E:
	ldrh r0, [r1, #0xa]
	cmp r0, #0x23
	bne _08026C6C
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
_08026C6C:
	ldr r0, _08026C80
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	beq _08026CCA
	cmp r1, #1
	bgt _08026C84
	cmp r1, #0
	beq _08026C88
	b _08026CCA
	.align 2, 0
_08026C80: .4byte gEncounter
_08026C84:
	cmp r1, #3
	bne _08026CCA
_08026C88:
	movs r4, #0
	ldrb r0, [r2, #5]
	cmp r4, r0
	bhs _08026CCA
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08026CCA
	adds r6, r2, #0
	adds r5, r1, #0
_08026CA0:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08033620
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #5]
	cmp r4, r1
	bhs _08026CCA
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026CA0
_08026CCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
