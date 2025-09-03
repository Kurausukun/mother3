	.syntax unified
sub_08022E50:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08022E70
	cmp r2, r0
	bls _08022E7E
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08022E74
	movs r0, #0
	b _08022E80
	.align 2, 0
_08022E70: .4byte 0x0000FFEF
_08022E74:
	ldr r0, _08022E84
	lsls r1, r1, #2
	ldr r2, _08022E88
	adds r0, r0, r2
	adds r1, r1, r0
_08022E7E:
	ldrh r0, [r1]
_08022E80:
	pop {r1}
	bx r1
	.align 2, 0
_08022E84: .4byte gSomeBlend
_08022E88: .4byte 0x00004AD0
	.syntax divided
