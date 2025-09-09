	.syntax unified
sub_080A66BC:
	push {r4, r5, r6, lr}
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
	cmp r0, #0
	bgt _080A66E0
	ldr r0, _080A66DC
	b _080A678C
	.align 2, 0
_080A66DC: .4byte 0x000001A9
_080A66E0:
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
	ldr r5, _080A671C
	cmp r0, r5
	bne _080A6724
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6720
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	subs r1, #1
	cmp r0, #0x46
	bge _080A678A
	adds r1, #8
	b _080A678A
	.align 2, 0
_080A671C: .4byte 0x0000026A
_080A6720: .4byte 0x00000265
_080A6724:
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
	ldr r6, _080A6760
	cmp r0, r6
	bne _080A6768
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6764
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	adds r1, #4
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r5, #0
	b _080A678A
	.align 2, 0
_080A6760: .4byte 0x00000266
_080A6764: .4byte 0x00000265
_080A6768:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6798
	cmp r0, #0xf
	blt _080A678A
	adds r1, #2
	cmp r0, #0x32
	blt _080A678A
	adds r1, r5, #0
	cmp r0, #0x41
	blt _080A678A
	ldr r1, _080A679C
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r6, #0
_080A678A:
	adds r0, r1, #0
_080A678C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6798: .4byte 0x00000265
_080A679C: .4byte 0x0000026B
	.syntax divided
