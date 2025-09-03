	.syntax unified
sub_08058C54:
	push {r4, r5, r6, lr}
	ldr r5, _08058CCC
	ldrb r1, [r5, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5, #0x12]
	movs r6, #0
	str r6, [r5, #8]
	ldr r4, _08058CD0
	ldr r0, _08058CD4
	adds r3, r4, r0
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #1]
	ands r2, r0
	strb r2, [r5, #1]
	ldr r1, _08058CD8
	adds r0, r4, r1
	str r6, [r0]
	adds r0, r4, #0
	bl sub_080013D0
	adds r6, r4, #0
	adds r6, #0x50
	adds r0, r6, #0
	bl sub_08001454
	ldr r1, _08058CDC
	adds r0, r4, r1
	movs r1, #2
	bl sub_08001630
	adds r0, r4, #0
	bl sub_08058CE4
	adds r0, r6, #0
	bl sub_08058D4C
	adds r5, #4
	adds r0, r5, #0
	bl sub_08058D94
	ldr r0, _08058CE0
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08058DA0
	bl sub_08058D74
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058CCC: .4byte gUnknown_02015DC0
_08058CD0: .4byte gSomeBlend
_08058CD4: .4byte 0x00004814
_08058CD8: .4byte 0x0000328C
_08058CDC: .4byte 0x00002CA0
_08058CE0: .4byte 0x00002D4C
	.syntax divided
