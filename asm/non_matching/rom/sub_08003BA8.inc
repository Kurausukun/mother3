	.syntax unified
sub_08003BA8:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bgt _08003BE0
	cmp r0, #2
	blt _08003BE0
	ldr r1, _08003BE8
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl MPlayStop
	ldr r1, _08003BEC
	adds r1, r4, r1
	ldr r0, _08003BF0
	adds r0, r4, r0
	ldrh r2, [r0]
	movs r3, #0
	strh r2, [r1]
	strh r3, [r0]
	ldr r0, _08003BF4
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
_08003BE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003BE8: .4byte gMPlayTable
_08003BEC: .4byte gUnknown_02015ED8
_08003BF0: .4byte gUnknown_02015EC0
_08003BF4: .4byte gUnknown_02015EF0
	.syntax divided
