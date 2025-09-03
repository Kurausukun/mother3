	.syntax unified
sub_0803476C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034780
	ldr r1, _08034784
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08034788
	movs r0, #1
	b _080347AE
	.align 2, 0
_08034780: .4byte gGame
_08034784: .4byte 0x0000829B
_08034788:
	movs r0, #0
	bl get_char_stats
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r2, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _080347B4
	adds r1, r1, r2
	ldrb r0, [r0, #0x12]
	ldrb r1, [r1, #0x12]
	movs r2, #0
	subs r0, r0, r1
	cmp r0, #5
	ble _080347AC
	movs r2, #1
_080347AC:
	adds r0, r2, #0
_080347AE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080347B4: .4byte gUnknown_080C7D28
	.syntax divided
