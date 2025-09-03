	.syntax unified
sub_08052DBC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08052DE4
	adds r0, r4, #0
	movs r1, #0x80
	bl memclear
	ldr r0, _08052DE8
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #5
	bhi _08052E96
	lsls r0, r0, #2
	ldr r1, _08052DEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052DE4: .4byte gUnknown_020197A8
_08052DE8: .4byte 0x00000AFA
_08052DEC: .4byte _08052DF0
_08052DF0:
	.4byte _08052E08
	.4byte _08052E1C
	.4byte _08052E64
	.4byte _08052E1C
	.4byte _08052E78
	.4byte _08052E8C
_08052E08:
	ldr r0, _08052E14
	ldr r2, _08052E18
	adds r1, r0, r2
	bl sub_08052EA4
	b _08052E96
	.align 2, 0
_08052E14: .4byte gUnknown_020197A8
_08052E18: .4byte 0x00000AFA
_08052E1C:
	adds r0, r5, #0
	bl ch_has_psi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052E96
	ldrb r0, [r5]
	bl sub_0802B8C4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #7
	ldr r5, _08052E5C
	adds r0, r0, r5
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x80
	bl sub_08001B18
	lsls r4, r4, #1
	movs r1, #0xd7
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r2, _08052E60
	adds r5, r5, r2
	strh r0, [r5]
	b _08052E96
	.align 2, 0
_08052E5C: .4byte gUnknown_02019528
_08052E60: .4byte 0x00000D7A
_08052E64:
	ldr r0, _08052E70
	ldr r2, _08052E74
	adds r1, r0, r2
	bl sub_08052EC0
	b _08052E96
	.align 2, 0
_08052E70: .4byte gUnknown_020197A8
_08052E74: .4byte 0x00000AFA
_08052E78:
	ldr r0, _08052E84
	ldr r2, _08052E88
	adds r1, r0, r2
	bl sub_08052F74
	b _08052E96
	.align 2, 0
_08052E84: .4byte gUnknown_020197A8
_08052E88: .4byte 0x00000AFA
_08052E8C:
	ldr r0, _08052E9C
	ldr r2, _08052EA0
	adds r1, r0, r2
	bl sub_08052F80
_08052E96:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052E9C: .4byte gUnknown_020197A8
_08052EA0: .4byte 0x00000AFA
	.syntax divided
