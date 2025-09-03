	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08019F38
	adds r0, r5, #0
	movs r1, #0x2c
	bl sub_0800289C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08090F88
	adds r0, r5, #0
	movs r1, #0x2d
	bl sub_0800289C
	movs r1, #0
	movs r2, #0x40
	bl sub_08016F4C
	adds r4, #0x2e
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800289C
	bl sub_08019F44
	ldr r0, _08019F3C
	ldr r1, _08019F40
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019F38: .4byte gUnknown_09AF3790
_08019F3C: .4byte gSomeBlend
_08019F40: .4byte 0x00002C96
	.syntax divided
