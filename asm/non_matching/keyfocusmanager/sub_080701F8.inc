	.syntax unified
sub_080701F8:
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _08070248
	ldr r2, _0807023C
	ldr r3, [r0, #0x24]
	ldr r1, _08070240
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	bne _08070248
	ldr r0, [r3]
	ldr r1, [r0, #4]
	cmp r1, #0
	bge _08070248
	ldr r0, _08070244
	ands r1, r0
	cmp r1, #0
	beq _08070248
	movs r0, #1
	b _0807024A
	.align 2, 0
_0807023C: .4byte gUnknown_02001F28
_08070240: .4byte gMPlayTable
_08070244: .4byte 0x0000FFFF
_08070248:
	movs r0, #0
_0807024A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
