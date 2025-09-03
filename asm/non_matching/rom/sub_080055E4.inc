	.syntax unified
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	adds r2, #2
	mov r1, sp
	ldr r0, _0800560C
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	adds r4, r2, #0
	cmp r0, #0x83
	beq _08005630
	cmp r0, #0x83
	bgt _08005610
	cmp r0, #0x50
	beq _0800561A
	b _080056B0
	.align 2, 0
_0800560C: .4byte 0x04000006
_08005610:
	cmp r0, #0x8f
	beq _08005678
	cmp r0, #0xb4
	beq _080056A4
	b _080056B0
_0800561A:
	ldr r1, _08005628
	ldr r0, _0800562C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x83
	b _080056B2
	.align 2, 0
_08005628: .4byte 0x04000012
_0800562C: .4byte gUnknown_03004B06
_08005630:
	ldr r2, _0800565C
	ldr r0, _08005660
	ldrh r0, [r0]
	ldr r1, _08005664
	adds r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0x8f
	strh r0, [r4]
	ldr r0, _08005668
	movs r3, #1
	strh r3, [r0]
	ldr r2, _0800566C
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005670
	ldr r0, _08005674
	str r0, [r1, #4]
	strh r3, [r2]
	b _080056B4
	.align 2, 0
_0800565C: .4byte 0x04000012
_08005660: .4byte gUnknown_03004B06
_08005664: .4byte gUnknown_03004B08
_08005668: .4byte gUnknown_03004B0A
_0800566C: .4byte 0x04000208
_08005670: .4byte gIntrHandlers
_08005674: .4byte nullsub_60
_08005678:
	ldr r1, _08005694
	ldr r0, _08005698
	ldrh r0, [r0]
	adds r0, #0xc
	strh r0, [r1]
	movs r0, #0xb4
	strh r0, [r4]
	ldr r1, _0800569C
	ldr r0, _080056A0
	ldrh r0, [r0]
	ldrh r2, [r1, #0x1a]
	strh r0, [r1, #0x1a]
	b _080056B4
	.align 2, 0
_08005694: .4byte 0x04000012
_08005698: .4byte gUnknown_03004B06
_0800569C: .4byte gSomeBlend
_080056A0: .4byte gUnknown_03004B04
_080056A4:
	ldr r0, _080056D8
	ldrh r0, [r0]
	cmp r0, #0
	bne _080056B0
	bl snd_main
_080056B0:
	movs r0, #0x50
_080056B2:
	strh r0, [r4]
_080056B4:
	ldr r2, _080056DC
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r4]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080056E0
	movs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080056D8: .4byte gUnknown_03004B00
_080056DC: .4byte 0x04000004
_080056E0: .4byte 0x04000202
	.syntax divided
