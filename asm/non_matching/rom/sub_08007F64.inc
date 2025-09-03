	.syntax unified
	push {r4, r5, r6, lr}
	ldr r5, _08007FB0
	ldr r1, _08007FB4
	adds r0, r5, r1
	ldrb r4, [r0]
	lsls r4, r4, #2
	ldr r0, _08007FB8
	adds r4, r4, r0
	ldr r6, _08007FBC
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_0800289C
	ldr r1, _08007FC0
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r1, [r4, #1]
	adds r0, r6, #0
	bl sub_0800289C
	ldr r1, _08007FC4
	adds r5, r5, r1
	ldrb r1, [r5]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0xd
	movs r2, #0x20
	bl sub_08016F4C
	movs r0, #0xd
	movs r1, #1
	bl sub_0803B688
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007FB0: .4byte gSomeBlend
_08007FB4: .4byte 0x000121C0
_08007FB8: .4byte gUnknown_080C2A90
_08007FBC: .4byte gUnknown_09B0CA54
_08007FC0: .4byte 0x0600F000
_08007FC4: .4byte 0x000121C1
	.syntax divided
