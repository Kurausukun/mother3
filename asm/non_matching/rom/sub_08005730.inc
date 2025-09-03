	.syntax unified
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	adds r2, #2
	mov r1, sp
	ldr r0, _08005758
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	adds r4, r2, #0
	cmp r0, #0x83
	beq _0800577C
	cmp r0, #0x83
	bgt _0800575C
	cmp r0, #0x50
	beq _08005766
	b _08005814
	.align 2, 0
_08005758: .4byte 0x04000006
_0800575C:
	cmp r0, #0x8f
	beq _080057CC
	cmp r0, #0xb4
	beq _080057F8
	b _08005814
_08005766:
	ldr r1, _08005774
	ldr r0, _08005778
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x83
	b _08005816
	.align 2, 0
_08005774: .4byte 0x04000012
_08005778: .4byte gUnknown_03004B06
_0800577C:
	ldr r2, _080057AC
	ldr r0, _080057B0
	ldrh r0, [r0]
	ldr r1, _080057B4
	adds r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0x8f
	strh r0, [r4]
	ldr r0, _080057B8
	movs r3, #1
	strh r3, [r0]
	ldr r2, _080057BC
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080057C0
	ldr r0, _080057C4
	str r0, [r1, #4]
	strh r3, [r2]
	ldr r1, _080057C8
	movs r0, #0x11
	strh r0, [r1]
	b _08005818
	.align 2, 0
_080057AC: .4byte 0x04000012
_080057B0: .4byte gUnknown_03004B06
_080057B4: .4byte gUnknown_03004B08
_080057B8: .4byte gUnknown_03004B0A
_080057BC: .4byte 0x04000208
_080057C0: .4byte gIntrHandlers
_080057C4: .4byte nullsub_60
_080057C8: .4byte 0x0400004A
_080057CC:
	ldr r1, _080057E8
	ldr r0, _080057EC
	ldrh r0, [r0]
	adds r0, #0xc
	strh r0, [r1]
	movs r0, #0xb4
	strh r0, [r4]
	ldr r1, _080057F0
	ldr r0, _080057F4
	ldrh r0, [r0]
	ldrh r2, [r1, #0x1a]
	strh r0, [r1, #0x1a]
	b _08005818
	.align 2, 0
_080057E8: .4byte 0x04000012
_080057EC: .4byte gUnknown_03004B06
_080057F0: .4byte gSomeBlend
_080057F4: .4byte gUnknown_03004B04
_080057F8:
	ldr r0, _08005810
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005804
	bl snd_main
_08005804:
	movs r0, #0x50
	strh r0, [r4]
	bl sub_08005A70
	b _08005818
	.align 2, 0
_08005810: .4byte gUnknown_03004B00
_08005814:
	movs r0, #0x50
_08005816:
	strh r0, [r4]
_08005818:
	ldr r2, _0800583C
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r4]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08005840
	movs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800583C: .4byte 0x04000004
_08005840: .4byte 0x04000202
	.syntax divided
