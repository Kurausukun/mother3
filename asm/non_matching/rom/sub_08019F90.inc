	.syntax unified
sub_08019F90:
	push {r4, lr}
	ldr r0, _08019FCC
	ldr r1, _08019FD0
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08019FD4
	adds r0, r0, r1
	ldr r2, _08019FD8
	ldrh r3, [r0, #2]
	ldr r4, _08019FDC
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #4]
	adds r4, #2
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #6]
	adds r4, #2
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r0, [r0, #8]
	ldr r1, _08019FE0
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019FCC: .4byte gGame
_08019FD0: .4byte 0x000067AC
_08019FD4: .4byte gTownMapInfoTable
_08019FD8: .4byte gSomeBlend
_08019FDC: .4byte 0x00003678
_08019FE0: .4byte 0x0000367E
	.syntax divided
