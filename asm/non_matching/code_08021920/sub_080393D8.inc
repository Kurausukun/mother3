	.syntax unified
sub_080393D8:
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080393EA
	b _080394D6
_080393EA:
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _080394D6
	lsls r0, r0, #2
	ldr r1, _080393FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080393FC: .4byte _08039400
_08039400:
	.4byte _08039414
	.4byte _08039448
	.4byte _08039480
	.4byte _08039488
	.4byte _080394A4
_08039414:
	ldr r0, _08039438
	ldr r3, _0803943C
	ldr r1, _08039440
	ldr r2, _08039444
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r3, [r5, #4]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	b _0803948E
	.align 2, 0
_08039438: .4byte gUnknown_080C1B80
_0803943C: .4byte gUnknown_080C2030
_08039440: .4byte gGame
_08039444: .4byte 0x00009D10
_08039448:
	ldr r0, _08039470
	movs r2, #4
	ldrsh r1, [r5, r2]
	ldr r4, _08039474
	ldr r2, _08039478
	ldr r3, _0803947C
	adds r2, r2, r3
	ldr r2, [r2]
	lsrs r2, r2, #3
	movs r3, #7
	ands r2, r3
	adds r2, r2, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldrh r5, [r5, #6]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	b _08039492
	.align 2, 0
_08039470: .4byte gUnknown_080C1B98
_08039474: .4byte gUnknown_080C2048
_08039478: .4byte gGame
_0803947C: .4byte 0x00009D10
_08039480:
	ldr r0, _08039484
	b _0803948A
	.align 2, 0
_08039484: .4byte gUnknown_080C1B98
_08039488:
	ldr r0, _080394A0
_0803948A:
	movs r2, #4
	ldrsh r1, [r5, r2]
_0803948E:
	movs r3, #6
	ldrsh r2, [r5, r3]
_08039492:
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
	b _080394D6
	.align 2, 0
_080394A0: .4byte gUnknown_080C1C40
_080394A4:
	ldr r0, _080394E0
	movs r2, #4
	ldrsh r1, [r5, r2]
	ldr r4, _080394E4
	ldr r2, _080394E8
	ldr r3, _080394EC
	adds r2, r2, r3
	ldr r2, [r2]
	lsrs r2, r2, #3
	movs r3, #7
	ands r2, r3
	adds r2, r2, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldrh r5, [r5, #6]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0x20
	bl sub_0803D6C8
_080394D6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080394E0: .4byte gUnknown_080C1B98
_080394E4: .4byte gUnknown_080C2048
_080394E8: .4byte gGame
_080394EC: .4byte 0x00009D10
	.syntax divided
