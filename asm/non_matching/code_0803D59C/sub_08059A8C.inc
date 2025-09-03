	.syntax unified
sub_08059A8C:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08059AF0
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_080585F8
	adds r0, r4, #4
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0xa]
	bl sub_08059B88
	bl sub_08001960
	bl sub_08058790
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	movs r0, #0x90
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #8]
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	movs r0, #0x60
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08059AF8
	ldr r0, _08059AF4
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #1
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08059AFA
	.align 2, 0
_08059AF0: .4byte gSomeBlend
_08059AF4: .4byte 0x00004814
_08059AF8:
	movs r0, #1
_08059AFA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
