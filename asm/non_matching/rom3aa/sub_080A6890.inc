	.syntax unified
sub_080A6890:
	push {r4, r5, r6, lr}
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
	ldr r6, _080A68D4
	cmp r0, r6
	beq _080A68D0
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
	ldr r5, _080A68D8
	cmp r0, r5
	bne _080A68E0
_080A68D0:
	ldr r0, _080A68DC
	b _080A68F8
	.align 2, 0
_080A68D4: .4byte 0x0000026E
_080A68D8: .4byte 0x00000266
_080A68DC: .4byte 0x00000265
_080A68E0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A6904
	cmp r1, #0x3c
	blt _080A68F8
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A68F8
	adds r0, r6, #0
_080A68F8:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6904: .4byte 0x00000265
	.syntax divided
