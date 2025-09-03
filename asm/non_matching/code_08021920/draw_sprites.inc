	.syntax unified
	push {r4, r5, lr}
	ldr r0, _0803073C
	ldr r1, _08030740
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x95
	bne _08030748
	ldr r1, _08030744
	movs r2, #0xe
	rsbs r2, r2, #0
	b _0803074E
	.align 2, 0
_0803073C: .4byte gGame
_08030740: .4byte 0x000067AC
_08030744: .4byte gUnknown_02001008
_08030748:
	ldr r1, _08030768
	movs r2, #0x10
	rsbs r2, r2, #0
_0803074E:
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0803076C
	ldr r1, _08030770
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _08030774
	bl sub_080307DC
	b _080307BA
	.align 2, 0
_08030768: .4byte gUnknown_02001008
_0803076C: .4byte gSomeBlend
_08030770: .4byte 0x0000566C
_08030774:
	ldrh r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r3, #8]
	orrs r0, r1
	strh r0, [r3, #8]
	ldr r0, _080307C0
	bl sub_0801A530
	ldr r4, _080307C4
	ldr r1, _080307C8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803079E
	ldr r2, _080307CC
	adds r0, r4, r2
	bl sub_08030810
_0803079E:
	ldr r1, _080307D0
	adds r0, r4, r1
	bl sub_08030A00
	ldr r2, _080307D4
	adds r0, r4, r2
	bl sub_08030B70
	ldr r1, _080307D8
	adds r0, r4, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_0803699C
_080307BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080307C0: .4byte gUnknown_02001004
_080307C4: .4byte gGame
_080307C8: .4byte 0x000082B6
_080307CC: .4byte 0x00007C18
_080307D0: .4byte 0x000082BC
_080307D4: .4byte 0x00005990
_080307D8: .4byte 0x000067A8
	.syntax divided
