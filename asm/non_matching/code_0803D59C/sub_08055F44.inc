	.syntax unified
sub_08055F44:
	push {r4, r5, r6, lr}
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl sub_08002FD4
	ldr r3, _08055FAC
	ldr r1, _08055FB0
	adds r4, r3, r1
	movs r6, #0
	strb r0, [r4]
	ldrb r1, [r4]
	lsls r1, r1, #2
	ldr r2, _08055FB4
	adds r1, r1, r2
	ldrb r2, [r1, #3]
	ldr r5, _08055FB8
	adds r1, r3, r5
	strb r2, [r1]
	ldr r2, _08055FBC
	adds r1, r3, r2
	strb r6, [r1]
	ldr r5, _08055FC0
	ldrb r2, [r4]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrb r2, [r1]
	ldr r4, _08055FC4
	adds r1, r3, r4
	strb r2, [r1]
	ldr r5, _08055FC8
	adds r4, r3, r5
	ldrb r1, [r4]
	movs r2, #8
	orrs r1, r2
	strb r1, [r4]
	ldr r2, _08055FCC
	adds r1, r3, r2
	strb r0, [r1]
	ldr r4, _08055FD0
	adds r3, r3, r4
	strb r6, [r3]
	bl setup_battle_music
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055FAC: .4byte gSomeBlend
_08055FB0: .4byte 0x0000C5B0
_08055FB4: .4byte gUnknown_080C714C
_08055FB8: .4byte 0x0000C5B1
_08055FBC: .4byte 0x0000C5B2
_08055FC0: .4byte gUnknown_080C7158
_08055FC4: .4byte 0x0000C5B3
_08055FC8: .4byte 0x0000C5B5
_08055FCC: .4byte 0x0000C5C1
_08055FD0: .4byte 0x0000C5C2
	.syntax divided
