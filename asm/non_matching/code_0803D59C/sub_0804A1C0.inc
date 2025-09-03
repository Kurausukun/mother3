	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r5, _0804A208
	ldr r0, _0804A20C
	adds r2, r5, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, r1
	beq _0804A202
	strb r1, [r2]
	ldr r0, _0804A210
	bl sub_0800289C
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_08001B18
	ldr r0, _0804A214
	adds r1, r5, r0
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
_0804A202:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A208: .4byte gSomeBlend
_0804A20C: .4byte 0x00004262
_0804A210: .4byte gMenuData
_0804A214: .4byte 0x00002C94
	.syntax divided
