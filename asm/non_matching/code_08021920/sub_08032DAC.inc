	.syntax unified
sub_08032DAC:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _08032DE4
	ldr r1, _08032DE8
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r5, _08032DEC
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r1, r0
	cmp r0, #0x7f
	bgt _08032DDE
	lsls r0, r1, #2
	ldr r1, _08032DF0
	adds r0, r0, r1
	strh r4, [r0]
	strb r3, [r0, #2]
	ldrh r1, [r2]
	strb r1, [r0, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08032DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032DE4: .4byte gSomeBlend
_08032DE8: .4byte 0x000121B0
_08032DEC: .4byte 0x000121B2
_08032DF0: .4byte gSceneObjBuffer
	.syntax divided
