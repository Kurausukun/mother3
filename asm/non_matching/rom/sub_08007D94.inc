	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08007DE4
	lsls r0, r0, #2
	ldr r1, _08007DA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007DA8: .4byte _08007DAC
_08007DAC:
	.4byte _08007DC0
	.4byte _08007DC0
	.4byte _08007DD0
	.4byte _08007DC0
	.4byte _08007DC0
_08007DC0:
	ldr r1, _08007DCC
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xff
	b _08007DD8
	.align 2, 0
_08007DCC: .4byte gSomeBlend
_08007DD0:
	ldr r1, _08007DE8
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xbf
_08007DD8:
	strh r0, [r1]
	ldrh r0, [r1, #2]
	strh r2, [r1, #2]
	ldrh r0, [r1, #4]
	movs r0, #0xf
	strh r0, [r1, #4]
_08007DE4:
	pop {r0}
	bx r0
	.align 2, 0
_08007DE8: .4byte gSomeBlend
	.syntax divided
