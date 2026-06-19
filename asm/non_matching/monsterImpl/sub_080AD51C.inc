	.syntax unified
sub_080AD51C:
	push {r4, r5, lr}
	adds r4, r0, #0
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
	ldr r5, _080AD544
	cmp r0, r5
	bne _080AD548
	movs r0, #0xa2
	lsls r0, r0, #1
	b _080AD55C
	.align 2, 0
_080AD544: .4byte 0x00000143
_080AD548:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa2
	lsls r1, r1, #1
	cmp r0, #0x46
	bge _080AD55A
	adds r1, r5, #0
_080AD55A:
	adds r0, r1, #0
_080AD55C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
