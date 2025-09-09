	.syntax unified
sub_080AC044:
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
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC070
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC070:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC098
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC098:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AC0B8
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _080AC0B8
	ldr r0, _080AC0B4
	b _080AC1A4
	.align 2, 0
_080AC0B4: .4byte 0x000001DF
_080AC0B8:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080AC120
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC102
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xee
	lsls r1, r1, #1
	cmp r0, #0x2d
	bge _080AC1A2
	subs r1, #1
	b _080AC1A2
_080AC102:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC11C
	cmp r1, #0x28
	blt _080AC1A4
	adds r0, #3
	cmp r1, #0x5a
	bge _080AC1A4
	subs r0, #2
	b _080AC1A4
	.align 2, 0
_080AC11C: .4byte 0x000001DB
_080AC120:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bgt _080AC13E
	movs r0, #0xf0
	lsls r0, r0, #1
	b _080AC1A4
_080AC13E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC180
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC17C
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x23
	blt _080AC1A2
	adds r1, #5
	cmp r0, #0x4b
	bge _080AC1A2
	subs r1, #4
	b _080AC1A2
	.align 2, 0
_080AC17C: .4byte 0x000001DB
_080AC180:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC1B0
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x1e
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x46
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x5a
	bge _080AC1A2
	adds r1, #3
_080AC1A2:
	adds r0, r1, #0
_080AC1A4:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC1B0: .4byte 0x000001DB
	.syntax divided
