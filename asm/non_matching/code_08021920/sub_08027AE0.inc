	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _08027B70
	ldr r1, _08027B74
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_08003E20
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08027B78
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_08003E20
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_08027B84
	movs r0, #1
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	adds r2, r5, #0
	movs r3, #2
	bl sub_08027B84
	ldr r1, _08027B7C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08027B68
	ldr r1, _08027B80
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_08003E20
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #5
	adds r1, r4, #0
	bl sub_08003C88
	movs r0, #5
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #5
	adds r2, r4, #0
	movs r3, #2
	bl sub_08027B84
_08027B68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027B70: .4byte gGame
_08027B74: .4byte 0x0000847E
_08027B78: .4byte 0x00008480
_08027B7C: .4byte 0x0000829B
_08027B80: .4byte 0x00008482
	.syntax divided
