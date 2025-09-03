	.syntax unified
sub_0801685C:
	push {r4, r5, r6, r7, lr}
	ldr r7, _080168C4
	ldrh r1, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r7, #8]
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r4, _080168C8
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080195B0
	bl sub_08001960
	bl sub_08005C4C
	subs r6, r4, #2
	ldrh r2, [r6]
	subs r5, r4, #4
	ldrh r3, [r5]
	movs r0, #0x90
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #0xa]
	ldrh r2, [r6]
	ldrh r3, [r5]
	movs r0, #0x60
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080168D0
	ldr r0, _080168CC
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _080168D2
	.align 2, 0
_080168C4: .4byte gSomeBlend
_080168C8: .4byte gUnknown_0200B564
_080168CC: .4byte 0x0001ED10
_080168D0:
	movs r0, #1
_080168D2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
