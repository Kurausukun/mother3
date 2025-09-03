	.syntax unified
	push {lr}
	ldr r1, _0805600C
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	bl sub_080037F0
	movs r0, #0
	bl sub_08003B58
	movs r0, #1
	bl sub_08003B58
	ldr r2, _08056010
	ldr r0, _08056014
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	ldr r0, _08056018
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	bl sub_080038A4
	pop {r0}
	bx r0
	.align 2, 0
_0805600C: .4byte gUnknown_03004B00
_08056010: .4byte gMonsterData
_08056014: .4byte gEncounter
_08056018: .4byte 0xFFFFFF00
	.syntax divided
