	.syntax unified
sub_080AD004:
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
	bge _080AD050
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AD04C
	ldr r0, _080AD048
	b _080AD068
	.align 2, 0
_080AD048: .4byte 0x00000103
_080AD04C:
	movs r0, #0xfd
	b _080AD068
_080AD050:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x4b
	blt _080AD068
	movs r0, #0xe6
	cmp r1, #0x5a
	bge _080AD068
	movs r0, #0x3f
_080AD068:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
