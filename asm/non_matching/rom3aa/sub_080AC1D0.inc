	.syntax unified
sub_080AC1D0:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AC200
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x4d
	cmp r0, #0x3c
	bge _080AC1FC
	movs r1, #0x1d
_080AC1FC:
	adds r0, r1, #0
	b _080AC202
_080AC200:
	movs r0, #0xc0
_080AC202:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
