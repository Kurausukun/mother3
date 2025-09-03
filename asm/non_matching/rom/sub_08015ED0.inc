	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r7, _08015F30
	ldrh r1, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r7, #8]
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r4, _08015F34
	ldr r0, _08015F38
	adds r6, r4, r0
	ldrh r0, [r6]
	movs r1, #3
	bl sub_080193CC
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _08015F3C
	adds r5, r4, r2
	ldrh r2, [r5]
	ldr r0, _08015F40
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r6]
	ldrh r0, [r5]
	ldrh r4, [r4]
	cmp r0, r4
	bhi _08015F48
	ldr r2, _08015F44
	adds r3, r7, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015F4A
	.align 2, 0
_08015F30: .4byte gSomeBlend
_08015F34: .4byte gGame
_08015F38: .4byte 0x00005968
_08015F3C: .4byte 0x00005962
_08015F40: .4byte 0x00005960
_08015F44: .4byte 0x0001ED10
_08015F48:
	movs r0, #1
_08015F4A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
