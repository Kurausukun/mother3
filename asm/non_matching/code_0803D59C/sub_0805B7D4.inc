	.syntax unified
sub_0805B7D4:
	push {lr}
	ldr r1, _0805B7E4
	ldrb r0, [r1]
	cmp r0, #2
	bne _0805B7E8
_0805B7DE:
	movs r0, #0
	b _0805B80C
	.align 2, 0
_0805B7E4: .4byte gEncounter
_0805B7E8:
	cmp r0, #1
	bne _0805B808
	ldrb r0, [r1, #6]
	cmp r0, #1
	beq _0805B808
	ldr r0, _0805B804
	ldrh r1, [r1, #0xa]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #7]
	cmp r0, #1
	bne _0805B7DE
	movs r0, #2
	b _0805B80C
	.align 2, 0
_0805B804: .4byte gBattleGroupTable
_0805B808:
	bl sub_0805B810
_0805B80C:
	pop {r1}
	bx r1
	.syntax divided
