	.syntax unified
sub_08015F50:
	push {r4, r5, r6, lr}
	ldr r6, _08015FB0
	ldrh r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r6, #8]
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r4, _08015FB4
	ldr r0, _08015FB8
	adds r5, r4, r0
	ldrh r0, [r5]
	movs r1, #7
	bl sub_080193CC
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _08015FBC
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r0, _08015FC0
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _08015FC8
	ldr r1, _08015FC4
	adds r3, r6, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015FCA
	.align 2, 0
_08015FB0: .4byte gSomeBlend
_08015FB4: .4byte gGame
_08015FB8: .4byte 0x00005968
_08015FBC: .4byte 0x00005962
_08015FC0: .4byte 0x00005960
_08015FC4: .4byte 0x0001ED10
_08015FC8:
	movs r0, #1
_08015FCA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
