	.syntax unified
	push {lr}
	sub sp, #4
	ldr r0, _08044630
	ldr r1, _08044634
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _080446D4
	lsls r0, r0, #2
	ldr r1, _08044638
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044630: .4byte gSomeBlend
_08044634: .4byte 0x00004260
_08044638: .4byte _0804463C
_0804463C:
	.4byte _080446D4
	.4byte _080446D4
	.4byte _080446D4
	.4byte _0804466C
	.4byte _080446D4
	.4byte _08044676
	.4byte _08044676
	.4byte _080446AC
	.4byte _0804466C
	.4byte _0804466C
	.4byte _0804466C
	.4byte _0804466C
_0804466C:
	movs r0, #0x8c
	movs r1, #4
	bl sub_080457D0
	b _080446D4
_08044676:
	ldr r0, _080446A0
	ldr r1, _080446A4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x1e
	bl Divide
	movs r3, #1
	bics r3, r0
	ldr r0, _080446A8
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x74
	movs r2, #8
	bl sub_0804557C
	b _080446D4
	.align 2, 0
_080446A0: .4byte gUnknown_0200F920
_080446A4: .4byte 0x00006474
_080446A8: .4byte gSave
_080446AC:
	ldr r0, _080446DC
	ldr r1, _080446E0
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x1e
	bl Divide
	movs r3, #1
	bics r3, r0
	ldr r0, _080446E4
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x64
	movs r2, #4
	bl sub_0804557C
_080446D4:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080446DC: .4byte gUnknown_0200F920
_080446E0: .4byte 0x00006474
_080446E4: .4byte gSave
	.syntax divided
