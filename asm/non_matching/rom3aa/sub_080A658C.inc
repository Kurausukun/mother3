	.syntax unified
sub_080A658C:
	push {r4, r5, lr}
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
	bgt _080A65B0
	ldr r0, _080A65AC
	b _080A660E
	.align 2, 0
_080A65AC: .4byte 0x000001A9
_080A65B0:
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
	ldr r5, _080A65E8
	cmp r0, r5
	bne _080A65F0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A65EC
	cmp r1, #0x1e
	blt _080A660E
	adds r0, #6
	cmp r1, #0x41
	bge _080A660E
	subs r0, #3
	b _080A660E
	.align 2, 0
_080A65E8: .4byte 0x00000269
_080A65EC: .4byte 0x00000265
_080A65F0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A661C
	cmp r0, #0xf
	blt _080A660C
	adds r1, #3
	cmp r0, #0x23
	blt _080A660C
	adds r1, #3
	cmp r0, #0x50
	bge _080A660C
	adds r1, r5, #0
_080A660C:
	adds r0, r1, #0
_080A660E:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A661C: .4byte 0x00000265
	.syntax divided
