	.syntax unified
sub_080A8318:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A834A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A834A
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080A83D6
_080A834A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A836C
	cmp r0, r5
	bne _080A8374
	ldr r0, _080A8370
	b _080A83D6
	.align 2, 0
_080A836C: .4byte 0x00000191
_080A8370: .4byte 0x000001EF
_080A8374:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A83B8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A83B0
	cmp r1, #0x28
	blt _080A83D6
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A83D6
	ldr r0, _080A83B4
	b _080A83D6
	.align 2, 0
_080A83B0: .4byte 0x000001ED
_080A83B4: .4byte 0x00000242
_080A83B8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A83E4
	cmp r0, #0x1e
	blt _080A83D4
	adds r1, #0x55
	cmp r0, #0x3c
	blt _080A83D4
	adds r1, #1
	cmp r0, #0x50
	bge _080A83D4
	adds r1, r5, #0
_080A83D4:
	adds r0, r1, #0
_080A83D6:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A83E4: .4byte 0x000001ED
	.syntax divided
