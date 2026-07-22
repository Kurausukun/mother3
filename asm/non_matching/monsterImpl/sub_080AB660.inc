	.syntax unified
sub_080AB660:
	push {r4, lr}
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
	cmp r0, #0x4e
	bne _080AB694
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x2c
	cmp r0, #0x3c
	bge _080AB690
	movs r1, #0x73
_080AB690:
	adds r0, r1, #0
	b _080AB6AC
_080AB694:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x73
	cmp r1, #0x23
	blt _080AB6AC
	movs r0, #0x4e
	cmp r1, #0x3c
	bge _080AB6AC
	movs r0, #0x2c
_080AB6AC:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
