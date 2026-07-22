	.syntax unified
sub_080A9748:
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
	bne _080A977C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A9778
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #1
	b _080A97B8
	.align 2, 0
_080A9778: .4byte 0x000001C5
_080A977C:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A97A8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A97A0
	cmp r1, #0xf
	blt _080A97BA
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A97BA
	ldr r0, _080A97A4
	b _080A97BA
	.align 2, 0
_080A97A0: .4byte 0x00000113
_080A97A4: .4byte 0x000001D9
_080A97A8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A97C8
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #0xc6
_080A97B8:
	adds r0, r1, #0
_080A97BA:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A97C8: .4byte 0x000001D9
	.syntax divided
