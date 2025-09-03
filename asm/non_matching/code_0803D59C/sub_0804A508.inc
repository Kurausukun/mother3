	.syntax unified
	push {r4, r5, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0804A544
	bl sub_0800289C
	adds r5, r0, #0
	ldr r4, _0804A548
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, #0
	bl sub_08001B18
	ldr r0, _0804A54C
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A544: .4byte gMenuData
_0804A548: .4byte gUnknown_02016078
_0804A54C: .4byte 0x00002C46
	.syntax divided
