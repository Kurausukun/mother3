	.syntax unified
sub_080AA09C:
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
	bgt _080AA0C0
	ldr r0, _080AA0BC
	b _080AA10C
	.align 2, 0
_080AA0BC: .4byte 0x000001F5
_080AA0C0:
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
	ldr r5, _080AA0E4
	cmp r0, r5
	bne _080AA0EC
	ldr r0, _080AA0E8
	b _080AA10C
	.align 2, 0
_080AA0E4: .4byte 0x00000191
_080AA0E8: .4byte 0x000001EF
_080AA0EC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA118
	cmp r0, #0x14
	blt _080AA10A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA10A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA10A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA10A:
	adds r0, r1, #0
_080AA10C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA118: .4byte 0x000001ED
	.syntax divided
