	.syntax unified
sub_08089AE4:
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08089AFE
	adds r6, r2, #0
	adds r6, #0x4e
	ldrh r0, [r6]
	cmp r0, #8
	bls _08089B08
_08089AFE:
	adds r0, r2, #0
	movs r1, #2
	bl sub_08089D7C
	b _08089B44
_08089B08:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r6]
	movs r1, #0x80
	movs r3, #8
	bl sub_08069558
	adds r5, r0, #0
	bl sub_0806B070
	movs r1, #3
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08089B3E
	adds r1, r5, #0
	bl setB__11BattleFaderUi
	adds r0, r4, #0
	adds r1, r5, #0
	bl setB2__11BattleFaderUi
	adds r0, r4, #0
	adds r1, r5, #0
	bl setB4__11BattleFaderUi
_08089B3E:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_08089B44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
