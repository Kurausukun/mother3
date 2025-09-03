	.syntax unified
sub_0801B498:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801B4BC
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _0801B4C0
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B4BC: .4byte gUnknown_09132B58
_0801B4C0: .4byte gGame
	.syntax divided
