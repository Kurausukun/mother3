	.syntax unified
	push {r4, r5, lr}
	bl sub_08004FB4
	ldr r0, _080159D0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldr r5, _080159D4
	ldr r0, _080159D8
	adds r3, r5, r0
	ldrb r2, [r3]
	lsls r0, r2, #0x1f
	ldr r4, _080159DC
	ldrb r1, [r4, #0xf]
	lsls r1, r1, #0x1f
	orrs r1, r0
	lsrs r1, r1, #0x1f
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r3, r0, #0x1f
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080159E0
	movs r0, #1
	b _080159E2
	.align 2, 0
_080159D0: .4byte gUnknown_02000008
_080159D4: .4byte gSomeBlend
_080159D8: .4byte 0x0001ED11
_080159DC: .4byte gGame
_080159E0:
	adds r0, r3, #0
_080159E2:
	ldr r4, _08015A40
	adds r2, r5, r4
	lsls r3, r0, #1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _08015A44
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r3, #4
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	ldr r4, _08015A48
	ldr r1, _08015A4C
	adds r5, r4, r1
	ldrh r0, [r5]
	ldr r2, _08015A50
	adds r1, r4, r2
	ldrh r1, [r1]
	ldr r3, _08015A54
	adds r2, r4, r3
	bl sub_08018F9C
	ldr r1, _08015A58
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r3, _08015A5C
	adds r4, r4, r3
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x40
	bl sub_08002E60
	strh r0, [r5]
	ldr r0, _08015A60
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015A40: .4byte 0x0001ED11
_08015A44: .4byte gSomeBlend
_08015A48: .4byte gGame
_08015A4C: .4byte 0x00005968
_08015A50: .4byte 0x0000596A
_08015A54: .4byte 0x0000596C
_08015A58: .4byte 0x00005962
_08015A5C: .4byte 0x00005960
_08015A60: .4byte gUnknown_02000008
	.syntax divided
