	.syntax unified
sub_08050628:
	push {r4, r5, lr}
	ldr r5, _08050654
	ldr r0, _08050658
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08050668
	movs r0, #0xd3
	bl play_sound
	ldr r1, _0805065C
	adds r0, r5, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	ldr r2, _08050660
	cmp r0, r2
	bne _08050664
	bl nullsub_23
	b _08050696
	.align 2, 0
_08050654: .4byte gSomeBlend
_08050658: .4byte 0x00004ECE
_0805065C: .4byte 0x00004DF4
_08050660: .4byte 0x0000FFFF
_08050664:
	strh r2, [r1]
	b _08050696
_08050668:
	movs r0, #0xd3
	bl play_sound
	ldrb r2, [r4]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x1b
	ldr r2, _0805069C
	adds r1, r5, r2
	ldr r1, [r1]
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	ldr r2, _080506A0
	adds r1, r2, #0
	strh r1, [r0]
_08050696:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805069C: .4byte 0x00004DF4
_080506A0: .4byte 0x0000FFFF
	.syntax divided
