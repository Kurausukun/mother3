	.syntax unified
sub_080AAB98:
	push {r4, lr}
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
	cmp r0, #0x8d
	bne _080AAC0E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AABEC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080AAC6E
	adds r0, #2
	cmp r1, #0x50
	bge _080AAC6E
	subs r0, #1
	b _080AAC6E
_080AABEC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #0x50
	cmp r0, #0x50
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC0E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AAC48
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x46
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC48:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x50
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	ldr r1, _080AAC7C
_080AAC6C:
	adds r0, r1, #0
_080AAC6E:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAC7C: .4byte 0x000001CD
	.syntax divided
