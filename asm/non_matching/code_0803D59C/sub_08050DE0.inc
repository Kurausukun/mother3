	.syntax unified
sub_08050DE0:
	push {lr}
	ldr r2, _08050E14
	ldr r0, _08050E18
	adds r1, r2, r0
	ldr r0, _08050E1C
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r1, r1, r0
	ldrh r0, [r2]
	cmp r0, #0x7f
	bhi _08050E0C
	movs r2, #0x80
	lsls r2, r2, #2
_08050DFE:
	str r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #8
	cmp r0, #0x7f
	bls _08050DFE
_08050E0C:
	bl sub_08050E20
	pop {r0}
	bx r0
	.align 2, 0
_08050E14: .4byte gSomeBlend
_08050E18: .4byte 0x0000C620
_08050E1C: .4byte 0x00002C98
	.syntax divided
