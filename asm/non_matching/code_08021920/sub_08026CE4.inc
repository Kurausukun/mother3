	.syntax unified
sub_08026CE4:
	push {r4, r5, r6, lr}
	bl sub_08026DA8
	ldr r0, _08026D04
	ldr r1, _08026D08
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldr r1, _08026D0C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08026D10
	cmp r0, #1
	beq _08026D1A
	b _08026D28
	.align 2, 0
_08026D04: .4byte gGame
_08026D08: .4byte 0x00008490
_08026D0C: .4byte gEncounter
_08026D10:
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
	b _08026D28
_08026D1A:
	ldrh r0, [r1, #0xa]
	cmp r0, #0x23
	bne _08026D28
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
_08026D28:
	ldr r1, _08026D60
	ldrb r0, [r1]
	cmp r0, #1
	bgt _08026DA2
	cmp r0, #0
	blt _08026DA2
	movs r4, #0
	ldrb r0, [r1, #5]
	cmp r4, r0
	bhs _08026DA2
	adds r2, r1, #0
	adds r2, #0x52
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08026DA2
	adds r5, r1, #0
	adds r6, r2, #0
_08026D4C:
	adds r0, r5, #0
	adds r0, #0x3d
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026D64
	cmp r0, #1
	beq _08026D78
	b _08026D8A
	.align 2, 0
_08026D60: .4byte gEncounter
_08026D64:
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08033620
	b _08026D8A
_08026D78:
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08033620
_08026D8A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r5, #5]
	cmp r4, r1
	bhs _08026DA2
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026D4C
_08026DA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
