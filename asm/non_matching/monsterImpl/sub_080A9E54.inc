	.syntax unified
sub_080A9E54:
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
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A9EA8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x2d
	blt _080A9EC0
	ldr r0, _080A9EA4
	cmp r1, #0x46
	bge _080A9EC0
	movs r0, #0xfe
	b _080A9EC0
	.align 2, 0
_080A9EA4: .4byte 0x0000020D
_080A9EA8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x37
	blt _080A9EC0
	movs r0, #0xfe
	cmp r1, #0x41
	bge _080A9EC0
	movs r0, #0x89
_080A9EC0:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
