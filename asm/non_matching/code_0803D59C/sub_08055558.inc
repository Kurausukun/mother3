	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08055580
	lsrs r0, r0, #0xc
	adds r2, r0, r1
	ldr r0, _08055584
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bgt _0805558C
	ldr r0, _08055588
	adds r1, r2, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _0805558C
	movs r0, #0
	b _0805558E
	.align 2, 0
_08055580: .4byte gSomeBlend
_08055584: .4byte 0x0000C5CE
_08055588: .4byte 0x0000C5D0
_0805558C:
	ldrh r0, [r1]
_0805558E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
