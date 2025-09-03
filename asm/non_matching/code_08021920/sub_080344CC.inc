	.syntax unified
sub_080344CC:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, _080344E4
	ldrh r0, [r4]
	cmp r0, #0
	beq _080344EC
	subs r0, #1
	strh r0, [r4]
	ldr r1, _080344E8
	b _08034536
	.align 2, 0
_080344E4: .4byte gUnknown_02001010
_080344E8: .4byte gUnknown_02001012
_080344EC:
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl sub_08002FD4
	adds r0, #0x1e
	strh r0, [r4]
	ldr r1, _08034520
	ldr r0, _08034524
	ldr r2, _08034528
	adds r0, r0, r2
	ldr r0, [r0]
	movs r4, #1
	ands r0, r4
	strh r0, [r1]
	bl sub_080030A4
	ands r0, r4
	cmp r0, #0
	beq _08034530
	ldr r1, _0803452C
	movs r0, #7
	b _08034534
	.align 2, 0
_08034520: .4byte gUnknown_02001014
_08034524: .4byte gGame
_08034528: .4byte 0x00009D10
_0803452C: .4byte gUnknown_02001012
_08034530:
	ldr r1, _08034558
	movs r0, #3
_08034534:
	strh r0, [r1]
_08034536:
	ldrh r0, [r1]
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldr r0, _0803455C
	ldrh r0, [r0]
	cmp r0, #0
	beq _08034568
	ldr r0, _08034560
	ldr r1, _08034564
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	b _08034572
	.align 2, 0
_08034558: .4byte gUnknown_02001012
_0803455C: .4byte gUnknown_02001014
_08034560: .4byte gGame
_08034564: .4byte 0x00009D10
_08034568:
	ldr r0, _080345A4
	ldr r2, _080345A8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #3
_08034572:
	ands r0, r1
	cmp r0, #0
	bne _0803459A
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl sub_08035384
_0803459A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080345A4: .4byte gGame
_080345A8: .4byte 0x00009D10
	.syntax divided
