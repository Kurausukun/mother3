	.syntax unified
sub_08056740:
	push {r4, lr}
	ldr r0, _08056778
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805678C
	bl clear_gfx
	bl sub_080568F4
	ldr r0, _0805677C
	movs r3, #1
	strh r3, [r0]
	ldr r4, _08056780
	movs r0, #0
	strh r0, [r4]
	ldr r1, _08056784
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	ldr r2, _08056788
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	bl snd_vsync_on
	b _0805679A
	.align 2, 0
_08056778: .4byte gUnknown_020047D0
_0805677C: .4byte gUnknown_03004B00
_08056780: .4byte 0x04000208
_08056784: .4byte 0x04000200
_08056788: .4byte 0x04000004
_0805678C:
	bl clear_gfx
	bl sub_080568F4
	ldr r1, _080567CC
	movs r0, #1
	strh r0, [r1]
_0805679A:
	bl sub_08056E68
	bl sub_080567E0
	ldr r1, _080567CC
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080567D0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080567C6
	ldr r1, _080567D4
	ldrh r2, [r1, #0xa]
	ldr r0, _080567D8
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080567DC
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_080567C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080567CC: .4byte gUnknown_03004B00
_080567D0: .4byte gUnknown_02015DA0
_080567D4: .4byte 0x040000B0
_080567D8: .4byte 0x0000C5FF
_080567DC: .4byte 0x00007FFF
	.syntax divided
