	.syntax unified
sub_080AB98C:
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
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #3
	cmp r0, r1
	bne _080AB9BC
	movs r0, #0xae
	adds r1, r4, #0
	bl getMonsterSkill
	b _080ABA14
_080AB9BC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	movs r1, #3
	bl Remainder
	cmp r0, #0
	bne _080ABA00
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AB9FC
	cmp r1, #0x14
	blt _080AB9F4
	adds r0, #2
	cmp r1, #0x28
	bge _080AB9F4
	subs r0, #1
_080AB9F4:
	adds r1, r4, #0
	bl getMonsterSkill
	b _080ABA14
	.align 2, 0
_080AB9FC: .4byte 0x00000179
_080ABA00:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080ABA14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
