	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _080115B8
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	blt _080115B0
	movs r5, #8
	ldrsh r0, [r2, r5]
	cmp r0, #7
	bgt _0801159E
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #2]
	movs r0, #0
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #0x1e
	bl sub_080115C4
_0801159E:
	ldr r1, _080115BC
	adds r0, r4, #1
	lsls r0, r0, #1
	ldr r2, _080115C0
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_080115B0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080115B8: .4byte gUnknown_0200B4B0
_080115BC: .4byte gSomeBlend
_080115C0: .4byte 0x00002C90
	.syntax divided
