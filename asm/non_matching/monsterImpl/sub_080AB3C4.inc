	.syntax unified
sub_080AB3C4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x83
	bl sub_08072E38
	adds r2, r0, #0
	cmp r2, #0
	beq _080AB3F2
	ldr r1, [r2, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x45
	bgt _080AB3F2
	movs r0, #0x91
	lsls r0, r0, #1
	b _080AB40A
_080AB3F2:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AB418
	cmp r1, #0x37
	blt _080AB40A
	adds r0, #0x72
	cmp r1, #0x41
	bge _080AB40A
	movs r0, #0xca
_080AB40A:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB418: .4byte 0x00000127
	.syntax divided
