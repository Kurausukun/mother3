	.syntax unified
sub_080A63B8:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6410
	cmp r0, r1
	bne _080A6408
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6414
	cmp r0, #0xf
	blt _080A63FC
	adds r1, #2
	cmp r0, #0x32
	blt _080A63FC
	adds r1, #3
	cmp r0, #0x41
	blt _080A63FC
	adds r1, #1
	cmp r0, #0x4b
	bge _080A63FC
	subs r1, #5
_080A63FC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A6408:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6410: .4byte 0x01A90000
_080A6414: .4byte 0x00000265
	.syntax divided
