	.syntax unified
sub_080AC2A0:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC2D0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #7
	cmp r0, #0x41
	bge _080AC2CC
	movs r1, #0xd7
_080AC2CC:
	adds r0, r1, #0
	b _080AC2EA
_080AC2D0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC2F8
	cmp r1, #0x28
	blt _080AC2EA
	movs r0, #0x99
	lsls r0, r0, #2
	cmp r1, #0x4b
	bge _080AC2EA
	subs r0, #1
_080AC2EA:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC2F8: .4byte 0x00000101
	.syntax divided
