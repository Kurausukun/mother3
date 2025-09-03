	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _08039DEC
	ldr r4, _08039DF0
	ldr r1, _08039DF4
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r7, #0
	strb r0, [r6]
	ldr r2, _08039DF8
	adds r5, r4, r2
	ldrb r2, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5]
	ldr r3, _08039DFC
	adds r0, r4, r3
	strh r7, [r0]
	ldr r0, _08039E00
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	ldr r2, _08039E04
	adds r1, r6, r2
	movs r0, #0xa
	strh r0, [r1]
	ldr r3, _08039E08
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08039E0C
	bl sub_0800A354
	ldr r2, _08039E10
	ldr r1, _08039E14
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r2, #8]
	ldr r3, _08039E18
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r2, #0xc]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08039D62
	ldr r0, _08039E1C
	adds r1, r2, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r0, r2, r1
	strh r7, [r0]
_08039D62:
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039D7C
	ldr r2, _08039E20
	adds r0, r4, r2
	ldr r3, _08039E24
	adds r1, r6, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08039E6E
_08039D7C:
	ldr r0, _08039E20
	adds r5, r4, r0
	ldrh r0, [r5]
	bl sub_0801B2D4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08039E6E
	ldrh r0, [r5]
	bl sub_0801B0C4
	adds r4, r0, #0
	cmp r4, #0
	beq _08039E28
	ldrb r2, [r4, #6]
	lsls r2, r2, #4
	ldrb r1, [r4]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1b
	adds r0, #8
	adds r3, r2, r0
	ldrb r2, [r4, #7]
	lsls r2, r2, #4
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r1, #1
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrh r1, [r4, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x1e
	str r2, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	str r0, [sp, #0x10]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08039DDE
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
_08039DDE:
	str r0, [sp, #0x14]
	movs r0, #1
	adds r2, r5, #0
	bl sub_0801A434
	b _08039E5A
	.align 2, 0
_08039DEC: .4byte gGame
_08039DF0: .4byte gSomeBlend
_08039DF4: .4byte 0x00003610
_08039DF8: .4byte 0x00003668
_08039DFC: .4byte 0x00003612
_08039E00: .4byte 0x0000360E
_08039E04: .4byte 0x000082A4
_08039E08: .4byte 0x000121B8
_08039E0C: .4byte gUnknown_080C1FE8
_08039E10: .4byte gSave
_08039E14: .4byte 0x0000361C
_08039E18: .4byte 0x00003620
_08039E1C: .4byte 0x00000744
_08039E20: .4byte 0x00003614
_08039E24: .4byte 0x000067AC
_08039E28:
	movs r0, #0
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	str r4, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801A434
	ldr r1, _08039E78
	adds r2, r6, r1
	ldr r3, _08039E7C
	adds r1, r6, r3
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_08039E5A:
	movs r0, #1
	bl sub_08004660
	ldr r0, _08039E80
	ldr r1, _08039E84
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_08039E6E:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039E78: .4byte 0x0000597C
_08039E7C: .4byte 0x00005984
_08039E80: .4byte gSomeBlend
_08039E84: .4byte 0x0001ED10
	.syntax divided
