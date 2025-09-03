	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _08058AF8
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08058A96
	bl sub_08058E04
_08058A96:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08058AA4
	ldrb r0, [r4, #4]
	bl sub_08058E34
_08058AA4:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08058AC0
	ldrb r0, [r4, #5]
	bl sub_08059404
	bl sub_08059C34
	ldr r0, _08058B00
	bl sub_08000E5C
	bl sub_08059E18
_08058AC0:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08058ACE
	ldrb r0, [r4, #4]
	bl sub_08058FE4
_08058ACE:
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08058ADA
	bl sub_08059094
_08058ADA:
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08058AE8
	ldrb r0, [r4, #6]
	bl sub_080590E4
_08058AE8:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08058AF4
	bl sub_0805875C
_08058AF4:
	movs r0, #0
	str r0, [r4]
_08058AF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058B00: .4byte gUnknown_02016078
	.syntax divided
