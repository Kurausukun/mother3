	.syntax unified
sub_08022E8C:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08022EB8
	cmp r2, r0
	bls _08022EC8
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bhi _08022EC4
	ldr r0, _08022EBC
	lsls r1, r1, #2
	ldr r2, _08022EC0
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08022ECA
	.align 2, 0
_08022EB8: .4byte 0x0000FFEF
_08022EBC: .4byte gSomeBlend
_08022EC0: .4byte 0x00004AD0
_08022EC4:
	movs r0, #0
	b _08022ECA
_08022EC8:
	ldrh r0, [r1]
_08022ECA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
