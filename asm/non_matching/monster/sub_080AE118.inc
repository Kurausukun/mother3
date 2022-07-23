    .syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080AE190
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AE176
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #9
	cmp r0, #0x14
	blt _080AE1C6
	movs r1, #0x11
	cmp r0, #0x37
	blt _080AE1C6
	movs r1, #0x99
	cmp r0, #0x3c
	bge _080AE1C6
	movs r1, #0xe3
	b _080AE1C6
_080AE176:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #9
	cmp r1, #0x14
	blt _080AE1C8
	movs r0, #0x99
	cmp r1, #0x37
	bge _080AE1C8
	movs r0, #0x11
	b _080AE1C8
_080AE190:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AE1B6
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #9
	cmp r1, #0x23
	blt _080AE1C8
	movs r0, #0xe3
	cmp r1, #0x55
	bge _080AE1C8
	movs r0, #0x11
	b _080AE1C8
_080AE1B6:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x11
	cmp r0, #0x23
	bge _080AE1C6
	movs r1, #9
_080AE1C6:
	adds r0, r1, #0
_080AE1C8:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
    .syntax divided
