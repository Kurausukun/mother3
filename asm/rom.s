.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08000264
sub_08000264: @ 0x08000264
	push {lr}
	ldr r1, _080002C4 @ =0x04000204
	ldr r2, _080002C8 @ =0x000045B4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080002CC @ =0x04000200
	movs r1, #0x80
	lsls r1, r1, #6
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _080002D0 @ =0x04000134
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080002D4 @ =0x04000128
	strh r2, [r0]
	bl sub_08000E0C
	bl sub_08000E30
	bl sub_08000DC0
	bl sub_08000838
	bl sub_080008E0
	ldr r0, _080002D8 @ =0x04000130
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #0xf
	bne _080002AE
	ldr r0, _080002DC @ =gUnknown_02004848
	ldrb r1, [r0, #1]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #1]
_080002AE:
	bl sub_08003720
	bl sub_08000904
	bl sub_080002E0
	bl sub_08001718
	pop {r0}
	bx r0
	.align 2, 0
_080002C4: .4byte 0x04000204
_080002C8: .4byte 0x000045B4
_080002CC: .4byte 0x04000200
_080002D0: .4byte 0x04000134
_080002D4: .4byte 0x04000128
_080002D8: .4byte 0x04000130
_080002DC: .4byte gUnknown_02004848

	thumb_func_start sub_080002E0
sub_080002E0: @ 0x080002E0
	push {lr}
_080002E2:
	ldr r0, _080002F4 @ =gUnknown_02004848
	ldrb r0, [r0]
	cmp r0, #0xe
	bhi _080003C8
	lsls r0, r0, #2
	ldr r1, _080002F8 @ =_080002FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080002F4: .4byte gUnknown_02004848
_080002F8: .4byte _080002FC
_080002FC: @ jump table
	.4byte _08000338 @ case 0
	.4byte _08000354 @ case 1
	.4byte _08000374 @ case 2
	.4byte _08000374 @ case 3
	.4byte _08000374 @ case 4
	.4byte _08000374 @ case 5
	.4byte _08000374 @ case 6
	.4byte _08000374 @ case 7
	.4byte _0800037A @ case 8
	.4byte _08000380 @ case 9
	.4byte _08000386 @ case 10
	.4byte _0800038C @ case 11
	.4byte _08000392 @ case 12
	.4byte _08000398 @ case 13
	.4byte _0800039E @ case 14
_08000338:
	bl sub_08000910
	bl sub_080003D8
	ldr r0, _08000350 @ =gUnknown_02005084
	ldrb r0, [r0]
	cmp r0, #6
	beq _0800035C
	bl sub_08000600
	b _0800035C
	.align 2, 0
_08000350: .4byte gUnknown_02005084
_08000354:
	bl sub_08000920
	bl sub_080003D8
_0800035C:
	ldr r1, _0800036C @ =gUnknown_02004848
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08000370 @ =gUnknown_02005080
	strb r2, [r0]
	b _080003C8
	.align 2, 0
_0800036C: .4byte gUnknown_02004848
_08000370: .4byte gUnknown_02005080
_08000374:
	bl sub_080003D8
	b _080003C8
_0800037A:
	bl sub_080004D8
	b _080003C8
_08000380:
	bl sub_08000600
	b _080003C8
_08000386:
	bl sub_080006A0
	b _080003C8
_0800038C:
	bl sub_08000748
	b _080003C8
_08000392:
	bl sub_08000790
	b _080003C8
_08000398:
	bl sub_080007B0
	b _080003C8
_0800039E:
	bl sub_080007CC
	ldr r0, _080003D0 @ =gUnknown_020050C0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080003C8
	ldr r1, _080003D4 @ =gUnknown_02004100
	movs r0, #0xa
	strb r0, [r1]
	bl sub_0803DBB8
	bl sub_08000838
	movs r0, #0
	bl sub_080512CC
_080003C8:
	bl sub_08000838
	b _080002E2
	.align 2, 0
_080003D0: .4byte gUnknown_020050C0
_080003D4: .4byte gUnknown_02004100

	thumb_func_start sub_080003D8
sub_080003D8: @ 0x080003D8
	push {lr}
	bl sub_08003EF8
	ldr r0, _080003F4 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #6
	bls _080003E8
	b _080004CE
_080003E8:
	lsls r0, r0, #2
	ldr r1, _080003F8 @ =_080003FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080003F4: .4byte gUnknown_020051E4
_080003F8: .4byte _080003FC
_080003FC: @ jump table
	.4byte _080004CE @ case 0
	.4byte _08000418 @ case 1
	.4byte _08000424 @ case 2
	.4byte _08000430 @ case 3
	.4byte _080004A0 @ case 4
	.4byte _080004B4 @ case 5
	.4byte _080004C8 @ case 6
_08000418:
	ldr r1, _08000420 @ =gUnknown_02004848
	movs r0, #8
	b _080004CC
	.align 2, 0
_08000420: .4byte gUnknown_02004848
_08000424:
	ldr r1, _0800042C @ =gUnknown_02004848
	movs r0, #9
	b _080004CC
	.align 2, 0
_0800042C: .4byte gUnknown_02004848
_08000430:
	ldr r0, _0800044C @ =gSave
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08000458
	ldr r1, _08000450 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _08000454 @ =gUnknown_020047D0
	movs r0, #1
	b _080004CC
	.align 2, 0
_0800044C: .4byte gSave
_08000450: .4byte gUnknown_02004848
_08000454: .4byte gUnknown_020047D0
_08000458:
	ldr r0, _08000470 @ =gUnknown_02004100
	movs r1, #0xd
	strb r1, [r0]
	bl sub_0803DBB8
	ldr r0, _08000474 @ =gUnknown_020051E8
	ldrb r1, [r0]
	cmp r1, #4
	beq _08000478
	cmp r1, #5
	beq _0800048C
	b _080004CE
	.align 2, 0
_08000470: .4byte gUnknown_02004100
_08000474: .4byte gUnknown_020051E8
_08000478:
	ldr r0, _08000484 @ =gUnknown_02004848
	strb r1, [r0]
	ldr r1, _08000488 @ =gUnknown_02005080
	movs r0, #2
	b _080004CC
	.align 2, 0
_08000484: .4byte gUnknown_02004848
_08000488: .4byte gUnknown_02005080
_0800048C:
	ldr r1, _08000498 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _0800049C @ =gUnknown_020047D0
	movs r0, #1
	b _080004CC
	.align 2, 0
_08000498: .4byte gUnknown_02004848
_0800049C: .4byte gUnknown_020047D0
_080004A0:
	ldr r1, _080004AC @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _080004B0 @ =gUnknown_020047D0
	movs r0, #1
	b _080004CC
	.align 2, 0
_080004AC: .4byte gUnknown_02004848
_080004B0: .4byte gUnknown_020047D0
_080004B4:
	ldr r1, _080004C0 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _080004C4 @ =gUnknown_020047D0
	movs r0, #2
	b _080004CC
	.align 2, 0
_080004C0: .4byte gUnknown_02004848
_080004C4: .4byte gUnknown_020047D0
_080004C8:
	ldr r1, _080004D4 @ =gUnknown_02004848
	movs r0, #0xb
_080004CC:
	strb r0, [r1]
_080004CE:
	pop {r0}
	bx r0
	.align 2, 0
_080004D4: .4byte gUnknown_02004848

	thumb_func_start sub_080004D8
sub_080004D8: @ 0x080004D8
	push {r4, r5, lr}
	ldr r4, _08000500 @ =gUnknown_020047E0
	ldrb r5, [r4]
	cmp r5, #3
	bne _0800050C
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	bl sub_080037F0
	bl sub_08026C28
	ldr r1, _08000504 @ =gUnknown_02004848
	movs r0, #5
	strb r0, [r1]
	ldr r0, _08000508 @ =gUnknown_02005080
	strb r5, [r0]
	b _080005F0
	.align 2, 0
_08000500: .4byte gUnknown_020047E0
_08000504: .4byte gUnknown_02004848
_08000508: .4byte gUnknown_02005080
_0800050C:
	bl sub_0805B9AC
	movs r0, #0
	strb r0, [r4, #4]
	ldrb r1, [r4]
	cmp r1, #2
	bne _08000530
	ldr r1, _08000528 @ =gUnknown_02004848
	movs r0, #9
	strb r0, [r1]
	ldr r1, _0800052C @ =gUnknown_02004100
	movs r0, #4
	b _08000578
	.align 2, 0
_08000528: .4byte gUnknown_02004848
_0800052C: .4byte gUnknown_02004100
_08000530:
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #2
	beq _080005E0
	cmp r0, #2
	bgt _08000544
	cmp r0, #1
	beq _0800054A
	b _080005E4
_08000544:
	cmp r0, #3
	beq _08000550
	b _080005E4
_0800054A:
	bl sub_08026C28
	b _080005E4
_08000550:
	cmp r1, #1
	bne _08000560
	ldrh r0, [r4, #0xa]
	cmp r0, #0x17
	bne _08000560
	bl sub_08026CD0
	b _080005E4
_08000560:
	ldr r0, _08000580 @ =gSave
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800058C
	ldr r1, _08000584 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _08000588 @ =gUnknown_020047D0
	movs r0, #1
_08000578:
	strb r0, [r1]
	bl sub_080037E4
	b _080005F0
	.align 2, 0
_08000580: .4byte gSave
_08000584: .4byte gUnknown_02004848
_08000588: .4byte gUnknown_020047D0
_0800058C:
	ldr r0, _080005AC @ =0x00000315
	movs r1, #0
	bl set_event_flag
	ldr r1, _080005B0 @ =gUnknown_02004100
	movs r0, #0xd
	strb r0, [r1]
	bl sub_0803DBB8
	ldr r0, _080005B4 @ =gUnknown_020051E8
	ldrb r1, [r0]
	cmp r1, #4
	beq _080005B8
	cmp r1, #5
	beq _080005CC
	b _080005E4
	.align 2, 0
_080005AC: .4byte 0x00000315
_080005B0: .4byte gUnknown_02004100
_080005B4: .4byte gUnknown_020051E8
_080005B8:
	ldr r0, _080005C4 @ =gUnknown_02004848
	strb r1, [r0]
	ldr r1, _080005C8 @ =gUnknown_02005080
	movs r0, #2
	b _080005EE
	.align 2, 0
_080005C4: .4byte gUnknown_02004848
_080005C8: .4byte gUnknown_02005080
_080005CC:
	ldr r1, _080005D8 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _080005DC @ =gUnknown_020047D0
	movs r0, #1
	b _080005EE
	.align 2, 0
_080005D8: .4byte gUnknown_02004848
_080005DC: .4byte gUnknown_020047D0
_080005E0:
	bl sub_08026CE4
_080005E4:
	ldr r1, _080005F8 @ =gUnknown_02004848
	movs r0, #5
	strb r0, [r1]
	ldr r1, _080005FC @ =gUnknown_02005080
	movs r0, #3
_080005EE:
	strb r0, [r1]
_080005F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080005F8: .4byte gUnknown_02004848
_080005FC: .4byte gUnknown_02005080

	thumb_func_start sub_08000600
sub_08000600: @ 0x08000600
	push {lr}
	bl sub_0803DBB8
	ldr r0, _08000618 @ =gUnknown_020051E8
	ldrb r0, [r0]
	cmp r0, #6
	bhi _08000696
	lsls r0, r0, #2
	ldr r1, _0800061C @ =_08000620
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08000618: .4byte gUnknown_020051E8
_0800061C: .4byte _08000620
_08000620: @ jump table
	.4byte _0800063C @ case 0
	.4byte _08000650 @ case 1
	.4byte _0800063C @ case 2
	.4byte _0800067C @ case 3
	.4byte _08000696 @ case 4
	.4byte _08000668 @ case 5
	.4byte _08000690 @ case 6
_0800063C:
	ldr r1, _08000648 @ =gUnknown_02004848
	movs r0, #6
	strb r0, [r1]
	ldr r1, _0800064C @ =gUnknown_02005080
	movs r0, #4
	b _08000694
	.align 2, 0
_08000648: .4byte gUnknown_02004848
_0800064C: .4byte gUnknown_02005080
_08000650:
	ldr r1, _08000660 @ =gUnknown_02004848
	movs r2, #0
	movs r0, #6
	strb r0, [r1]
	ldr r0, _08000664 @ =gUnknown_02005080
	strb r2, [r0]
	b _08000696
	.align 2, 0
_08000660: .4byte gUnknown_02004848
_08000664: .4byte gUnknown_02005080
_08000668:
	ldr r1, _08000674 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _08000678 @ =gUnknown_020047D0
	movs r0, #1
	b _08000694
	.align 2, 0
_08000674: .4byte gUnknown_02004848
_08000678: .4byte gUnknown_020047D0
_0800067C:
	ldr r1, _08000688 @ =gUnknown_02004848
	movs r0, #3
	strb r0, [r1]
	ldr r1, _0800068C @ =gUnknown_02005080
	movs r0, #1
	b _08000694
	.align 2, 0
_08000688: .4byte gUnknown_02004848
_0800068C: .4byte gUnknown_02005080
_08000690:
	ldr r1, _0800069C @ =gUnknown_02004848
	movs r0, #8
_08000694:
	strb r0, [r1]
_08000696:
	pop {r0}
	bx r0
	.align 2, 0
_0800069C: .4byte gUnknown_02004848

	thumb_func_start sub_080006A0
sub_080006A0: @ 0x080006A0
	push {lr}
	bl sub_08056740
	ldr r0, _080006B8 @ =gUnknown_02005084
	ldrb r0, [r0]
	cmp r0, #6
	bhi _0800073C
	lsls r0, r0, #2
	ldr r1, _080006BC @ =_080006C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080006B8: .4byte gUnknown_02005084
_080006BC: .4byte _080006C0
_080006C0: @ jump table
	.4byte _080006DC @ case 0
	.4byte _080006FC @ case 1
	.4byte _08000710 @ case 2
	.4byte _0800073C @ case 3
	.4byte _0800071C @ case 4
	.4byte _08000730 @ case 5
	.4byte _080006DC @ case 6
_080006DC:
	ldr r1, _080006F0 @ =gUnknown_02004848
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080006F4 @ =gUnknown_02005080
	movs r0, #6
	strb r0, [r1]
	ldr r1, _080006F8 @ =gUnknown_02004100
	movs r0, #0xb
	b _0800073A
	.align 2, 0
_080006F0: .4byte gUnknown_02004848
_080006F4: .4byte gUnknown_02005080
_080006F8: .4byte gUnknown_02004100
_080006FC:
	ldr r1, _08000708 @ =gUnknown_02004848
	movs r0, #9
	strb r0, [r1]
	ldr r1, _0800070C @ =gUnknown_02004100
	movs r0, #8
	b _0800073A
	.align 2, 0
_08000708: .4byte gUnknown_02004848
_0800070C: .4byte gUnknown_02004100
_08000710:
	ldr r1, _08000718 @ =gUnknown_02004848
	movs r0, #0xc
	b _0800073A
	.align 2, 0
_08000718: .4byte gUnknown_02004848
_0800071C:
	ldr r0, _08000728 @ =gUnknown_02004848
	movs r1, #9
	strb r1, [r0]
	ldr r0, _0800072C @ =gUnknown_02004100
	strb r1, [r0]
	b _0800073C
	.align 2, 0
_08000728: .4byte gUnknown_02004848
_0800072C: .4byte gUnknown_02004100
_08000730:
	ldr r1, _08000740 @ =gUnknown_02004848
	movs r0, #7
	strb r0, [r1]
	ldr r1, _08000744 @ =gUnknown_02005080
	movs r0, #5
_0800073A:
	strb r0, [r1]
_0800073C:
	pop {r0}
	bx r0
	.align 2, 0
_08000740: .4byte gUnknown_02004848
_08000744: .4byte gUnknown_02005080

	thumb_func_start sub_08000748
sub_08000748: @ 0x08000748
	push {lr}
	bl sub_0805850C
	ldr r0, _0800075C @ =gUnknown_02004854
	ldrh r2, [r0]
	cmp r2, #0
	beq _08000760
	cmp r2, #1
	beq _08000778
	b _08000782
	.align 2, 0
_0800075C: .4byte gUnknown_02004854
_08000760:
	ldr r1, _08000770 @ =gUnknown_02004848
	movs r0, #6
	strb r0, [r1]
	ldr r1, _08000774 @ =gUnknown_02005080
	movs r0, #4
	strb r0, [r1]
	b _08000782
	.align 2, 0
_08000770: .4byte gUnknown_02004848
_08000774: .4byte gUnknown_02005080
_08000778:
	ldr r0, _08000788 @ =gUnknown_02004848
	movs r1, #0xa
	strb r1, [r0]
	ldr r0, _0800078C @ =gUnknown_020047D0
	strb r2, [r0]
_08000782:
	pop {r0}
	bx r0
	.align 2, 0
_08000788: .4byte gUnknown_02004848
_0800078C: .4byte gUnknown_020047D0

	thumb_func_start sub_08000790
sub_08000790: @ 0x08000790
	push {lr}
	bl sub_0805BA98
	ldr r1, _080007A8 @ =gUnknown_02004848
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _080007AC @ =gUnknown_020047D0
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080007A8: .4byte gUnknown_02004848
_080007AC: .4byte gUnknown_020047D0

	thumb_func_start sub_080007B0
sub_080007B0: @ 0x080007B0
	push {lr}
	bl sub_080037E4
	bl sub_0805A2DC
	bl sub_080037D8
	ldr r1, _080007C8 @ =gUnknown_02004848
	movs r0, #0xe
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080007C8: .4byte gUnknown_02004848

	thumb_func_start sub_080007CC
sub_080007CC: @ 0x080007CC
	push {r4, lr}
	ldr r4, _080007E4 @ =gUnknown_02004848
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080007EC
	movs r0, #0
	movs r1, #0xa
	strb r1, [r4]
	ldr r1, _080007E8 @ =gUnknown_020047D0
	strb r0, [r1]
	b _0800082A
	.align 2, 0
_080007E4: .4byte gUnknown_02004848
_080007E8: .4byte gUnknown_020047D0
_080007EC:
	bl sub_080037E4
	bl sub_0805ACF4
	bl sub_080037D8
	ldr r0, _08000808 @ =gUnknown_020051E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800080C
	cmp r0, #1
	beq _08000814
	b _0800081E
	.align 2, 0
_08000808: .4byte gUnknown_020051E0
_0800080C:
	ldrb r0, [r4, #1]
	movs r1, #1
	orrs r0, r1
	b _0800081C
_08000814:
	ldrb r1, [r4, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
_0800081C:
	strb r0, [r4, #1]
_0800081E:
	ldr r1, _08000830 @ =gUnknown_02004848
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _08000834 @ =gUnknown_020047D0
	strb r2, [r0]
_0800082A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000830: .4byte gUnknown_02004848
_08000834: .4byte gUnknown_020047D0

	thumb_func_start sub_08000838
sub_08000838: @ 0x08000838
	push {r4, lr}
	ldr r4, _0800087C @ =0x04000208
	movs r0, #0
	strh r0, [r4]
	ldr r2, _08000880 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08000884 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08000888 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0800088C @ =0x0000FFC7
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08000890 @ =gUnknown_020051F0
	ldr r1, _08000894 @ =gUnknown_080C17A0
	movs r2, #0x38
	bl memcpy
	ldr r1, _08000898 @ =0x040000D4
	ldr r0, _0800089C @ =IntrMain
	str r0, [r1]
	ldr r2, _080008A0 @ =gUnknown_03002EF0
	str r2, [r1, #4]
	ldr r0, _080008A4 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080008A8 @ =gUnknown_03007FFC
	str r2, [r0]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800087C: .4byte 0x04000208
_08000880: .4byte 0x04000200
_08000884: .4byte 0x0000FFF8
_08000888: .4byte 0x04000004
_0800088C: .4byte 0x0000FFC7
_08000890: .4byte gUnknown_020051F0
_08000894: .4byte gUnknown_080C17A0
_08000898: .4byte 0x040000D4
_0800089C: .4byte IntrMain
_080008A0: .4byte gUnknown_03002EF0
_080008A4: .4byte 0x84000200
_080008A8: .4byte gUnknown_03007FFC

	thumb_func_start sub_080008AC
sub_080008AC: @ 0x080008AC
	push {lr}
	bl sub_080037A8
	bl sub_080037BC
	ldr r2, _080008C8 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080008CC @ =gUnknown_03007FF8
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080008C8: .4byte 0x04000208
_080008CC: .4byte gUnknown_03007FF8

	thumb_func_start sub_080008D0
sub_080008D0: @ 0x080008D0
	ldr r1, _080008D8 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080008D8: .4byte 0x04000202

	thumb_func_start sub_080008DC
sub_080008DC: @ 0x080008DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080008E0
sub_080008E0: @ 0x080008E0
	push {lr}
	ldr r1, _080008FC @ =gUnknown_02004848
	movs r0, #0xd
	strb r0, [r1]
	ldrb r2, [r1, #1]
	subs r0, #0x10
	ands r0, r2
	strb r0, [r1, #1]
	ldr r0, _08000900 @ =0x00001105
	bl sub_0800303C
	pop {r0}
	bx r0
	.align 2, 0
_080008FC: .4byte gUnknown_02004848
_08000900: .4byte 0x00001105

	thumb_func_start sub_08000904
sub_08000904: @ 0x08000904
	push {lr}
	movs r0, #1
	bl sub_080512CC
	pop {r0}
	bx r0

	thumb_func_start sub_08000910
sub_08000910: @ 0x08000910
	push {lr}
	bl sub_08000944
	bl sub_08000BE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000920
sub_08000920: @ 0x08000920
	push {r4, lr}
	movs r0, #0x9d
	bl sub_08002970
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08000944
	movs r0, #0x9d
	adds r1, r4, #0
	bl set_event_flag
	bl sub_08000BE8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08000944
sub_08000944: @ 0x08000944
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r4, _08000BAC @ =gSave
	adds r3, r4, #0
	movs r1, #0
_0800094E:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _0800094E
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0x10
	movs r1, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r3, r4, r0
_08000970:
	adds r0, r2, r5
	strb r1, [r0]
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xff
	bls _08000970
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strh r1, [r0]
	movs r2, #0
	ldr r0, _08000BB0 @ =0x00000222
	adds r7, r4, r0
	movs r3, #0
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r6, r4, r1
	adds r0, #0x14
	adds r5, r4, r0
_080009B8:
	lsls r1, r2, #1
	adds r0, r1, r7
	strh r3, [r0]
	adds r0, r1, r6
	strh r3, [r0]
	adds r1, r1, r5
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _080009B8
	movs r2, #0
	ldr r3, _08000BB4 @ =gUnknown_02004AA0
	movs r1, #0
_080009D6:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xff
	bls _080009D6
	movs r2, #0
	ldr r3, _08000BB8 @ =gUnknown_02004BA0
	movs r1, #0
	adds r6, r3, #0
	adds r6, #0x40
	adds r5, r3, #0
	adds r5, #0x80
_080009F2:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, r6
	strb r1, [r0]
	adds r0, r2, r5
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	bls _080009F2
	movs r2, #0
	ldr r3, _08000BBC @ =gUnknown_02004C60
	movs r1, #0
_08000A0E:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x7f
	bls _08000A0E
	movs r2, #0x90
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	movs r2, #0
	ldr r0, _08000BC0 @ =0x00000482
	adds r6, r4, r0
	movs r5, #0
	ldr r1, _08000BC4 @ =0x00000582
	adds r4, r4, r1
	movs r3, #0x64
_08000A34:
	lsls r1, r2, #1
	adds r0, r1, r6
	strh r5, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x7f
	bls _08000A34
	movs r0, #5
	bl sub_08001DB0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r7, _08000BC8 @ =gUnknown_02004EE2
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r7, #0
	movs r1, #0x10
	adds r2, r6, #0
	bl sub_08001B54
	movs r0, #5
	movs r1, #8
	bl sub_08001C5C
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_08002420
	adds r5, r7, #0
	adds r5, #0x10
	adds r0, r5, #0
	movs r1, #0x10
	adds r2, r6, #0
	bl sub_08001B54
	movs r0, #5
	movs r1, #5
	bl sub_08001C5C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002420
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0x12
	adds r2, r6, #0
	bl sub_08001B54
	adds r0, r7, #0
	adds r0, #0x32
	movs r1, #0x12
	adds r2, r6, #0
	bl sub_08001B54
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0x12
	adds r2, r6, #0
	bl sub_08001B54
	adds r0, r7, #0
	adds r0, #0x56
	movs r1, #0x20
	adds r2, r6, #0
	bl sub_08001B54
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0xc
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x16
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strh r1, [r0]
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	adds r5, #0x98
_08000B24:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, r5
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _08000B24
	bl sub_0800272C
	movs r2, #0
	ldr r3, _08000BCC @ =gUnknown_02004FAA
	movs r1, #0
	adds r5, r3, #0
	adds r5, #0x20
	ldr r0, _08000BD0 @ =0xFFFFF8B6
	adds r4, r3, r0
_08000B48:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, r5
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08000B48
	ldr r1, _08000BD4 @ =0x0000078A
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08000BD8 @ =0x0000078B
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	movs r2, #0
	ldr r0, _08000BDC @ =0x0000078E
	adds r3, r4, r0
_08000B7A:
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	bls _08000B7A
	movs r2, #0
	ldr r3, _08000BE0 @ =gUnknown_0200506E
	movs r1, #0
_08000B90:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _08000B90
	ldr r2, _08000BE4 @ =0x0000081E
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000BAC: .4byte gSave
_08000BB0: .4byte 0x00000222
_08000BB4: .4byte gUnknown_02004AA0
_08000BB8: .4byte gUnknown_02004BA0
_08000BBC: .4byte gUnknown_02004C60
_08000BC0: .4byte 0x00000482
_08000BC4: .4byte 0x00000582
_08000BC8: .4byte gUnknown_02004EE2
_08000BCC: .4byte gUnknown_02004FAA
_08000BD0: .4byte 0xFFFFF8B6
_08000BD4: .4byte 0x0000078A
_08000BD8: .4byte 0x0000078B
_08000BDC: .4byte 0x0000078E
_08000BE0: .4byte gUnknown_0200506E
_08000BE4: .4byte 0x0000081E

	thumb_func_start sub_08000BE8
sub_08000BE8: @ 0x08000BE8
	push {r4, r5, r6, r7, lr}
	movs r0, #5
	bl sub_08001DB0
	movs r5, #0
	lsls r7, r0, #0x10
_08000BF4:
	movs r0, #0x6c
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r6, _08000D14 @ =gUnknown_02004112
	adds r4, r4, r6
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	movs r0, #6
	adds r1, r5, #0
	bl sub_08001C5C
	adds r1, r0, #0
	adds r0, r4, #0
	asrs r2, r7, #0x10
	bl sub_08002420
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _08000BF4
	subs r0, r6, #2
	movs r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	adds r1, r6, #0
	adds r1, #0x6a
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #0x6b
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	movs r3, #0xa1
	lsls r3, r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	ldr r0, _08000D18 @ =0x00000143
	adds r1, r6, r0
	movs r0, #0xf
	strb r0, [r1]
	adds r3, #0x6c
	adds r1, r6, r3
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08000D1C @ =0x000001AF
	adds r0, r6, r1
	movs r4, #0xb
	strb r4, [r0]
	adds r3, #0x6c
	adds r0, r6, r3
	movs r5, #5
	strb r5, [r0]
	adds r1, #0x6c
	adds r0, r6, r1
	movs r3, #9
	strb r3, [r0]
	ldr r0, _08000D20 @ =0x00000286
	adds r1, r6, r0
	movs r0, #6
	strb r0, [r1]
	ldr r0, _08000D24 @ =0x00000287
	adds r1, r6, r0
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _08000D28 @ =0x000002F2
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	ldr r0, _08000D2C @ =0x000002F3
	adds r1, r6, r0
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _08000D30 @ =0x0000035E
	adds r1, r6, r0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08000D34 @ =0x0000035F
	adds r1, r6, r0
	movs r0, #0x20
	strb r0, [r1]
	ldr r1, _08000D38 @ =0x000003CA
	adds r0, r6, r1
	strb r3, [r0]
	ldr r3, _08000D3C @ =0x000003CB
	adds r1, r6, r3
	movs r0, #0x74
	strb r0, [r1]
	ldr r0, _08000D40 @ =0x00000436
	adds r1, r6, r0
	movs r0, #0xa
	strb r0, [r1]
	adds r3, #0x6c
	adds r1, r6, r3
	movs r0, #0x56
	strb r0, [r1]
	ldr r1, _08000D44 @ =0x000004A2
	adds r0, r6, r1
	strb r4, [r0]
	adds r3, #0x6c
	adds r1, r6, r3
	movs r0, #0x58
	strb r0, [r1]
	ldr r0, _08000D48 @ =0x0000050E
	adds r1, r6, r0
	movs r0, #0xc
	strb r0, [r1]
	adds r3, #0x6c
	adds r1, r6, r3
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _08000D4C @ =0x0000057A
	adds r1, r6, r0
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, _08000D50 @ =0x0000057B
	adds r0, r6, r1
	strb r5, [r0]
	adds r3, #0xd7
	adds r0, r6, r3
	strb r2, [r0]
	adds r1, #0x6c
	adds r0, r6, r1
	strb r2, [r0]
	adds r3, #0x6c
	adds r0, r6, r3
	strb r2, [r0]
	adds r1, #0x6c
	adds r0, r6, r1
	strb r2, [r0]
	bl sub_0805B528
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000D14: .4byte gUnknown_02004112
_08000D18: .4byte 0x00000143
_08000D1C: .4byte 0x000001AF
_08000D20: .4byte 0x00000286
_08000D24: .4byte 0x00000287
_08000D28: .4byte 0x000002F2
_08000D2C: .4byte 0x000002F3
_08000D30: .4byte 0x0000035E
_08000D34: .4byte 0x0000035F
_08000D38: .4byte 0x000003CA
_08000D3C: .4byte 0x000003CB
_08000D40: .4byte 0x00000436
_08000D44: .4byte 0x000004A2
_08000D48: .4byte 0x0000050E
_08000D4C: .4byte 0x0000057A
_08000D50: .4byte 0x0000057B

	thumb_func_start sub_08000D54
sub_08000D54: @ 0x08000D54
	ldr r0, _08000D60 @ =gUnknown_02004848
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_08000D60: .4byte gUnknown_02004848

	thumb_func_start sub_08000D64
sub_08000D64: @ 0x08000D64
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r3, _08000D84 @ =gUnknown_02004848
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	add sp, #4
	bx lr
	.align 2, 0
_08000D84: .4byte gUnknown_02004848

	thumb_func_start sub_08000D88
sub_08000D88: @ 0x08000D88
	push {r4, lr}
	movs r2, #0xc0
	lsls r2, r2, #0x12
	movs r1, #0
	ldr r4, _08000DB8 @ =gUnknown_02004848
	ldr r3, _08000DBC @ =gUnknown_08CDB8A8
_08000D94:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _08000DA2
	adds r0, r1, r3
	ldrb r0, [r0]
_08000DA2:
	strb r0, [r2]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, #1
	cmp r1, #7
	bls _08000D94
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000DB8: .4byte gUnknown_02004848
_08000DBC: .4byte gUnknown_08CDB8A8

	thumb_func_start sub_08000DC0
sub_08000DC0: @ 0x08000DC0
	push {r4, r5, r6, r7, lr}
	movs r3, #0xc0
	lsls r3, r3, #0x12
	movs r2, #0
	ldr r5, _08000DE8 @ =gUnknown_02004848
	ldr r6, _08000DEC @ =gUnknown_08CDB8A8
	adds r4, r5, #0
	movs r7, #2
	rsbs r7, r7, #0
_08000DD2:
	adds r1, r2, r6
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08000DF0
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #1]
	b _08000E04
	.align 2, 0
_08000DE8: .4byte gUnknown_02004848
_08000DEC: .4byte gUnknown_08CDB8A8
_08000DF0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #1
	cmp r2, #7
	bls _08000DD2
	ldrb r0, [r5, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #1]
_08000E04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000E0C
sub_08000E0C: @ 0x08000E0C
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl sub_080019DC
	ldr r0, _08000E28 @ =gUnknown_03000008
	ldr r1, _08000E2C @ =0x00007D98
	bl sub_080019DC
	pop {r0}
	bx r0
	.align 2, 0
_08000E28: .4byte gUnknown_03000008
_08000E2C: .4byte 0x00007D98

	thumb_func_start sub_08000E30
sub_08000E30: @ 0x08000E30
	push {r4, lr}
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	bl sub_08001ACC
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	bl sub_08001ACC
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	bl sub_08001ACC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08000E5C
sub_08000E5C: @ 0x08000E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r3, r6, r0
	movs r4, #0
	ldr r1, _08000EF8 @ =0xFFFFFE00
	mov sb, r1
	movs r5, #0x3f
	movs r2, #4
	rsbs r2, r2, #0
	mov r8, r2
	movs r0, #0xf0
	mov ip, r0
	movs r7, #0xa0
_08000E80:
	ldrh r1, [r3, #2]
	mov r0, sb
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r3, #2]
	strb r7, [r3]
	ldrb r0, [r3, #1]
	adds r1, r5, #0
	ands r1, r0
	ldrb r2, [r3, #3]
	adds r0, r5, #0
	ands r0, r2
	strb r0, [r3, #3]
	mov r2, r8
	ands r1, r2
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #8
	cmp r4, #0x7f
	bls _08000E80
	movs r0, #0x94
	lsls r0, r0, #6
	adds r1, r6, r0
	movs r4, #0
	movs r2, #0
_08000EBC:
	ldrh r0, [r1]
	strh r2, [r1]
	ldrh r0, [r1, #2]
	strh r2, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	ldrh r0, [r1, #6]
	strh r2, [r1, #6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #8
	cmp r4, #0x1f
	bls _08000EBC
	ldr r1, _08000EFC @ =0x00002C48
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08000F00 @ =0x00002C4A
	adds r0, r6, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000EF8: .4byte 0xFFFFFE00
_08000EFC: .4byte 0x00002C48
_08000F00: .4byte 0x00002C4A

	thumb_func_start sub_08000F04
sub_08000F04: @ 0x08000F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, _08000F9C @ =0x00002C48
	adds r2, r0, r1
	ldrh r1, [r2]
	lsls r1, r1, #3
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r1, r3
	adds r0, r0, r1
	mov sl, r0
	mov r4, sl
	movs r6, #0
	cmp r6, r7
	bhs _08000F8C
	movs r0, #0x11
	rsbs r0, r0, #0
	mov sb, r0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov r8, r1
	movs r3, #0xd
	rsbs r3, r3, #0
	mov ip, r3
	adds r5, r2, #0
_08000F40:
	ldrb r0, [r4, #3]
	mov r3, sb
	ands r3, r0
	mov r0, r8
	ands r3, r0
	ldrb r0, [r4, #1]
	mov r2, r8
	ands r2, r0
	mov r1, ip
	ands r2, r1
	mov r0, sb
	ands r2, r0
	ldrb r1, [r4, #5]
	mov r0, ip
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #5]
	movs r1, #4
	rsbs r1, r1, #0
	ands r2, r1
	strb r2, [r4, #1]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r3, r0
	strb r3, [r4, #3]
	movs r0, #0
	strh r0, [r4, #6]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #8
	ldrh r0, [r5]
	adds r0, #1
	ldrh r1, [r5]
	strh r0, [r5]
	cmp r6, r7
	blo _08000F40
_08000F8C:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000F9C: .4byte 0x00002C48

	thumb_func_start sub_08000FA0
sub_08000FA0: @ 0x08000FA0
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r1, #0
	bl sub_08000F04
	adds r3, r0, #0
	subs r3, #8
	movs r2, #0
	cmp r2, r4
	bhs _08000FDC
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	lsls r5, r0, #2
	movs r6, #0xd
	rsbs r6, r6, #0
_08000FC6:
	ldrb r0, [r3, #5]
	adds r1, r6, #0
	ands r1, r0
	orrs r1, r5
	strb r1, [r3, #5]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r3, #8
	cmp r2, r4
	blo _08000FC6
_08000FDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000FE4
sub_08000FE4: @ 0x08000FE4
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08001008 @ =0x00002C4A
	adds r3, r0, r2
	ldrh r2, [r3]
	lsls r2, r2, #3
	movs r4, #0x94
	lsls r4, r4, #6
	adds r2, r2, r4
	adds r0, r0, r2
	ldrh r2, [r3]
	adds r1, r1, r2
	ldrh r2, [r3]
	strh r1, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001008: .4byte 0x00002C4A

	thumb_func_start sub_0800100C
sub_0800100C: @ 0x0800100C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	add r0, sp, #8
	movs r1, #1
	strh r1, [r0]
	adds r4, r0, #0
	b _08001034
_0800102A:
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #1
	strh r0, [r4]
_08001034:
	ldr r0, [sp, #0x10]
	movs r1, #9
	bl sub_08091AE0
	ldrh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800102A
	adds r1, r4, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800111E
	mov r0, sp
	adds r0, #0xa
	str r0, [sp, #0x14]
	mov r8, r1
_08001056:
	ldrh r0, [r1]
	ldr r1, [sp, #0x14]
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bhs _08001108
	add r0, sp, #0xc
	mov sb, r0
	mov ip, r1
	mov r6, sb
_0800106C:
	mov r1, ip
	ldrh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	mov r4, r8
	ldrh r1, [r2]
	ldrh r0, [r4]
	cmp r1, r0
	blo _080010F8
	ldr r3, _08001130 @ =0x040000D4
	ldr r0, _08001134 @ =0x80000004
	mov sl, r0
	adds r7, r6, #0
_08001086:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r5
	subs r0, #8
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bls _080010F8
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3]
	mov r1, sp
	str r1, [r3, #4]
	mov r2, sl
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r6]
	adds r2, r4, #0
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3]
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3, #4]
	mov r0, sl
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, sp
	str r1, [r3]
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3, #4]
	mov r0, sl
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r6]
	ldrh r0, [r4]
	subs r1, r1, r0
	strh r1, [r6]
	ldrh r1, [r7]
	ldrh r0, [r2]
	cmp r1, r0
	bhs _08001086
_080010F8:
	mov r1, ip
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	blo _0800106C
_08001108:
	mov r1, r8
	ldrh r0, [r1]
	movs r1, #3
	bl sub_08091AE0
	mov r2, r8
	strh r0, [r2]
	mov r1, r8
	ldrh r0, [r2]
	cmp r0, #0
	bne _08001056
_0800111E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001130: .4byte 0x040000D4
_08001134: .4byte 0x80000004

	thumb_func_start sub_08001138
sub_08001138: @ 0x08001138
	push {lr}
	lsls r1, r1, #0x10
	ldr r2, _08001150 @ =gUnknown_02015E38
	str r0, [r2]
	ldr r0, _08001154 @ =0xFFFF0000
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_08001158
	pop {r0}
	bx r0
	.align 2, 0
_08001150: .4byte gUnknown_02015E38
_08001154: .4byte 0xFFFF0000

	thumb_func_start sub_08001158
sub_08001158: @ 0x08001158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	add r0, sp, #8
	mov r8, r0
	mov r7, sp
	adds r7, #0xa
	ldr r6, _08001194 @ =0x040000D4
_0800117A:
	mov r0, sl
	add r0, sb
	asrs r0, r0, #1
	lsls r0, r0, #3
	ldr r2, _08001198 @ =gUnknown_02015E38
	ldr r1, [r2]
	adds r4, r1, r0
	mov r0, sl
	mov r3, sp
	strh r0, [r3, #8]
	mov r1, sb
	strh r1, [r3, #0xa]
	b _080011F2
	.align 2, 0
_08001194: .4byte 0x040000D4
_08001198: .4byte gUnknown_02015E38
_0800119C:
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldr r3, _080011FC @ =gUnknown_02015E38
	ldr r1, [r3]
	adds r0, r1, r0
	str r0, [r6]
	mov r0, sp
	str r0, [r6, #4]
	ldr r2, _08001200 @ =0x80000004
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r1, r0
	str r0, [r6]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r1, r0
	str r0, [r6, #4]
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, sp
	str r0, [r6]
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r6, #4]
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldrh r1, [r3]
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	bhi _08001262
_080011F2:
	add r2, sp, #8
	mov r1, sp
	ldrh r0, [r1, #8]
	b _0800120E
	.align 2, 0
_080011FC: .4byte gUnknown_02015E38
_08001200: .4byte 0x80000004
_08001204:
	adds r1, r2, #0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
_0800120E:
	ldr r3, _08001234 @ =gUnknown_02015E38
	ldr r1, [r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	blo _08001204
	mov r2, sp
	adds r2, #0xa
	mov r1, sp
	ldrh r0, [r1, #0xa]
	ldr r3, _08001234 @ =gUnknown_02015E38
	b _08001242
	.align 2, 0
_08001234: .4byte gUnknown_02015E38
_08001238:
	adds r1, r2, #0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
_08001242:
	ldr r1, [r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bhi _08001238
	mov r2, sp
	ldrh r1, [r2, #8]
	ldrh r0, [r2, #0xa]
	cmp r1, r0
	bls _0800119C
_08001262:
	adds r5, r7, #0
	ldrh r1, [r5]
	mov r3, sl
	subs r1, r1, r3
	mov r4, r8
	ldrh r0, [r4]
	mov r2, sb
	subs r0, r2, r0
	cmp r1, r0
	bge _0800128E
	ldrh r0, [r5]
	cmp sl, r0
	bhs _08001284
	ldrh r1, [r5]
	mov r0, sl
	bl sub_08001158
_08001284:
	ldrh r0, [r4]
	mov sl, r0
	mov r3, sb
	strh r3, [r5]
	b _080012A6
_0800128E:
	ldrh r0, [r4]
	cmp r0, sb
	bhs _0800129C
	ldrh r0, [r4]
	mov r1, sb
	bl sub_08001158
_0800129C:
	ldrh r0, [r7]
	mov sb, r0
	mov r1, sl
	mov r0, r8
	strh r1, [r0]
_080012A6:
	cmp sl, sb
	bhs _080012AC
	b _0800117A
_080012AC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080012BC
sub_080012BC: @ 0x080012BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov r0, sp
	strh r3, [r0]
	cmp r5, #0
	beq _0800133C
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080012DE
	adds r0, #7
_080012DE:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _08001338 @ =0xFFFF0000
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080012F6
	adds r0, #7
_080012F6:
	asrs r0, r0, #3
	add r4, sp, #4
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r4, #6]
	cmp r6, r0
	bhs _08001352
_0800131E:
	ldrh r1, [r4, #4]
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080019DC
	adds r5, #0x40
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r6, r1
	blo _0800131E
	b _08001352
	.align 2, 0
_08001338: .4byte 0xFFFF0000
_0800133C:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080019DC
_08001352:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800136A
	lsls r1, r7, #1
	movs r0, #0xb1
	lsls r0, r0, #6
	add r0, r8
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_0800136A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08001378
sub_08001378: @ 0x08001378
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #1
	beq _080013A4
	cmp r1, #1
	bgt _08001396
	cmp r1, #0
	beq _080013A0
	b _080013BC
_08001396:
	cmp r4, #2
	beq _080013AC
	cmp r4, #3
	beq _080013B4
	b _080013BC
_080013A0:
	adds r1, r0, #0
	b _080013C0
_080013A4:
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r0, r4
	b _080013C0
_080013AC:
	movs r4, #0x80
	lsls r4, r4, #5
	adds r1, r0, r4
	b _080013C0
_080013B4:
	movs r4, #0xc0
	lsls r4, r4, #5
	adds r1, r0, r4
	b _080013C0
_080013BC:
	movs r0, #0
	b _080013CA
_080013C0:
	lsls r0, r3, #5
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r1, #0
_080013CA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080013D0
sub_080013D0: @ 0x080013D0
	push {r4, r5, r6, r7, lr}
	ldrh r1, [r0, #8]
	movs r1, #0
	strh r1, [r0, #8]
	ldrh r2, [r0, #0x22]
	strh r1, [r0, #0x22]
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	ldrh r2, [r0, #0x26]
	strh r1, [r0, #0x26]
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	ldrh r2, [r0, #0x2a]
	strh r1, [r0, #0x2a]
	ldrh r2, [r0, #0x2c]
	strh r1, [r0, #0x2c]
	ldrh r2, [r0, #0x2e]
	strh r1, [r0, #0x2e]
	ldrh r2, [r0, #0x30]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0x30]
	ldrh r3, [r0, #0x38]
	strh r2, [r0, #0x38]
	ldrh r3, [r0, #0x32]
	strh r1, [r0, #0x32]
	ldrh r3, [r0, #0x3a]
	strh r1, [r0, #0x3a]
	ldrh r3, [r0, #0x34]
	strh r1, [r0, #0x34]
	ldrh r3, [r0, #0x3c]
	strh r1, [r0, #0x3c]
	ldrh r3, [r0, #0x36]
	strh r2, [r0, #0x36]
	ldrh r3, [r0, #0x3e]
	strh r2, [r0, #0x3e]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	movs r3, #0
	adds r7, r0, #0
	adds r7, #0xa
	movs r4, #0
	adds r6, r0, #0
	adds r6, #0x12
	adds r5, r0, #0
	adds r5, #0x1a
_08001430:
	lsls r1, r3, #1
	adds r0, r7, r1
	ldrh r2, [r0]
	strh r4, [r0]
	adds r0, r6, r1
	ldrh r2, [r0]
	strh r4, [r0]
	adds r1, r5, r1
	ldrh r0, [r1]
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08001430
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08001454
sub_08001454: @ 0x08001454
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, _08001510 @ =0x00002C46
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r6, [r0]
	ldrh r1, [r0]
	ldr r2, _08001514 @ =0x00002C44
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _08001518 @ =0x00002C42
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080019DC
	adds r0, r4, r5
	adds r1, r5, #0
	bl sub_080019DC
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_080019DC
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r4, r2
	adds r1, r5, #0
	bl sub_080019DC
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, #0
	bl sub_080019DC
	ldr r1, _0800151C @ =0x00002C48
	adds r0, r4, r1
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r2, _08001520 @ =0x00002C4A
	adds r0, r4, r2
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r0, _08001524 @ =0x00002C4C
	adds r1, r4, r0
	ldrb r0, [r1]
	mov r2, r8
	strb r2, [r1]
	ldr r2, _08001528 @ =0x00002C4D
	adds r0, r4, r2
	ldrb r2, [r0]
	mov r2, r8
	strb r2, [r0]
	ldr r2, _0800152C @ =0x00002C4E
	adds r4, r4, r2
	ldrb r2, [r4]
	mov r2, r8
	strb r2, [r4]
	ldrb r2, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0xa
	orrs r1, r0
	ldrh r0, [r5]
	strh r1, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001510: .4byte 0x00002C46
_08001514: .4byte 0x00002C44
_08001518: .4byte 0x00002C42
_0800151C: .4byte 0x00002C48
_08001520: .4byte 0x00002C4A
_08001524: .4byte 0x00002C4C
_08001528: .4byte 0x00002C4D
_0800152C: .4byte 0x00002C4E

	thumb_func_start sub_08001530
sub_08001530: @ 0x08001530
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, _080015EC @ =0x00002C46
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r6, [r0]
	ldrh r1, [r0]
	ldr r2, _080015F0 @ =0x00002C44
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _080015F4 @ =0x00002C42
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	adds r0, r4, r5
	adds r1, r5, #0
	bl sub_08001ACC
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_08001ACC
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r4, r2
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, #0
	bl sub_08001ACC
	ldr r1, _080015F8 @ =0x00002C48
	adds r0, r4, r1
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r2, _080015FC @ =0x00002C4A
	adds r0, r4, r2
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r0, _08001600 @ =0x00002C4C
	adds r1, r4, r0
	ldrb r0, [r1]
	mov r2, r8
	strb r2, [r1]
	ldr r2, _08001604 @ =0x00002C4D
	adds r0, r4, r2
	ldrb r2, [r0]
	mov r2, r8
	strb r2, [r0]
	ldr r2, _08001608 @ =0x00002C4E
	adds r4, r4, r2
	ldrb r2, [r4]
	mov r2, r8
	strb r2, [r4]
	ldrb r2, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0xa
	orrs r1, r0
	ldrh r0, [r5]
	strh r1, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080015EC: .4byte 0x00002C46
_080015F0: .4byte 0x00002C44
_080015F4: .4byte 0x00002C42
_080015F8: .4byte 0x00002C48
_080015FC: .4byte 0x00002C4A
_08001600: .4byte 0x00002C4C
_08001604: .4byte 0x00002C4D
_08001608: .4byte 0x00002C4E

	thumb_func_start sub_0800160C
sub_0800160C: @ 0x0800160C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r2, r2, #0xb
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r2, r2, r1
	adds r4, r4, r2
	lsrs r3, r3, #0x12
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08090F74
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08001630
sub_08001630: @ 0x08001630
	ldrb r3, [r0, #0xe]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r3
	strb r2, [r0, #0xe]
	movs r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr

	thumb_func_start sub_0800164C
sub_0800164C: @ 0x0800164C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08001674 @ =0x04000130
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x16
	lsrs r4, r0, #0x16
	ldrb r1, [r3, #0xe]
	movs r0, #1
	orrs r1, r0
	strb r1, [r3, #0xe]
	cmp r4, #0
	bne _08001678
	strh r4, [r3, #4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r3, #0xe]
	strh r4, [r3, #0xc]
	b _0800169C
	.align 2, 0
_08001674: .4byte 0x04000130
_08001678:
	ldrh r0, [r3, #4]
	cmp r0, #0
	bne _08001684
	movs r0, #0x14
	strh r0, [r3, #4]
	b _0800169C
_08001684:
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001694
	movs r0, #6
	strh r0, [r3, #4]
	b _0800169C
_08001694:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r3, #0xe]
_0800169C:
	ldrb r1, [r3, #0xe]
	movs r0, #1
	ands r0, r1
	adds r5, r1, #0
	ldrh r1, [r3, #2]
	cmp r0, #0
	beq _080016BC
	ldrh r0, [r3, #0xa]
	cmp r1, r0
	bne _080016B6
	ldrh r0, [r3, #0xc]
	adds r0, #1
	b _080016B8
_080016B6:
	movs r0, #0
_080016B8:
	strh r0, [r3, #0xc]
	strh r1, [r3, #0xa]
_080016BC:
	adds r2, r4, #0
	bics r2, r1
	strh r2, [r3]
	strh r4, [r3, #2]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080016D8
	ldrh r0, [r3, #8]
	orrs r2, r0
	strh r2, [r3]
	movs r0, #0
	strh r0, [r3, #8]
	b _080016DE
_080016D8:
	ldrh r0, [r3, #8]
	orrs r2, r0
	strh r2, [r3, #8]
_080016DE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080016E4
sub_080016E4: @ 0x080016E4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #6]
	cmp r0, #3
	bne _08001706
	ldr r3, _08001714 @ =gUnknown_02004848
	ldrb r2, [r3, #1]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _08001706
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08001710
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #1]
_08001706:
	ldrh r0, [r1, #2]
	cmp r0, #0xf
	bne _08001710
	bl sub_08001718
_08001710:
	pop {r0}
	bx r0
	.align 2, 0
_08001714: .4byte gUnknown_02004848

	thumb_func_start sub_08001718
sub_08001718: @ 0x08001718
	push {lr}
	bl sub_0808FB50
	bl sub_0808FA10
	bl sub_08000D88
	ldr r0, _0800173C @ =0x04000084
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08001740 @ =0x04000208
	strh r1, [r0]
	movs r0, #0xfd
	bl sub_08090F90
	pop {r0}
	bx r0
	.align 2, 0
_0800173C: .4byte 0x04000084
_08001740: .4byte 0x04000208

	thumb_func_start sub_08001744
sub_08001744: @ 0x08001744
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r2, [sp]
	movs r1, #0x80
	orrs r3, r1
	str r3, [sp, #4]
	movs r1, #0xf
	movs r2, #0
	adds r3, r4, #0
	bl sub_08001814
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08001778
sub_08001778: @ 0x08001778
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r2, [sp]
	movs r1, #0x80
	orrs r3, r1
	str r3, [sp, #4]
	movs r1, #0
	movs r2, #0xf
	adds r3, r4, #0
	bl sub_08001814
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080017AC
sub_080017AC: @ 0x080017AC
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	subs r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r2, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	movs r1, #0xf
	movs r2, #0
	adds r3, r4, #0
	bl sub_08001814
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080017E0
sub_080017E0: @ 0x080017E0
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	subs r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r2, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0xf
	adds r3, r4, #0
	bl sub_08001814
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08001814
sub_08001814: @ 0x08001814
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, sp
	muls r0, r4, r0
	muls r2, r3, r2
	adds r0, r0, r2
	bl sub_08091970
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6]
	movs r0, #0
	strh r5, [r6]
	ldrh r1, [r6, #2]
	strh r0, [r6, #2]
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800186C
sub_0800186C: @ 0x0800186C
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bhi _080018D4
	ldr r1, _080018A4 @ =0x04000132
	ldr r2, _080018A8 @ =0x00008304
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _080018AC @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	mov r2, sp
	adds r1, #0xce
	ldrh r0, [r1]
	strh r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3]
	cmp r4, #0
	beq _080018B0
	cmp r4, #1
	beq _080018BC
	b _080018BE
	.align 2, 0
_080018A4: .4byte 0x04000132
_080018A8: .4byte 0x00008304
_080018AC: .4byte 0x04000208
_080018B0:
	bl sub_08090FA8
	svc #3
	bl sub_08090FB0
	b _080018BE
_080018BC:
	svc #2
_080018BE:
	ldr r2, _080018DC @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080018E0 @ =0x04000200
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_08001960
_080018D4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080018DC: .4byte 0x04000208
_080018E0: .4byte 0x04000200

	thumb_func_start sub_080018E4
sub_080018E4: @ 0x080018E4
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
	bx lr

	thumb_func_start sub_080018F4
sub_080018F4: @ 0x080018F4
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08001908 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08001908: .4byte 0x00007FFF

	thumb_func_start sub_0800190C
sub_0800190C: @ 0x0800190C
	push {lr}
	adds r2, r1, #0
	adds r1, r0, #0
	adds r1, #8
	str r1, [r0, #0x10]
	str r2, [r0]
	adds r1, r2, #2
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r2, #0
	bl sub_080019DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08001930
sub_08001930: @ 0x08001930
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	mov r0, sp
	strh r1, [r0]
	adds r1, r2, #0
	ldr r0, [r1, #0x10]
	cmp r0, r1
	bne _08001944
	adds r1, #8
_08001944:
	str r1, [r2, #0x10]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08001958
	ldr r0, [r1, #4]
	movs r1, #0xa0
	lsls r1, r1, #1
	bl sub_080019DC
_08001958:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08001960
sub_08001960: @ 0x08001960
	push {lr}
	bl sub_08090FBC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800196C
sub_0800196C: @ 0x0800196C
	push {lr}
	ldr r1, _0800199C @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080019A0 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08001996
_0800198E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800198E
_08001996:
	pop {r0}
	bx r0
	.align 2, 0
_0800199C: .4byte 0x040000D4
_080019A0: .4byte 0x80000200

	thumb_func_start sub_080019A4
sub_080019A4: @ 0x080019A4
	push {lr}
	ldr r1, _080019D4 @ =0x040000D4
	movs r2, #0x9c
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080019D8 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080019CE
_080019C6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080019C6
_080019CE:
	pop {r0}
	bx r0
	.align 2, 0
_080019D4: .4byte 0x040000D4
_080019D8: .4byte 0x80000200

	thumb_func_start sub_080019DC
sub_080019DC: @ 0x080019DC
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r2, _08001A10 @ =0x040000D4
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08001A0A
_08001A02:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001A02
_08001A0A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08001A10: .4byte 0x040000D4

	thumb_func_start sub_08001A14
sub_08001A14: @ 0x08001A14
	push {lr}
	ldr r3, _08001A34 @ =0x040000D4
	str r0, [r3]
	str r1, [r3, #4]
	lsrs r2, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r2, r1
	str r2, [r3, #8]
	ldr r0, [r3, #8]
_08001A28:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001A28
	pop {r0}
	bx r0
	.align 2, 0
_08001A34: .4byte 0x040000D4

	thumb_func_start sub_08001A38
sub_08001A38: @ 0x08001A38
	push {lr}
	sub sp, #4
	mov r3, sp
	strh r2, [r3]
	ldr r2, _08001A6C @ =0x040000D4
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08001A64
_08001A5C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001A5C
_08001A64:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08001A6C: .4byte 0x040000D4

	thumb_func_start sub_08001A70
sub_08001A70: @ 0x08001A70
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r2, _08001A90 @ =0x040000B0
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08001A90: .4byte 0x040000B0

	thumb_func_start sub_08001A94
sub_08001A94: @ 0x08001A94
	ldr r3, _08001AA8 @ =0x040000B0
	str r0, [r3]
	str r1, [r3, #4]
	lsrs r2, r2, #2
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	bx lr
	.align 2, 0
_08001AA8: .4byte 0x040000B0

	thumb_func_start sub_08001AAC
sub_08001AAC: @ 0x08001AAC
	sub sp, #4
	str r2, [sp]
	ldr r2, _08001AC8 @ =0x040000B0
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08001AC8: .4byte 0x040000B0

	thumb_func_start sub_08001ACC
sub_08001ACC: @ 0x08001ACC
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _08001AE4
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08001AFE
_08001AE4:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r3, #0
	bl CpuSet
	b _08001B12
_08001AFE:
	str r0, [sp, #4]
	add r0, sp, #4
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r2, r1
	adds r1, r3, #0
	bl sub_08090F74
_08001B12:
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_08001B18
sub_08001B18: @ 0x08001B18
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _08001B36
	movs r4, #3
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	bne _08001B36
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08001B42
_08001B36:
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r3, #0
	bl CpuSet
	b _08001B4C
_08001B42:
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	adds r0, r3, #0
	bl sub_08090F74
_08001B4C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08001B54
sub_08001B54: @ 0x08001B54
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08001B6A
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08001B82
_08001B6A:
	mov r0, sp
	strh r2, [r0]
	lsls r2, r1, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r3, #0
	bl CpuSet
	b _08001B96
_08001B82:
	str r2, [sp, #4]
	add r0, sp, #4
	lsls r2, r1, #9
	lsrs r2, r2, #0xb
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r2, r1
	adds r1, r3, #0
	bl sub_08090F74
_08001B96:
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_08001B9C
sub_08001B9C: @ 0x08001B9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08001BC8 @ =gUnknown_08D1EE78
	adds r0, r6, #0
	movs r1, #1
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800289C
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001BC8: .4byte gUnknown_08D1EE78

	thumb_func_start sub_08001BCC
sub_08001BCC: @ 0x08001BCC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08001BF8 @ =gUnknown_08D1EE78
	adds r0, r6, #0
	movs r1, #4
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #3
	bl sub_0800289C
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001BF8: .4byte gUnknown_08D1EE78

	thumb_func_start sub_08001BFC
sub_08001BFC: @ 0x08001BFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08001C28 @ =gUnknown_08D1EE78
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #9
	bl sub_0800289C
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001C28: .4byte gUnknown_08D1EE78

	thumb_func_start sub_08001C2C
sub_08001C2C: @ 0x08001C2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08001C58 @ =gUnknown_08D1EE78
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xe
	bl sub_0800289C
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001C58: .4byte gUnknown_08D1EE78

	thumb_func_start sub_08001C5C
sub_08001C5C: @ 0x08001C5C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r2, #7
	bne _08001C78
	cmp r5, #0xc7
	bne _08001D10
	ldr r0, _08001C74 @ =gUnknown_02004256
	b _08001D22
	.align 2, 0
_08001C74: .4byte gUnknown_02004256
_08001C78:
	cmp r2, #2
	bne _08001C88
	cmp r5, #0x5c
	bne _08001D10
	ldr r0, _08001C84 @ =gUnknown_02004F02
	b _08001D22
	.align 2, 0
_08001C84: .4byte gUnknown_02004F02
_08001C88:
	cmp r2, #8
	bne _08001D10
	cmp r5, #4
	bgt _08001D10
	cmp r5, #1
	blt _08001D10
	movs r0, #0x1a
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _08001D00 @ =gUnknown_02015E26
	adds r4, r1, r0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_08001B54
	movs r0, #0xeb
	strh r0, [r4]
	movs r0, #0xe6
	strh r0, [r4, #2]
	adds r0, r4, #4
	ldr r6, _08001D04 @ =gUnknown_02004F14
	adds r1, r6, #0
	movs r2, #9
	bl sub_08002420
	movs r2, #0
	ldrh r0, [r6]
	ldr r1, _08001D08 @ =0x0000FFFF
	subs r7, r5, #1
	cmp r0, r1
	beq _08001CEC
	adds r3, r6, #0
	adds r5, r1, #0
_08001CCE:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #8
	bhi _08001CEC
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r5
	bne _08001CCE
_08001CEC:
	lsls r1, r2, #1
	adds r1, r1, r4
	ldr r2, _08001D0C @ =gUnknown_08CDB8B4
	lsls r0, r7, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	adds r0, r4, #0
	b _08001D22
	.align 2, 0
_08001D00: .4byte gUnknown_02015E26
_08001D04: .4byte gUnknown_02004F14
_08001D08: .4byte 0x0000FFFF
_08001D0C: .4byte gUnknown_08CDB8B4
_08001D10:
	ldr r0, _08001D28 @ =gUnknown_08D1EE78
	adds r1, r2, #0
	bl sub_0800289C
	ldrh r2, [r0]
	lsls r1, r5, #1
	muls r1, r2, r1
	adds r1, #4
	adds r0, r0, r1
_08001D22:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001D28: .4byte gUnknown_08D1EE78

	thumb_func_start sub_08001D2C
sub_08001D2C: @ 0x08001D2C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08001D4C @ =gUnknown_080CC4E8
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0xbc
	ldrb r0, [r1]
	cmp r0, #0
	bne _08001D50
	movs r0, #1
	b _08001D52
	.align 2, 0
_08001D4C: .4byte gUnknown_080CC4E8
_08001D50:
	movs r0, #0
_08001D52:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001D58
sub_08001D58: @ 0x08001D58
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08001D66
	cmp r0, #4
	bne _08001D6A
_08001D66:
	movs r0, #1
	b _08001D6C
_08001D6A:
	movs r0, #0
_08001D6C:
	pop {r1}
	bx r1

	thumb_func_start sub_08001D70
sub_08001D70: @ 0x08001D70
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	ldr r3, _08001D9C @ =gUnknown_08CDB8BC
	movs r5, #1
	rsbs r5, r5, #0
_08001D7E:
	lsls r0, r2, #1
	adds r1, r0, r3
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r5
	beq _08001DAA
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r4
	beq _08001DA0
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08001D7E
	.align 2, 0
_08001D9C: .4byte gUnknown_08CDB8BC
_08001DA0:
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
_08001DAA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08001DB0
sub_08001DB0: @ 0x08001DB0
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08001DC4 @ =gUnknown_08D1EE78
	bl sub_0800289C
	ldrh r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08001DC4: .4byte gUnknown_08D1EE78

	thumb_func_start sub_08001DC8
sub_08001DC8: @ 0x08001DC8
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp]
	lsrs r4, r4, #1
	movs r2, #0
	cmp r2, r4
	bhs _08001DEC
_08001DDC:
	ldrh r1, [r3]
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	adds r2, #1
	adds r3, #2
	cmp r2, r4
	blo _08001DDC
_08001DEC:
	ldr r0, [sp]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001DF8
sub_08001DF8: @ 0x08001DF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsrs r2, r2, #6
	ldr r0, _08001E3C @ =gUnknown_08CDB9F8
	adds r6, r2, r0
	movs r0, #0
	cmp r0, r7
	bhs _08001E36
_08001E10:
	movs r2, #0
	adds r3, r0, #1
_08001E14:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #1
	cmp r2, #7
	bls _08001E14
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	blo _08001E10
_08001E36:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001E3C: .4byte gUnknown_08CDB9F8

	thumb_func_start sub_08001E40
sub_08001E40: @ 0x08001E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsrs r2, r2, #6
	ldr r0, _08001EA0 @ =gUnknown_08CDB9F8
	adds r7, r2, r0
	movs r1, #0xf0
	lsls r1, r1, #6
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0
	cmp r0, ip
	bhs _08001E94
_08001E66:
	movs r3, #0
	adds r6, r0, #1
_08001E6A:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r2, r7, r0
	add r0, r8
	ldr r1, [r0]
	ldr r0, [r5]
	bics r0, r1
	str r0, [r5]
	ldr r1, [r2]
	orrs r0, r1
	stm r5!, {r0}
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #1
	cmp r3, #7
	bls _08001E6A
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, ip
	blo _08001E66
_08001E94:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001EA0: .4byte gUnknown_08CDB9F8

	thumb_func_start sub_08001EA4
sub_08001EA4: @ 0x08001EA4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsrs r2, r2, #6
	ldr r0, _08001F4C @ =gUnknown_08CDF9F8
	adds r2, r2, r0
	movs r3, #0
	cmp r3, r6
	bhs _08001F46
_08001EBC:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	blo _08001EBC
_08001F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001F4C: .4byte gUnknown_08CDF9F8

	thumb_func_start sub_08001F50
sub_08001F50: @ 0x08001F50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsrs r2, r2, #6
	ldr r0, _08001FB0 @ =gUnknown_08CDF9F8
	adds r7, r2, r0
	movs r1, #0xf0
	lsls r1, r1, #6
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0
	cmp r0, ip
	bhs _08001FA4
_08001F76:
	movs r3, #0
	adds r6, r0, #1
_08001F7A:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r2, r7, r0
	add r0, r8
	ldr r1, [r0]
	ldr r0, [r5]
	bics r0, r1
	str r0, [r5]
	ldr r1, [r2]
	orrs r0, r1
	stm r5!, {r0}
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #1
	cmp r3, #7
	bls _08001F7A
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, ip
	blo _08001F76
_08001FA4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001FB0: .4byte gUnknown_08CDF9F8

	thumb_func_start sub_08001FB4
sub_08001FB4: @ 0x08001FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov r8, r0
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	mov ip, r8
	mov r7, sb
	mov r6, sp
	add r4, sp, #0x18
	movs r3, #0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0x48]
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x38]
	adds r0, #0x20
	str r0, [sp, #0x4c]
	subs r1, #0x1c
	str r1, [sp, #0x30]
_08001FEC:
	adds r1, r6, r3
	mov r2, ip
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r5
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r5
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _08001FEC
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x48]
	movs r3, #0
	movs r0, #8
	add r0, r8
	mov sl, r0
	mov r1, sb
	adds r1, #8
	str r1, [sp, #0x44]
	mov r2, r8
	adds r2, #4
	str r2, [sp, #0x3c]
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x40]
	movs r0, #8
	subs r2, r0, r5
_0800202E:
	adds r1, r6, r3
	str r1, [sp, #0x50]
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	asrs r0, r2
	ldr r1, [sp, #0x50]
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	asrs r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800202E
	mov ip, sl
	ldr r7, [sp, #0x44]
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x48]
	movs r3, #0
_0800205C:
	adds r2, r6, r3
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r2, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800205C
	ldr r6, [sp, #0x38]
	ldr r4, [sp, #0x4c]
	movs r3, #0
	movs r0, #8
	subs r2, r0, r5
_0800208E:
	adds r1, r6, r3
	mov r5, ip
	adds r0, r5, r3
	ldrb r0, [r0]
	asrs r0, r2
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	asrs r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800208E
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r0, [sp, #0x18]
	mov r2, sb
	str r0, [r2]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r5, [sp, #0x30]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x3c]
	str r0, [r1, #4]
	adds r2, r5, #0
	adds r2, #8
	adds r3, r1, #0
	adds r3, #8
	ldr r0, [sp, #0x20]
	ldr r5, [sp, #0x40]
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #8
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r0, [sp, #0x24]
	stm r1!, {r0}
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r0, [sp, #0x28]
	stm r1!, {r0}
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [sp, #0x2c]
	str r0, [r1]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08002104
sub_08002104: @ 0x08002104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov r8, r0
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	mov ip, r8
	mov r7, sb
	mov r6, sp
	add r4, sp, #0x18
	movs r3, #0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0x48]
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x38]
	adds r0, #0x20
	str r0, [sp, #0x4c]
	subs r1, #0x1c
	str r1, [sp, #0x30]
_0800213C:
	adds r1, r6, r3
	mov r2, ip
	adds r0, r2, r3
	ldrb r0, [r0]
	asrs r0, r5
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	asrs r0, r5
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800213C
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x48]
	movs r3, #0
	movs r0, #8
	add r0, r8
	mov sl, r0
	mov r1, sb
	adds r1, #8
	str r1, [sp, #0x44]
	mov r2, r8
	adds r2, #4
	str r2, [sp, #0x3c]
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x40]
	movs r0, #8
	subs r2, r0, r5
_0800217E:
	adds r1, r6, r3
	str r1, [sp, #0x50]
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r2
	ldr r1, [sp, #0x50]
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800217E
	mov ip, sl
	ldr r7, [sp, #0x44]
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x48]
	movs r3, #0
_080021AC:
	adds r2, r6, r3
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	asrs r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r2, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	asrs r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _080021AC
	ldr r6, [sp, #0x38]
	ldr r4, [sp, #0x4c]
	movs r3, #0
	movs r0, #8
	subs r2, r0, r5
_080021DE:
	adds r1, r6, r3
	mov r5, ip
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r2
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _080021DE
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r0, [sp, #0x18]
	mov r2, sb
	str r0, [r2]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r5, [sp, #0x30]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x3c]
	str r0, [r1, #4]
	adds r2, r5, #0
	adds r2, #8
	adds r3, r1, #0
	adds r3, #8
	ldr r0, [sp, #0x20]
	ldr r5, [sp, #0x40]
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #8
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r0, [sp, #0x24]
	stm r1!, {r0}
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r0, [sp, #0x28]
	stm r1!, {r0}
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [sp, #0x2c]
	str r0, [r1]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08002254
sub_08002254: @ 0x08002254
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #0
	bne _08002264
	b _0800239C
_08002264:
	cmp r0, #2
	beq _0800226C
_08002268:
	movs r0, #0xc
	b _0800239E
_0800226C:
	subs r0, r1, #1
	cmp r0, #0x3e
	bls _08002274
	b _0800239C
_08002274:
	lsls r0, r0, #2
	ldr r1, _08002280 @ =_08002284
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002280: .4byte _08002284
_08002284: @ jump table
	.4byte _08002398 @ case 0
	.4byte _08002388 @ case 1
	.4byte _08002398 @ case 2
	.4byte _08002398 @ case 3
	.4byte _08002398 @ case 4
	.4byte _08002394 @ case 5
	.4byte _0800239C @ case 6
	.4byte _08002380 @ case 7
	.4byte _08002268 @ case 8
	.4byte _08002398 @ case 9
	.4byte _0800239C @ case 10
	.4byte _08002384 @ case 11
	.4byte _08002268 @ case 12
	.4byte _08002268 @ case 13
	.4byte _08002398 @ case 14
	.4byte _0800239C @ case 15
	.4byte _0800239C @ case 16
	.4byte _08002398 @ case 17
	.4byte _08002398 @ case 18
	.4byte _0800238C @ case 19
	.4byte _0800239C @ case 20
	.4byte _08002398 @ case 21
	.4byte _08002268 @ case 22
	.4byte _08002268 @ case 23
	.4byte _08002268 @ case 24
	.4byte _08002398 @ case 25
	.4byte _08002268 @ case 26
	.4byte _08002268 @ case 27
	.4byte _08002394 @ case 28
	.4byte _08002398 @ case 29
	.4byte _08002394 @ case 30
	.4byte _08002268 @ case 31
	.4byte _08002268 @ case 32
	.4byte _08002398 @ case 33
	.4byte _08002388 @ case 34
	.4byte _08002268 @ case 35
	.4byte _08002398 @ case 36
	.4byte _08002390 @ case 37
	.4byte _08002394 @ case 38
	.4byte _08002388 @ case 39
	.4byte _08002398 @ case 40
	.4byte _08002268 @ case 41
	.4byte _0800239C @ case 42
	.4byte _08002268 @ case 43
	.4byte _0800239C @ case 44
	.4byte _08002398 @ case 45
	.4byte _0800239C @ case 46
	.4byte _0800239C @ case 47
	.4byte _0800239C @ case 48
	.4byte _0800239C @ case 49
	.4byte _0800239C @ case 50
	.4byte _0800239C @ case 51
	.4byte _0800239C @ case 52
	.4byte _0800239C @ case 53
	.4byte _0800239C @ case 54
	.4byte _0800239C @ case 55
	.4byte _0800239C @ case 56
	.4byte _0800239C @ case 57
	.4byte _08002388 @ case 58
	.4byte _08002388 @ case 59
	.4byte _08002388 @ case 60
	.4byte _0800239C @ case 61
	.4byte _08002388 @ case 62
_08002380:
	movs r0, #4
	b _0800239E
_08002384:
	movs r0, #5
	b _0800239E
_08002388:
	movs r0, #6
	b _0800239E
_0800238C:
	movs r0, #7
	b _0800239E
_08002390:
	movs r0, #8
	b _0800239E
_08002394:
	movs r0, #9
	b _0800239E
_08002398:
	movs r0, #0xb
	b _0800239E
_0800239C:
	movs r0, #0xa
_0800239E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080023A4
sub_080023A4: @ 0x080023A4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt _080023D2
	ldrh r4, [r2, #4]
	adds r0, r0, r4
	cmp r1, r0
	bgt _080023D2
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r4, #2
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt _080023D2
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	cmp r1, r0
	ble _080023D6
_080023D2:
	movs r0, #0
	b _080023D8
_080023D6:
	movs r0, #1
_080023D8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080023E0
sub_080023E0: @ 0x080023E0
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	ldrsh r3, [r2, r0]
	movs r0, #0
	ldrsh r4, [r1, r0]
	ldrh r0, [r1, #4]
	adds r0, r4, r0
	cmp r3, r0
	bgt _08002418
	ldrh r0, [r2, #4]
	adds r0, r3, r0
	cmp r0, r4
	blt _08002418
	movs r0, #2
	ldrsh r3, [r2, r0]
	movs r0, #2
	ldrsh r4, [r1, r0]
	ldrh r0, [r1, #6]
	adds r0, r4, r0
	cmp r3, r0
	bgt _08002418
	ldrh r0, [r2, #6]
	adds r0, r3, r0
	cmp r0, r4
	blt _08002418
	movs r0, #1
	b _0800241A
_08002418:
	movs r0, #0
_0800241A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08002420
sub_08002420: @ 0x08002420
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	ldr r3, _0800244C @ =0xFFFF0000
	asrs r0, r2, #0x10
	cmp r2, r3
	bne _08002454
	ldrh r0, [r1]
	lsrs r2, r3, #0x10
	cmp r0, r2
	beq _08002442
_08002436:
	strh r0, [r4]
	adds r1, #2
	adds r4, #2
	ldrh r0, [r1]
	cmp r0, r2
	bne _08002436
_08002442:
	ldr r1, _08002450 @ =0x0000FFFF
	adds r0, r1, #0
	strh r0, [r4]
	b _0800246E
	.align 2, 0
_0800244C: .4byte 0xFFFF0000
_08002450: .4byte 0x0000FFFF
_08002454:
	movs r3, #0
	cmp r3, r0
	bge _0800246E
	adds r2, r0, #0
_0800245C:
	ldrh r0, [r1]
	strh r0, [r4]
	adds r1, #2
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r2
	blt _0800245C
_0800246E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002474
sub_08002474: @ 0x08002474
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	ldr r5, _080024AC @ =0xFFFF0000
	asrs r0, r2, #0x10
	cmp r2, r5
	bne _080024BC
	ldrh r1, [r3]
	lsrs r0, r5, #0x10
	cmp r1, r0
	beq _080024E2
	adds r2, r0, #0
_0800248E:
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	beq _080024B0
_08002498:
	subs r3, #2
	subs r4, #2
	ldrh r0, [r3]
	ldrh r4, [r4]
	cmp r0, r4
	bhi _080024B8
	movs r0, #1
	rsbs r0, r0, #0
	b _080024E4
	.align 2, 0
_080024AC: .4byte 0xFFFF0000
_080024B0:
	ldrh r1, [r3]
	cmp r1, r2
	bne _0800248E
	b _080024E2
_080024B8:
	movs r0, #1
	b _080024E4
_080024BC:
	movs r2, #0
	cmp r2, r0
	bge _080024E2
	ldr r6, _080024EC @ =0x0000FFFF
	adds r5, r0, #0
_080024C6:
	ldrh r1, [r3]
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	bne _08002498
	ldrh r0, [r3]
	cmp r0, r6
	beq _080024E2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _080024C6
_080024E2:
	movs r0, #0
_080024E4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080024EC: .4byte 0x0000FFFF

	thumb_func_start sub_080024F0
sub_080024F0: @ 0x080024F0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	ldr r5, _0800251C @ =0xFFFF0000
	asrs r0, r2, #0x10
	cmp r2, r5
	bne _08002524
	ldrh r1, [r3]
	lsrs r0, r5, #0x10
	cmp r1, r0
	beq _08002550
	adds r2, r0, #0
_0800250A:
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	bne _08002520
	ldrh r1, [r3]
	cmp r1, r2
	bne _0800250A
	b _08002550
	.align 2, 0
_0800251C: .4byte 0xFFFF0000
_08002520:
	movs r0, #0
	b _08002552
_08002524:
	movs r2, #0
	cmp r2, r0
	bge _08002550
	ldr r6, _08002558 @ =0x0000FFFF
	adds r5, r0, #0
_0800252E:
	ldrh r1, [r3]
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	bne _08002520
	ldrh r1, [r3]
	cmp r1, r6
	bne _08002546
	ldrh r0, [r4]
	cmp r0, r1
	beq _08002550
_08002546:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _0800252E
_08002550:
	movs r0, #1
_08002552:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002558: .4byte 0x0000FFFF

	thumb_func_start sub_0800255C
sub_0800255C: @ 0x0800255C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	cmp r3, r1
	bhs _08002598
	ldr r5, _08002580 @ =0x0000FFFF
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r0, #0
_08002572:
	ldrh r0, [r2]
	adds r2, #2
	cmp r0, r5
	bne _08002584
	movs r0, #0
	b _0800259A
	.align 2, 0
_08002580: .4byte 0x0000FFFF
_08002584:
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08002572
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002572
_08002598:
	adds r0, r2, #0
_0800259A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080025A0
sub_080025A0: @ 0x080025A0
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	cmp r0, r1
	bhs _080025CA
	ldr r5, _080025D4 @ =0x0000FFFF
	movs r4, #0xff
	lsls r4, r4, #8
_080025B4:
	adds r0, #1
_080025B6:
	ldrh r2, [r3]
	adds r3, #2
	cmp r2, r5
	beq _080025C2
	cmp r2, r4
	bne _080025B6
_080025C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blo _080025B4
_080025CA:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080025D4: .4byte 0x0000FFFF

	thumb_func_start sub_080025D8
sub_080025D8: @ 0x080025D8
	push {r4, lr}
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, _080025F4 @ =0x0000FF01
	ldr r2, _080025F8 @ =0x0000FFFF
_080025E2:
	ldrh r1, [r0]
	cmp r1, r4
	blt _080025F0
	cmp r1, r3
	ble _080025FC
	cmp r1, r2
	beq _080025FC
_080025F0:
	adds r0, #2
	b _080025E2
	.align 2, 0
_080025F4: .4byte 0x0000FF01
_080025F8: .4byte 0x0000FFFF
_080025FC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002604
sub_08002604: @ 0x08002604
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, _08002620 @ =0x0000FFFF
_08002610:
	ldrh r1, [r2]
	adds r2, #2
	cmp r1, r4
	bne _08002624
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08002610
	.align 2, 0
_08002620: .4byte 0x0000FFFF
_08002624:
	cmp r1, r3
	bne _08002610
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08002634
sub_08002634: @ 0x08002634
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r1, r7, #2
	ldr r0, _08002688 @ =gUnknown_08CDB95C
	adds r4, r1, r0
	movs r5, #0
	cmp r5, r7
	bhs _0800267C
_08002656:
	ldr r1, [r4]
	adds r0, r6, #0
	bl sub_08002FC0
	lsls r1, r5, #1
	add r1, sb
	add r0, r8
	strh r0, [r1]
	ldr r1, [r4]
	adds r0, r6, #0
	bl sub_08002FD4
	adds r6, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #4
	cmp r5, r7
	blo _08002656
_0800267C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002688: .4byte gUnknown_08CDB95C

	thumb_func_start sub_0800268C
sub_0800268C: @ 0x0800268C
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _0800269C
	movs r0, #1
	b _080026B6
_08002698:
	adds r0, r1, #0
	b _080026B6
_0800269C:
	movs r1, #1
	ldr r3, _080026BC @ =gUnknown_08CDB960
_080026A0:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r2, r0
	blo _08002698
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _080026A0
	movs r0, #0xa
_080026B6:
	pop {r1}
	bx r1
	.align 2, 0
_080026BC: .4byte gUnknown_08CDB960

	thumb_func_start sub_080026C0
sub_080026C0: @ 0x080026C0
	push {lr}
	ldr r0, _080026D8 @ =gSave
	movs r1, #0x84
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r1, [r2]
	ldr r0, _080026DC @ =0x014996C3
	cmp r1, r0
	bhi _080026E0
	adds r0, r1, #1
	b _080026E2
	.align 2, 0
_080026D8: .4byte gSave
_080026DC: .4byte 0x014996C3
_080026E0:
	ldr r0, _080026EC @ =0x01499688
_080026E2:
	str r0, [r2]
	bl sub_080026F0
	pop {r0}
	bx r0
	.align 2, 0
_080026EC: .4byte 0x01499688

	thumb_func_start sub_080026F0
sub_080026F0: @ 0x080026F0
	push {lr}
	ldr r0, _08002710 @ =0x00000315
	bl sub_08002970
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002724
	ldr r0, _08002714 @ =gSave
	ldr r1, _08002718 @ =0x00000744
	adds r2, r0, r1
	ldr r1, [r2]
	ldr r0, _0800271C @ =0x0009E33F
	cmp r1, r0
	bhi _08002720
	adds r0, r1, #1
	b _08002722
	.align 2, 0
_08002710: .4byte 0x00000315
_08002714: .4byte gSave
_08002718: .4byte 0x00000744
_0800271C: .4byte 0x0009E33F
_08002720:
	ldr r0, _08002728 @ =0x0009E340
_08002722:
	str r0, [r2]
_08002724:
	pop {r0}
	bx r0
	.align 2, 0
_08002728: .4byte 0x0009E340

	thumb_func_start sub_0800272C
sub_0800272C: @ 0x0800272C
	push {r4, lr}
	ldr r4, _08002754 @ =gSave
	ldr r0, _08002758 @ =0x00000744
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800275C @ =0x00002A30
	bl sub_08002FD4
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r4, r4, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002754: .4byte gSave
_08002758: .4byte 0x00000744
_0800275C: .4byte 0x00002A30

	thumb_func_start sub_08002760
sub_08002760: @ 0x08002760
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	cmp r0, #0
	bne _0800277C
	ldr r0, _08002778 @ =gUnknown_08CDB988
	lsls r1, r1, #1
	b _08002788
	.align 2, 0
_08002778: .4byte gUnknown_08CDB988
_0800277C:
	cmp r0, #0
	blt _08002794
	cmp r0, #2
	bgt _08002794
	ldr r0, _08002790 @ =gUnknown_08CDB990
	lsls r1, r2, #1
_08002788:
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002796
	.align 2, 0
_08002790: .4byte gUnknown_08CDB990
_08002794:
	movs r0, #0
_08002796:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800279C
sub_0800279C: @ 0x0800279C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #1
	beq _080027C4
	cmp r0, #1
	bgt _080027B6
	cmp r0, #0
	beq _080027BC
	b _080027DC
_080027B6:
	cmp r2, #2
	beq _080027CC
	b _080027DC
_080027BC:
	ldr r0, _080027C0 @ =gUnknown_08CDB998
	b _080027CE
	.align 2, 0
_080027C0: .4byte gUnknown_08CDB998
_080027C4:
	ldr r0, _080027C8 @ =gUnknown_08CDB9A0
	b _080027CE
	.align 2, 0
_080027C8: .4byte gUnknown_08CDB9A0
_080027CC:
	ldr r0, _080027D8 @ =gUnknown_08CDB9A8
_080027CE:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080027DE
	.align 2, 0
_080027D8: .4byte gUnknown_08CDB9A8
_080027DC:
	movs r0, #0
_080027DE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080027E4
sub_080027E4: @ 0x080027E4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #1
	beq _0800280C
	cmp r0, #1
	bgt _080027FE
	cmp r0, #0
	beq _08002804
	b _08002824
_080027FE:
	cmp r2, #2
	beq _08002814
	b _08002824
_08002804:
	ldr r0, _08002808 @ =gUnknown_08CDB9B0
	b _08002816
	.align 2, 0
_08002808: .4byte gUnknown_08CDB9B0
_0800280C:
	ldr r0, _08002810 @ =gUnknown_08CDB9B8
	b _08002816
	.align 2, 0
_08002810: .4byte gUnknown_08CDB9B8
_08002814:
	ldr r0, _08002820 @ =gUnknown_08CDB9C0
_08002816:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002826
	.align 2, 0
_08002820: .4byte gUnknown_08CDB9C0
_08002824:
	movs r0, #0
_08002826:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800282C
sub_0800282C: @ 0x0800282C
	push {r4, lr}
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #1
	beq _0800285C
	cmp r0, #1
	bgt _08002848
	cmp r0, #0
	beq _0800284E
	b _08002890
_08002848:
	cmp r3, #2
	beq _08002874
	b _08002890
_0800284E:
	ldr r0, _08002858 @ =gUnknown_08CDB9C8
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002892
	.align 2, 0
_08002858: .4byte gUnknown_08CDB9C8
_0800285C:
	ldr r0, _0800286C @ =gUnknown_08CDB9D0
	lsls r1, r1, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _08002870 @ =gUnknown_08CDB9D8
	b _08002880
	.align 2, 0
_0800286C: .4byte gUnknown_08CDB9D0
_08002870: .4byte gUnknown_08CDB9D8
_08002874:
	ldr r0, _08002888 @ =gUnknown_08CDB9E0
	lsls r1, r1, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _0800288C @ =gUnknown_08CDB9E8
_08002880:
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r4]
	b _08002896
	.align 2, 0
_08002888: .4byte gUnknown_08CDB9E0
_0800288C: .4byte gUnknown_08CDB9E8
_08002890:
	movs r0, #0
_08002892:
	strh r0, [r4]
	strh r0, [r2]
_08002896:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800289C
sub_0800289C: @ 0x0800289C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_080028A8
sub_080028A8: @ 0x080028A8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_080028B8
sub_080028B8: @ 0x080028B8
	ldr r0, [r0]
	bx lr

	thumb_func_start set_event_flag
set_event_flag: @ 0x080028BC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _080028F0 @ =gSave
	lsrs r4, r0, #0x13
	movs r3, #0x90
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r4, r4, r2
	movs r3, #0xe0
	lsls r3, r3, #0xb
	ands r3, r0
	lsrs r3, r3, #0x10
	movs r5, #1
	adds r0, r5, #0
	lsls r0, r3
	ldrb r2, [r4]
	bics r2, r0
	ands r1, r5
	lsls r1, r3
	orrs r2, r1
	strb r2, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080028F0: .4byte gSave

	thumb_func_start sub_080028F4
sub_080028F4: @ 0x080028F4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, _0800291C @ =gSave
	lsrs r0, r0, #0x11
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r3, r0, r1
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08002920
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r4, #4
	b _0800292C
	.align 2, 0
_0800291C: .4byte gSave
_08002920:
	ldrb r0, [r3]
	movs r1, #0xf0
	ands r1, r0
	movs r2, #0xf
	adds r0, r4, #0
	ands r0, r2
_0800292C:
	orrs r1, r0
	strb r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002938
sub_08002938: @ 0x08002938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800294C @ =gSave
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800294C: .4byte gSave

	thumb_func_start sub_08002950
sub_08002950: @ 0x08002950
	lsls r0, r0, #0x10
	ldr r3, _0800296C @ =gSave
	lsrs r0, r0, #0xf
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r3, r3, r2
	adds r2, r0, r3
	strb r1, [r2]
	adds r0, #1
	adds r0, r0, r3
	lsrs r1, r1, #8
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800296C: .4byte gSave

	thumb_func_start sub_08002970
sub_08002970: @ 0x08002970
	adds r2, r0, #0
	lsls r2, r2, #0x10
	ldr r0, _08002994 @ =gSave
	lsrs r1, r2, #0x13
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r1, r2
	lsrs r1, r1, #0x10
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08002994: .4byte gSave

	thumb_func_start sub_08002998
sub_08002998: @ 0x08002998
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _080029B8 @ =gSave
	lsrs r0, r0, #0x11
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r2, r1
	lsls r2, r2, #2
	asrs r0, r2
	movs r1, #0xf
	ands r0, r1
	bx lr
	.align 2, 0
_080029B8: .4byte gSave

	thumb_func_start sub_080029BC
sub_080029BC: @ 0x080029BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080029D0 @ =gSave
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080029D0: .4byte gSave

	thumb_func_start sub_080029D4
sub_080029D4: @ 0x080029D4
	lsls r0, r0, #0x10
	ldr r2, _080029F4 @ =gSave
	lsrs r0, r0, #0xf
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
_080029F4: .4byte gSave

	thumb_func_start sub_080029F8
sub_080029F8: @ 0x080029F8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08002A2C @ =gSave
	lsrs r4, r0, #0x13
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r2, r3
	adds r4, r4, r2
	movs r3, #0xe0
	lsls r3, r3, #0xb
	ands r3, r0
	lsrs r3, r3, #0x10
	movs r5, #1
	adds r0, r5, #0
	lsls r0, r3
	ldrb r2, [r4]
	bics r2, r0
	ands r1, r5
	lsls r1, r3
	orrs r2, r1
	strb r2, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002A2C: .4byte gSave

	thumb_func_start sub_08002A30
sub_08002A30: @ 0x08002A30
	adds r2, r0, #0
	lsls r2, r2, #0x10
	ldr r0, _08002A54 @ =gSave
	lsrs r1, r2, #0x13
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r1, r2
	lsrs r1, r1, #0x10
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08002A54: .4byte gSave

	thumb_func_start sub_08002A58
sub_08002A58: @ 0x08002A58
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	strh r2, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08002A7C
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r3, #0
	movs r1, #1
	bl sub_0805CD30
	b _08002A88
_08002A7C:
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r3, #0
	movs r1, #0
	bl sub_0805CD30
_08002A88:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002A90
sub_08002A90: @ 0x08002A90
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08002AA8
	adds r0, r2, #0
	movs r1, #0
	b _08002AAC
_08002AA8:
	adds r0, r2, #0
	movs r1, #1
_08002AAC:
	bl sub_0805CDD8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002ABC
sub_08002ABC: @ 0x08002ABC
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r2, r0, #2
	movs r4, #0
_08002AC6:
	adds r0, r2, #0
	adds r2, #2
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, r2, r0
	adds r2, r3, #2
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bls _08002AC6
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002AF4
sub_08002AF4: @ 0x08002AF4
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r0, #2
	movs r3, #0
_08002AFE:
	adds r2, r1, #0
	adds r0, r2, #4
	ldrh r1, [r2]
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bls _08002AFE
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002B1C
sub_08002B1C: @ 0x08002B1C
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08002BA4
	adds r5, r0, #0
	bl sub_08002BF4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r1
	blo _08002B3E
	bl sub_08002FD4
	strh r0, [r4]
_08002B3E:
	adds r3, r5, #6
	ldrb r1, [r3, #1]
	ldrh r2, [r4]
	cmp r1, r2
	bhs _08002B56
_08002B48:
	adds r3, #2
	ldrb r0, [r3, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08002B48
_08002B56:
	ldrb r0, [r3]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002B60
sub_08002B60: @ 0x08002B60
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08002BCC
	adds r5, r0, #0
	bl sub_08002C20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r1
	blo _08002B82
	bl sub_08002FD4
	strh r0, [r4]
_08002B82:
	adds r3, r5, #2
	ldrb r1, [r3, #1]
	ldrh r2, [r4]
	cmp r1, r2
	bhs _08002B9A
_08002B8C:
	adds r3, #2
	ldrb r0, [r3, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08002B8C
_08002B9A:
	ldrb r0, [r3]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002BA4
sub_08002BA4: @ 0x08002BA4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r0, #2
	movs r3, #0
	cmp r3, r1
	bhs _08002BC4
_08002BB2:
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, #6
	adds r2, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002BB2
_08002BC4:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002BCC
sub_08002BCC: @ 0x08002BCC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r0, #2
	movs r3, #0
	cmp r3, r1
	bhs _08002BEC
_08002BDA:
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, #2
	adds r2, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002BDA
_08002BEC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002BF4
sub_08002BF4: @ 0x08002BF4
	push {r4, lr}
	adds r1, r0, #6
	movs r3, #0
	movs r2, #0
	ldrb r0, [r0, #4]
	cmp r3, r0
	bhs _08002C18
	adds r4, r0, #0
_08002C04:
	ldrb r0, [r1, #1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _08002C04
_08002C18:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08002C20
sub_08002C20: @ 0x08002C20
	push {r4, lr}
	adds r1, r0, #2
	movs r3, #0
	movs r2, #0
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08002C44
	adds r4, r0, #0
_08002C30:
	ldrb r0, [r1, #1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _08002C30
_08002C44:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08002C4C
sub_08002C4C: @ 0x08002C4C
	ldrh r1, [r0, #2]
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08002C54
sub_08002C54: @ 0x08002C54
	ldrh r1, [r0, #4]
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08002C5C
sub_08002C5C: @ 0x08002C5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	cmp r6, #0
	beq _08002C7C
	cmp r2, #0
	bne _08002C8A
_08002C7C:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	strh r0, [r7, #2]
	strh r0, [r7]
	movs r0, #0
	b _08002D0C
_08002C8A:
	adds r0, r4, #0
	bl sub_08002F8C
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	bl sub_08002FA4
	mov r8, r0
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_08002D88
	strh r0, [r7]
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08002D88
	strh r0, [r7, #2]
	rsbs r5, r5, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08002D88
	strh r0, [r7, #4]
	adds r0, r4, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_08002D88
	strh r0, [r7, #6]
	movs r0, #1
_08002D0C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002D18
sub_08002D18: @ 0x08002D18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [sp, #0x1c]
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	cmp r7, #0
	bne _08002D48
	movs r1, #0xa0
	lsls r1, r1, #1
	lsls r2, r6, #0x10
	orrs r2, r6
	adds r0, r5, #0
	bl sub_08001B54
	b _08002D74
_08002D48:
	movs r4, #0
_08002D4A:
	mov r0, r8
	muls r0, r4, r0
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r7, r0
	asrs r0, r0, #8
	adds r0, r6, r0
	strh r0, [r5]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r4, #0x9f
	bls _08002D4A
_08002D74:
	mov r2, sb
	ldrh r0, [r2]
	add r0, r8
	strh r0, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08002D88
sub_08002D88: @ 0x08002D88
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08002D98
sub_08002D98: @ 0x08002D98
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08002FC0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002DB0
sub_08002DB0: @ 0x08002DB0
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08002FC0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08002DC8
sub_08002DC8: @ 0x08002DC8
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bge _08002DD2
	rsbs r4, r4, #0
_08002DD2:
	cmp r1, #0
	bge _08002DD8
	rsbs r1, r1, #0
_08002DD8:
	cmp r4, r1
	bge _08002DE2
	adds r0, r4, #0
	adds r4, r1, #0
	adds r1, r0, #0
_08002DE2:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r4, #0
	bl sub_08091970
	adds r1, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r0, r4, r0
	asrs r0, r0, #7
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08002E00
sub_08002E00: @ 0x08002E00
	push {lr}
	cmp r0, #0
	bge _08002E08
	rsbs r0, r0, #0
_08002E08:
	cmp r1, #0
	bge _08002E0E
	rsbs r1, r1, #0
_08002E0E:
	cmp r0, r1
	blt _08002E18
	adds r3, r0, #0
	adds r0, r1, #0
	b _08002E1A
_08002E18:
	adds r3, r1, #0
_08002E1A:
	lsrs r2, r0, #1
	adds r2, r0, r2
	lsrs r0, r3, #5
	subs r0, r3, r0
	lsrs r1, r3, #7
	subs r0, r0, r1
	lsrs r1, r2, #2
	adds r0, r0, r1
	lsrs r2, r2, #6
	adds r0, r0, r2
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002E34
sub_08002E34: @ 0x08002E34
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r3, #0
	beq _08002E56
	subs r0, r3, r1
	muls r0, r4, r0
	muls r1, r5, r1
	adds r0, r0, r1
	adds r1, r3, #0
	bl sub_08002FC0
	b _08002E58
_08002E56:
	adds r0, r4, #0
_08002E58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002E60
sub_08002E60: @ 0x08002E60
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r3, #0
	beq _08002E82
	subs r0, r3, r1
	muls r0, r4, r0
	muls r1, r5, r1
	adds r0, r0, r1
	adds r1, r3, #0
	bl sub_08002FC0
	b _08002E84
_08002E82:
	adds r0, r4, #0
_08002E84:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002E8C
sub_08002E8C: @ 0x08002E8C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08002E34
	mov r1, sb
	strh r0, [r1]
	movs r2, #2
	ldrsh r0, [r6, r2]
	mov r3, r8
	movs r2, #2
	ldrsh r1, [r3, r2]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08002E34
	mov r3, sb
	strh r0, [r3, #2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002EE0
sub_08002EE0: @ 0x08002EE0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	cmp r1, #1
	beq _08002F20
	cmp r1, #1
	bgt _08002F0A
	cmp r1, #0
	beq _08002F10
	b _08002F7E
_08002F0A:
	cmp r0, #2
	beq _08002F4A
	b _08002F7E
_08002F10:
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08002E8C
	b _08002F7E
_08002F20:
	movs r0, #0
	movs r1, #0x40
	adds r2, r4, #0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08002E8C
	b _08002F7E
_08002F4A:
	movs r0, #0x40
	movs r1, #0
	adds r2, r4, #0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08002F88 @ =0xFFFFFF00
	adds r0, r0, r1
	cmp r0, #0
	bge _08002F6A
	rsbs r0, r0, #0
_08002F6A:
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08002E8C
_08002F7E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002F88: .4byte 0xFFFFFF00

	thumb_func_start sub_08002F8C
sub_08002F8C: @ 0x08002F8C
	lsls r0, r0, #0x10
	ldr r2, _08002FA0 @ =gUnknown_080C17D8
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r1, r1, #0xf
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_08002FA0: .4byte gUnknown_080C17D8

	thumb_func_start sub_08002FA4
sub_08002FA4: @ 0x08002FA4
	lsls r0, r0, #0x10
	ldr r2, _08002FBC @ =gUnknown_080C17D8
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r1, r1, #0xf
	adds r1, #0x80
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_08002FBC: .4byte gUnknown_080C17D8

	thumb_func_start sub_08002FC0
sub_08002FC0: @ 0x08002FC0
	push {lr}
	cmp r1, #0
	beq _08002FCC
	bl sub_08090F7C
	b _08002FCE
_08002FCC:
	movs r0, #0
_08002FCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002FD4
sub_08002FD4: @ 0x08002FD4
	push {lr}
	cmp r1, #0
	beq _08002FE0
	bl sub_08090F80
	b _08002FE2
_08002FE0:
	movs r0, #0
_08002FE2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002FE8
sub_08002FE8: @ 0x08002FE8
	ldr r2, _08003000 @ =gUnknown_02015EA8
	ldr r1, [r2]
	lsls r1, r1, #1
	ldr r0, _08003004 @ =0x04000006
	ldrh r0, [r0]
	adds r0, r0, r1
	lsrs r1, r1, #8
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08003000: .4byte gUnknown_02015EA8
_08003004: .4byte 0x04000006

	thumb_func_start sub_08003008
sub_08003008: @ 0x08003008
	ldr r1, _08003018 @ =gUnknown_02015EB0
	str r0, [r1]
	ldr r0, _0800301C @ =0x5D588B65
	str r0, [r1, #4]
	ldr r0, _08003020 @ =0x00269EC3
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08003018: .4byte gUnknown_02015EB0
_0800301C: .4byte 0x5D588B65
_08003020: .4byte 0x00269EC3

	thumb_func_start sub_08003024
sub_08003024: @ 0x08003024
	ldr r2, _08003038 @ =gUnknown_02015EB0
	ldr r1, [r2, #4]
	ldr r0, [r2]
	muls r0, r1, r0
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08003038: .4byte gUnknown_02015EB0

	thumb_func_start sub_0800303C
sub_0800303C: @ 0x0800303C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _08003090 @ =gUnknown_02005BF0
	mov r8, r0
	ldr r1, _08003094 @ =gUnknown_02005230
	mov ip, r1
	ldr r6, _08003098 @ =0xFFFF0000
	ldr r5, _0800309C @ =0x00010DCD
	ldr r7, _080030A0 @ =0x0000026F
_08003054:
	lsls r2, r4, #2
	add r2, ip
	adds r1, r3, #0
	ands r1, r6
	adds r0, r3, #0
	muls r0, r5, r0
	adds r3, r0, #1
	adds r0, r3, #0
	ands r0, r6
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r3, r0, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	bls _08003054
	movs r0, #0x9c
	lsls r0, r0, #2
	mov r1, r8
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003090: .4byte gUnknown_02005BF0
_08003094: .4byte gUnknown_02005230
_08003098: .4byte 0xFFFF0000
_0800309C: .4byte 0x00010DCD
_080030A0: .4byte 0x0000026F

	thumb_func_start sub_080030A4
sub_080030A4: @ 0x080030A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080031AC @ =gUnknown_02005BF0
	ldr r2, [r0]
	ldr r1, _080031B0 @ =0x0000026F
	mov r8, r0
	cmp r2, r1
	ble _08003174
	ldr r0, _080031B4 @ =0x00000271
	cmp r2, r0
	bne _080030C4
	ldr r0, _080031B8 @ =0x00001105
	bl sub_0800303C
_080030C4:
	movs r3, #0
	ldr r0, _080031BC @ =gUnknown_08CDB9F0
	mov sb, r0
	ldr r7, _080031C0 @ =gUnknown_02005230
	mov ip, sb
	adds r5, r7, #0
_080030D0:
	ldr r4, [r5]
	movs r6, #0x80
	lsls r6, r6, #0x18
	ands r4, r6
	ldr r0, [r5, #4]
	ldr r1, _080031C4 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	ldr r1, _080031C8 @ =0x0000018D
	adds r0, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	lsrs r2, r4, #1
	ldr r1, [r0]
	eors r1, r2
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	eors r1, r0
	stm r5!, {r1}
	adds r3, #1
	cmp r3, #0xe2
	ble _080030D0
	ldr r5, _080031CC @ =0x0000026E
	cmp r3, r5
	bgt _0800313E
	ldr r1, _080031C0 @ =gUnknown_02005230
	ldr r4, _080031BC @ =gUnknown_08CDB9F0
	mov ip, r4
	lsls r0, r3, #2
	adds r2, r0, r1
	ldr r4, _080031D0 @ =0xFFFFFC74
	adds r0, r0, r4
	adds r7, r0, r1
_08003118:
	ldr r4, [r2]
	ands r4, r6
	ldr r0, [r2, #4]
	ldr r1, _080031C4 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	lsrs r0, r4, #1
	ldm r7!, {r1}
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	eors r1, r0
	stm r2!, {r1}
	adds r3, #1
	cmp r3, r5
	ble _08003118
_0800313E:
	ldr r2, _080031C0 @ =gUnknown_02005230
	ldr r0, _080031D4 @ =0x000009BC
	adds r3, r2, r0
	ldr r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r4, r0
	ldr r0, [r2]
	ldr r1, _080031C4 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r2, r2, r1
	lsrs r0, r4, #1
	ldr r1, [r2]
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sb
	ldr r0, [r0]
	eors r1, r0
	str r1, [r3]
	movs r0, #0
	mov r4, r8
	str r0, [r4]
_08003174:
	ldr r2, _080031C0 @ =gUnknown_02005230
	mov r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r1, #1
	mov r0, r8
	str r1, [r0]
	lsrs r0, r4, #0xb
	eors r4, r0
	lsls r0, r4, #7
	ldr r1, _080031D8 @ =0x9D2C5680
	ands r0, r1
	eors r4, r0
	lsls r0, r4, #0xf
	ldr r1, _080031DC @ =0xEFC60000
	ands r0, r1
	eors r4, r0
	lsrs r0, r4, #0x12
	eors r4, r0
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080031AC: .4byte gUnknown_02005BF0
_080031B0: .4byte 0x0000026F
_080031B4: .4byte 0x00000271
_080031B8: .4byte 0x00001105
_080031BC: .4byte gUnknown_08CDB9F0
_080031C0: .4byte gUnknown_02005230
_080031C4: .4byte 0x7FFFFFFF
_080031C8: .4byte 0x0000018D
_080031CC: .4byte 0x0000026E
_080031D0: .4byte 0xFFFFFC74
_080031D4: .4byte 0x000009BC
_080031D8: .4byte 0x9D2C5680
_080031DC: .4byte 0xEFC60000

	thumb_func_start sub_080031E0
sub_080031E0: @ 0x080031E0
	push {lr}
	bl sub_080030A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080031F0
sub_080031F0: @ 0x080031F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldr r0, [sp, #0x34]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0x20
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_08001ACC
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1d]
	movs r0, #0
	mov sb, r0
	strb r5, [r4, #0x1c]
	mov r0, sl
	str r0, [r4]
	str r7, [r4, #8]
	mov r0, sb
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, _08003274 @ =0xFFFC1FFF
	ands r0, r1
	str r0, [r4, #0x1c]
	mov r0, sb
	strh r0, [r4, #0xc]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x12]
	ldr r2, [sp]
	strh r2, [r4, #0x16]
	ldr r3, [sp, #4]
	strh r3, [r4, #0x18]
	mov r0, r8
	strh r0, [r4, #0x1a]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003274: .4byte 0xFFFC1FFF

	thumb_func_start sub_08003278
sub_08003278: @ 0x08003278
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r3, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r1, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sp
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0x20
	str r3, [sp, #4]
	bl sub_08001ACC
	ldrb r1, [r5, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x1d]
	movs r2, #0
	movs r0, #0xc
	strb r0, [r5, #0x1c]
	mov r0, r8
	str r0, [r5]
	mov r0, sb
	str r0, [r5, #4]
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #0xd
	ldr r0, [r5, #0x1c]
	ldr r1, _08003310 @ =0xFFFC1FFF
	ands r0, r1
	orrs r0, r4
	str r0, [r5, #0x1c]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0xc]
	strh r2, [r5, #0x12]
	ldr r3, [sp, #4]
	strh r3, [r5, #0x10]
	movs r0, #3
	ands r6, r0
	lsls r6, r6, #2
	ldrb r1, [r5, #0x1d]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	mov r1, sp
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1d]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003310: .4byte 0xFFFC1FFF

	thumb_func_start sub_08003314
sub_08003314: @ 0x08003314
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x20
	str r3, [sp]
	bl sub_08001ACC
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1d]
	movs r2, #0
	movs r0, #0xd
	strb r0, [r4, #0x1c]
	mov r0, r8
	str r0, [r4]
	mov r0, sb
	str r0, [r4, #4]
	movs r0, #0x1f
	ands r5, r0
	lsls r5, r5, #0xd
	ldr r0, [r4, #0x1c]
	ldr r1, _08003390 @ =0xFFFC1FFF
	ands r0, r1
	orrs r0, r5
	str r0, [r4, #0x1c]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0xc]
	strh r2, [r4, #0x12]
	strh r6, [r4, #0x10]
	ldr r3, [sp]
	adds r0, r3, #0
	muls r0, r6, r0
	strh r0, [r4, #0x14]
	ldrb r1, [r4, #0x1d]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1d]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003390: .4byte 0xFFFC1FFF

	thumb_func_start sub_08003394
sub_08003394: @ 0x08003394
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	ldr r6, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r1, #0x20
	str r3, [sp]
	bl sub_08001ACC
	ldrb r1, [r5, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x1d]
	movs r2, #0
	movs r0, #0xd
	strb r0, [r5, #0x1c]
	mov r0, r8
	str r0, [r5, #4]
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #0xd
	ldr r0, [r5, #0x1c]
	ldr r1, _08003404 @ =0xFFFC1FFF
	ands r0, r1
	orrs r0, r4
	str r0, [r5, #0x1c]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0xc]
	strh r2, [r5, #0x12]
	ldr r3, [sp]
	strh r3, [r5, #0x10]
	movs r0, #0x1f
	ands r6, r0
	lsls r6, r6, #2
	ldrb r1, [r5, #0x1e]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r5, #0x1e]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003404: .4byte 0xFFFC1FFF

	thumb_func_start sub_08003408
sub_08003408: @ 0x08003408
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	mov r8, r6
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r7, r5, #0
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _0800343E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x1b
	ldrh r3, [r4, #0xc]
	str r6, [sp]
	str r5, [sp, #4]
	bl sub_08003554
_0800343E:
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x10]
	cmp r0, r1
	blo _080034BC
	movs r0, #0
	strh r0, [r4, #0x12]
	ldrh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldrb r3, [r4, #0x1d]
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800349A
	cmp r0, #1
	bgt _0800346A
	cmp r0, #0
	beq _08003470
	b _080034BC
_0800346A:
	cmp r0, #2
	beq _080034A6
	b _080034BC
_08003470:
	adds r0, r1, #1
	strh r0, [r4, #0xc]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	subs r2, r5, r6
	cmp r0, r2
	ble _080034BC
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080034BA
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x1d]
	strh r2, [r4, #0xc]
	b _080034BC
_0800349A:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080034B8
	mov r1, r8
	subs r0, r7, r1
	b _080034BA
_080034A6:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080034B8
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r4, #0x1d]
	movs r0, #1
	b _080034BA
_080034B8:
	subs r0, r1, #1
_080034BA:
	strh r0, [r4, #0xc]
_080034BC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080034C8
sub_080034C8: @ 0x080034C8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	cmp r1, r0
	beq _08003500
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r3, #0xc
	ldrsh r2, [r5, r3]
	ldr r3, [r5, #0x1c]
	lsls r3, r3, #0xe
	lsrs r3, r3, #0x1b
	str r4, [sp]
	subs r4, r6, r4
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	bl sub_080035C4
_08003500:
	ldrh r0, [r5, #0x12]
	adds r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x10]
	bl sub_08002FD4
	adds r4, r0, #0
	cmp r4, #0
	bne _0800354A
	ldrh r0, [r5, #0x12]
	ldrh r3, [r5, #0xc]
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	blo _08003538
	ldrb r2, [r5, #0x1d]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #1
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1d]
	strh r4, [r5, #0x12]
	strh r3, [r5, #0xe]
_08003538:
	ldrb r1, [r5, #0x1d]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003546
	subs r0, r3, #1
	b _08003548
_08003546:
	adds r0, r3, #1
_08003548:
	strh r0, [r5, #0xc]
_0800354A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003554
sub_08003554: @ 0x08003554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov ip, r0
	ldr r0, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsrs r2, r2, #0xb
	adds r6, r1, r2
	adds r3, r3, r5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r2, r5, #0
	cmp r2, r4
	bhi _080035A0
_0800357C:
	cmp r3, r4
	bls _08003582
	adds r3, r5, #0
_08003582:
	lsls r0, r2, #1
	mov r7, sp
	adds r1, r7, r0
	lsls r0, r3, #1
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bls _0800357C
_080035A0:
	adds r2, r5, #0
	cmp r2, r4
	bhi _080035BA
_080035A6:
	lsls r0, r2, #1
	adds r1, r0, r6
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bls _080035A6
_080035BA:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080035C4
sub_080035C4: @ 0x080035C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r3, r3, #0xc
	adds r3, r3, r0
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r0, #0
	str r0, [sp, #4]
	cmp r0, r8
	bhs _080036CE
	movs r1, #0x1f
	mov sl, r1
	ldr r7, _08003660 @ =0xFFFFFF00
	mov sb, r7
	mov r3, sp
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
_08003604:
	mov r0, ip
	ldrh r1, [r0]
	mov r2, sl
	ands r2, r1
	ldr r0, [sp]
	mov r7, sb
	ands r0, r7
	orrs r0, r2
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, sl
	ands r0, r2
	strb r0, [r3, #1]
	lsrs r1, r1, #0x1a
	ands r1, r2
	strb r1, [r3, #2]
	cmp r4, #0
	ble _08003668
	ldrb r0, [r3]
	adds r0, r0, r4
	cmp r0, #0x1f
	ble _08003634
	movs r0, #0x1f
_08003634:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r7, sb
	ands r5, r7
	orrs r5, r0
	ldrb r0, [r3, #1]
	adds r0, r0, r4
	cmp r0, #0x1f
	ble _08003648
	movs r0, #0x1f
_08003648:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _08003664 @ =0xFFFF00FF
	ands r5, r1
	orrs r5, r0
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	cmp r0, #0x1f
	ble _0800369A
	movs r0, #0x1f
	b _0800369A
	.align 2, 0
_08003660: .4byte 0xFFFFFF00
_08003664: .4byte 0xFFFF00FF
_08003668:
	ldrb r0, [r3]
	adds r0, r0, r4
	cmp r0, #0
	bge _08003672
	movs r0, #0
_08003672:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sb
	ands r5, r1
	orrs r5, r0
	ldrb r0, [r3, #1]
	adds r0, r0, r4
	cmp r0, #0
	bge _08003686
	movs r0, #0
_08003686:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _080036E0 @ =0xFFFF00FF
	ands r5, r1
	orrs r5, r0
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	cmp r0, #0
	bge _0800369A
	movs r0, #0
_0800369A:
	lsls r1, r0, #0x18
	lsrs r1, r1, #8
	ldr r0, _080036E4 @ =0xFF00FFFF
	ands r5, r0
	orrs r5, r1
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r5, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	orrs r1, r0
	lsrs r0, r5, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xe
	orrs r1, r0
	strh r1, [r6]
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r2, #2
	add ip, r2
	adds r6, #2
	cmp r0, r8
	blo _08003604
_080036CE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080036E0: .4byte 0xFFFF00FF
_080036E4: .4byte 0xFF00FFFF

	thumb_func_start sub_080036E8
sub_080036E8: @ 0x080036E8
	push {r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r2, r2, #0xb
	adds r2, r1, r2
	lsrs r3, r3, #0x10
	cmp r3, r4
	bhi _08003716
_08003702:
	lsls r0, r3, #1
	adds r1, r0, r2
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bls _08003702
_08003716:
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003720
sub_08003720: @ 0x08003720
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r0, _08003768 @ =gUnknown_02015EC0
	mov ip, r0
	ldr r0, _0800376C @ =0x0000FFFF
	adds r4, r0, #0
	ldr r7, _08003770 @ =gUnknown_02015ED8
	ldr r6, _08003774 @ =gUnknown_02015EF0
	movs r5, #0x80
	lsls r5, r5, #1
_08003734:
	lsls r2, r3, #1
	mov r0, ip
	adds r1, r2, r0
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, r2, r7
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r2, r2, r6
	strh r5, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #9
	bls _08003734
	bl sub_0808F998
	ldr r1, _08003778 @ =gUnknown_02015F1C
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003768: .4byte gUnknown_02015EC0
_0800376C: .4byte 0x0000FFFF
_08003770: .4byte gUnknown_02015ED8
_08003774: .4byte gUnknown_02015EF0
_08003778: .4byte gUnknown_02015F1C

	thumb_func_start sub_0800377C
sub_0800377C: @ 0x0800377C
	push {r4, r5, lr}
	ldr r5, _080037A0 @ =0x04000208
	movs r0, #1
	strh r0, [r5]
	bl sub_0808FB50
	bl sub_0808FA10
	ldr r0, _080037A4 @ =0x04000084
	movs r4, #0
	strh r4, [r0]
	bl sub_08003720
	strh r4, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080037A0: .4byte 0x04000208
_080037A4: .4byte 0x04000084

	thumb_func_start sub_080037A8
sub_080037A8: @ 0x080037A8
	push {lr}
	bl sub_08090104
	ldr r1, _080037B8 @ =gUnknown_02015F1C
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080037B8: .4byte gUnknown_02015F1C

	thumb_func_start sub_080037BC
sub_080037BC: @ 0x080037BC
	push {r4, lr}
	ldr r4, _080037D4 @ =gUnknown_02015F1C
	ldrh r0, [r4]
	cmp r0, #0
	bne _080037CE
	bl sub_0808FA10
	movs r0, #1
	strh r0, [r4]
_080037CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080037D4: .4byte gUnknown_02015F1C

	thumb_func_start sub_080037D8
sub_080037D8: @ 0x080037D8
	push {lr}
	bl sub_0809008C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080037E4
sub_080037E4: @ 0x080037E4
	push {lr}
	bl sub_0809000C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080037F0
sub_080037F0: @ 0x080037F0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, r3, #0
	cmp r3, #0
	bne _08003838
	ldr r2, _08003828 @ =gUnknown_02015ED8
	ldr r1, _0800382C @ =gUnknown_02015EC0
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r1, _08003830 @ =gUnknown_02015EF0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r4, _08003834 @ =gUnknown_08120E1C
	ldr r0, [r4]
	bl sub_080902E0
	ldr r0, [r4, #0xc]
	bl sub_080902E0
	b _0800388A
	.align 2, 0
_08003828: .4byte gUnknown_02015ED8
_0800382C: .4byte gUnknown_02015EC0
_08003830: .4byte gUnknown_02015EF0
_08003834: .4byte gUnknown_08120E1C
_08003838:
	adds r0, r7, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800388A
	ldr r2, _08003890 @ =gUnknown_02015ED8
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r6, #1
	adds r2, r4, r2
	ldr r0, _08003894 @ =gUnknown_02015EC0
	adds r0, r4, r0
	ldrh r1, [r0]
	strh r1, [r2]
	strh r7, [r0]
	ldr r5, _08003898 @ =gUnknown_02015EF0
	adds r5, r4, r5
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	adds r0, r7, #0
	bl sub_0808FA94
	ldr r0, _0800389C @ =gUnknown_08120E1C
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r0, r4, #0
	bl sub_0808FC14
	ldr r1, _080038A0 @ =0x0000FFFF
	ldrh r2, [r5]
	adds r0, r4, #0
	bl sub_08090AA4
_0800388A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003890: .4byte gUnknown_02015ED8
_08003894: .4byte gUnknown_02015EC0
_08003898: .4byte gUnknown_02015EF0
_0800389C: .4byte gUnknown_08120E1C
_080038A0: .4byte 0x0000FFFF

	thumb_func_start sub_080038A4
sub_080038A4: @ 0x080038A4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	cmp r3, #0
	bne _080038E0
	ldr r2, _080038D4 @ =gUnknown_02015ED8
	ldr r1, _080038D8 @ =gUnknown_02015EC0
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r1, _080038DC @ =gUnknown_02015EF0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r0, #0
	bl sub_0808FA1C
	b _08003916
	.align 2, 0
_080038D4: .4byte gUnknown_02015ED8
_080038D8: .4byte gUnknown_02015EC0
_080038DC: .4byte gUnknown_02015EF0
_080038E0:
	adds r0, r4, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08003916
	ldr r3, _0800391C @ =gUnknown_02015ED8
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r3, r1, r3
	ldr r0, _08003920 @ =gUnknown_02015EC0
	adds r0, r1, r0
	ldrh r2, [r0]
	strh r2, [r3]
	strh r4, [r0]
	ldr r0, _08003924 @ =gUnknown_02015EF0
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0808FA1C
_08003916:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800391C: .4byte gUnknown_02015ED8
_08003920: .4byte gUnknown_02015EC0
_08003924: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003928
sub_08003928: @ 0x08003928
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08003980
	ldr r2, _08003988 @ =gUnknown_02015ED8
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r6, #1
	adds r2, r4, r2
	ldr r0, _0800398C @ =gUnknown_02015EC0
	adds r0, r4, r0
	ldrh r1, [r0]
	strh r1, [r2]
	strh r7, [r0]
	ldr r5, _08003990 @ =gUnknown_02015EF0
	adds r5, r4, r5
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	adds r0, r7, #0
	bl sub_0808FA94
	ldr r0, _08003994 @ =gUnknown_08120E1C
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r0, r4, #0
	bl sub_0808FC14
	ldr r1, _08003998 @ =0x0000FFFF
	ldrh r2, [r5]
	adds r0, r4, #0
	bl sub_08090AA4
_08003980:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003988: .4byte gUnknown_02015ED8
_0800398C: .4byte gUnknown_02015EC0
_08003990: .4byte gUnknown_02015EF0
_08003994: .4byte gUnknown_08120E1C
_08003998: .4byte 0x0000FFFF

	thumb_func_start sub_0800399C
sub_0800399C: @ 0x0800399C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	cmp r4, #0
	beq _080039E8
	adds r0, r4, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080039E8
	cmp r4, #0xf6
	bne _080039C6
	ldr r0, _080039F0 @ =0x000003DA
	bl sub_0808FA1C
_080039C6:
	ldr r3, _080039F4 @ =gUnknown_02015ED8
	lsls r1, r5, #0x10
	asrs r1, r1, #0xf
	adds r3, r1, r3
	ldr r0, _080039F8 @ =gUnknown_02015EC0
	adds r0, r1, r0
	ldrh r2, [r0]
	strh r2, [r3]
	strh r6, [r0]
	ldr r0, _080039FC @ =gUnknown_02015EF0
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0808FA1C
_080039E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080039F0: .4byte 0x000003DA
_080039F4: .4byte gUnknown_02015ED8
_080039F8: .4byte gUnknown_02015EC0
_080039FC: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003A00
sub_08003A00: @ 0x08003A00
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r5, #0
	bl sub_08003DD0
	adds r4, r0, #0
	cmp r4, #0
	beq _08003A4C
	ldr r0, _08003A54 @ =gUnknown_02015EC0
	lsls r6, r5, #1
	adds r0, r6, r0
	ldrh r5, [r0]
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _08003A4C
	adds r0, r4, #0
	bl sub_0808FC14
	ldr r1, _08003A58 @ =0x0000FFFF
	adds r0, r4, #0
	movs r2, #0
	bl sub_08090AA4
	adds r0, r5, #0
	bl sub_0808FAE8
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0808FBE8
	ldr r0, _08003A5C @ =gUnknown_02015EF0
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
_08003A4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003A54: .4byte gUnknown_02015EC0
_08003A58: .4byte 0x0000FFFF
_08003A5C: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003A60
sub_08003A60: @ 0x08003A60
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r4, #0
	bl sub_08003DD0
	adds r6, r0, #0
	cmp r6, #0
	beq _08003AA6
	ldr r0, _08003AAC @ =gUnknown_02015EC0
	lsls r4, r4, #1
	adds r0, r4, r0
	ldrh r5, [r0]
	adds r0, r6, #0
	bl sub_0808FC14
	ldr r1, _08003AB0 @ =0x0000FFFF
	adds r0, r6, #0
	movs r2, #0
	bl sub_08090AA4
	adds r0, r5, #0
	bl sub_0808FAE8
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0808FBE8
	ldr r0, _08003AB4 @ =gUnknown_02015EF0
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
_08003AA6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003AAC: .4byte gUnknown_02015EC0
_08003AB0: .4byte 0x0000FFFF
_08003AB4: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003AB8
sub_08003AB8: @ 0x08003AB8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_08003DD0
	adds r1, r0, #0
	cmp r1, #0
	beq _08003ADA
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _08003ADA
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0808FBC4
_08003ADA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08003AE0
sub_08003AE0: @ 0x08003AE0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r0, r5, #0
	bl sub_08003DF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08003B22
	ldr r0, _08003B28 @ =gUnknown_02015EC0
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r5, [r1]
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _08003B22
	adds r0, r4, #0
	bl sub_0808FC14
	ldr r1, _08003B2C @ =0x0000FFFF
	adds r0, r4, #0
	movs r2, #0
	bl sub_08090AA4
	adds r0, r5, #0
	bl sub_0808FAE8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0808FBE8
_08003B22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003B28: .4byte gUnknown_02015EC0
_08003B2C: .4byte 0x0000FFFF

	thumb_func_start sub_08003B30
sub_08003B30: @ 0x08003B30
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_08003DF8
	adds r1, r0, #0
	cmp r1, #0
	beq _08003B52
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _08003B52
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0808FBB4
_08003B52:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08003B58
sub_08003B58: @ 0x08003B58
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bgt _08003B90
	cmp r0, #0
	blt _08003B90
	ldr r1, _08003B98 @ =gUnknown_08120E1C
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080902E0
	ldr r1, _08003B9C @ =gUnknown_02015ED8
	adds r1, r4, r1
	ldr r0, _08003BA0 @ =gUnknown_02015EC0
	adds r0, r4, r0
	ldrh r2, [r0]
	movs r3, #0
	strh r2, [r1]
	strh r3, [r0]
	ldr r0, _08003BA4 @ =gUnknown_02015EF0
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
_08003B90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003B98: .4byte gUnknown_08120E1C
_08003B9C: .4byte gUnknown_02015ED8
_08003BA0: .4byte gUnknown_02015EC0
_08003BA4: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003BA8
sub_08003BA8: @ 0x08003BA8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bgt _08003BE0
	cmp r0, #2
	blt _08003BE0
	ldr r1, _08003BE8 @ =gUnknown_08120E1C
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080902E0
	ldr r1, _08003BEC @ =gUnknown_02015ED8
	adds r1, r4, r1
	ldr r0, _08003BF0 @ =gUnknown_02015EC0
	adds r0, r4, r0
	ldrh r2, [r0]
	movs r3, #0
	strh r2, [r1]
	strh r3, [r0]
	ldr r0, _08003BF4 @ =gUnknown_02015EF0
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
_08003BE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003BE8: .4byte gUnknown_08120E1C
_08003BEC: .4byte gUnknown_02015ED8
_08003BF0: .4byte gUnknown_02015EC0
_08003BF4: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003BF8
sub_08003BF8: @ 0x08003BF8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bgt _08003C16
	cmp r2, #0
	blt _08003C16
	ldr r0, _08003C1C @ =gUnknown_08120E1C
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_080902E0
_08003C16:
	pop {r0}
	bx r0
	.align 2, 0
_08003C1C: .4byte gUnknown_08120E1C

	thumb_func_start sub_08003C20
sub_08003C20: @ 0x08003C20
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bgt _08003C3E
	cmp r2, #0
	blt _08003C3E
	ldr r0, _08003C44 @ =gUnknown_08120E1C
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0808FB7C
_08003C3E:
	pop {r0}
	bx r0
	.align 2, 0
_08003C44: .4byte gUnknown_08120E1C

	thumb_func_start sub_08003C48
sub_08003C48: @ 0x08003C48
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, #9
	bgt _08003C74
	cmp r0, #0
	blt _08003C74
	ldr r1, _08003C7C @ =gUnknown_08120E1C
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08003C80 @ =0x0000FFFF
	adds r2, r5, #0
	bl sub_08090AA4
	ldr r0, _08003C84 @ =gUnknown_02015EF0
	adds r4, r4, r0
	strh r5, [r4]
_08003C74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003C7C: .4byte gUnknown_08120E1C
_08003C80: .4byte 0x0000FFFF
_08003C84: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003C88
sub_08003C88: @ 0x08003C88
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r0, #9
	bgt _08003CBC
	cmp r0, #0
	blt _08003CBC
	ldr r1, _08003CC4 @ =gUnknown_08120E1C
	lsls r5, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_0808FC14
	ldr r1, _08003CC8 @ =0x0000FFFF
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08090AA4
	ldr r0, _08003CCC @ =gUnknown_02015EF0
	adds r5, r5, r0
	strh r6, [r5]
_08003CBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003CC4: .4byte gUnknown_08120E1C
_08003CC8: .4byte 0x0000FFFF
_08003CCC: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003CD0
sub_08003CD0: @ 0x08003CD0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_08003DF8
	adds r3, r0, #0
	cmp r3, #0
	beq _08003D06
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x7f
	ble _08003CF0
	movs r4, #0x7f
	b _08003CFA
_08003CF0:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08003CFA
	ldr r4, _08003D0C @ =0x0000FF80
_08003CFA:
	ldr r1, _08003D10 @ =0x0000FFFF
	lsls r2, r4, #0x18
	asrs r2, r2, #0x18
	adds r0, r3, #0
	bl sub_08090B80
_08003D06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003D0C: .4byte 0x0000FF80
_08003D10: .4byte 0x0000FFFF

	thumb_func_start sub_08003D14
sub_08003D14: @ 0x08003D14
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08003D30 @ =gUnknown_02015EC0
	lsrs r0, r0, #0xf
	adds r1, r0, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08003D2A
	movs r0, #1
	rsbs r0, r0, #0
_08003D2A:
	pop {r1}
	bx r1
	.align 2, 0
_08003D30: .4byte gUnknown_02015EC0

	thumb_func_start sub_08003D34
sub_08003D34: @ 0x08003D34
	lsls r0, r0, #0x10
	ldr r1, _08003D44 @ =gUnknown_02015ED8
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08003D44: .4byte gUnknown_02015ED8

	thumb_func_start sub_08003D48
sub_08003D48: @ 0x08003D48
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08003D60 @ =gUnknown_02015EF0
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08003E5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08003D60: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003D64
sub_08003D64: @ 0x08003D64
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003DD0
	cmp r0, #0
	beq _08003D7C
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	b _08003D7E
_08003D7C:
	movs r0, #0
_08003D7E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003D84
sub_08003D84: @ 0x08003D84
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003DB4 @ =gUnknown_08120E1C
	ldr r1, _08003DB8 @ =gUnknown_08120E94
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r3, [r0]
	movs r1, #0
_08003D9E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	bne _08003DBC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _08003DCA
	.align 2, 0
_08003DB4: .4byte gUnknown_08120E1C
_08003DB8: .4byte gUnknown_08120E94
_08003DBC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _08003D9E
	movs r0, #1
	rsbs r0, r0, #0
_08003DCA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003DD0
sub_08003DD0: @ 0x08003DD0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bgt _08003DF0
	cmp r2, #0
	blt _08003DF0
	ldr r0, _08003DEC @ =gUnknown_08120E1C
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08003DF2
	.align 2, 0
_08003DEC: .4byte gUnknown_08120E1C
_08003DF0:
	movs r0, #0
_08003DF2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003DF8
sub_08003DF8: @ 0x08003DF8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bgt _08003E18
	cmp r2, #2
	blt _08003E18
	ldr r0, _08003E14 @ =gUnknown_08120E1C
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08003E1A
	.align 2, 0
_08003E14: .4byte gUnknown_08120E1C
_08003E18:
	movs r0, #0
_08003E1A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003E20
sub_08003E20: @ 0x08003E20
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	cmp r0, #0
	bne _08003E30
	movs r0, #4
	b _08003E56
_08003E30:
	cmp r0, #0x64
	bne _08003E3A
	movs r0, #0x80
	lsls r0, r0, #1
	b _08003E56
_08003E3A:
	movs r3, #0xc8
	lsls r3, r3, #1
	cmp r2, r3
	beq _08003E52
	movs r1, #0xff
	lsls r1, r1, #2
	movs r0, #4
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08003E56
_08003E52:
	movs r0, #0xff
	lsls r0, r0, #2
_08003E56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003E5C
sub_08003E5C: @ 0x08003E5C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r1, #4
	bhi _08003E6C
	movs r0, #0
	b _08003E9C
_08003E6C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08003E78
	movs r0, #0x64
	b _08003E9C
_08003E78:
	ldr r0, _08003E94 @ =0x000003FB
	cmp r2, r0
	bhi _08003E98
	movs r1, #0xc8
	lsls r1, r1, #1
	movs r3, #0xff
	lsls r3, r3, #2
	movs r0, #0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08003E9C
	.align 2, 0
_08003E94: .4byte 0x000003FB
_08003E98:
	movs r0, #0xc8
	lsls r0, r0, #1
_08003E9C:
	pop {r1}
	bx r1

	thumb_func_start sub_08003EA0
sub_08003EA0: @ 0x08003EA0
	push {r4, lr}
	movs r2, #0
	ldr r4, _08003EC4 @ =gUnknown_02015F08
	ldr r3, _08003EC8 @ =gUnknown_02015EF0
_08003EA8:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _08003EA8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003EC4: .4byte gUnknown_02015F08
_08003EC8: .4byte gUnknown_02015EF0

	thumb_func_start sub_08003ECC
sub_08003ECC: @ 0x08003ECC
	push {r4, lr}
	movs r2, #0
	ldr r4, _08003EF0 @ =gUnknown_02015EF0
	ldr r3, _08003EF4 @ =gUnknown_02015F08
_08003ED4:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _08003ED4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003EF0: .4byte gUnknown_02015EF0
_08003EF4: .4byte gUnknown_02015F08

	thumb_func_start sub_08003EF8
sub_08003EF8: @ 0x08003EF8
	push {r4, lr}
	bl sub_08005364
	ldr r0, _08003F40 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #3
	bne _08003F48
	ldr r1, _08003F44 @ =gUnknown_020047E0
	ldrb r0, [r1]
	cmp r0, #1
	bne _08003F48
	ldrh r0, [r1, #0xa]
	cmp r0, #0x39
	bne _08003F48
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r4, #0x80
	lsls r4, r4, #3
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r4, #0
	bl sub_08001B54
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	bl sub_08001ACC
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	bl sub_08001ACC
	b _08003F4C
	.align 2, 0
_08003F40: .4byte gUnknown_02005080
_08003F44: .4byte gUnknown_020047E0
_08003F48:
	bl sub_08000E30
_08003F4C:
	bl sub_080030A4
	bl sub_08003008
	bl sub_0803B7CC
	ldr r0, _08003F6C @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08004028
	lsls r0, r0, #2
	ldr r1, _08003F70 @ =_08003F74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003F6C: .4byte gUnknown_02005080
_08003F70: .4byte _08003F74
_08003F74: @ jump table
	.4byte _08003F94 @ case 0
	.4byte _08003F9E @ case 1
	.4byte _08003F94 @ case 2
	.4byte _08003F94 @ case 3
	.4byte _08003F94 @ case 4
	.4byte _08003F94 @ case 5
	.4byte _08003FA8 @ case 6
	.4byte _08003FFC @ case 7
_08003F94:
	bl sub_08007398
	bl sub_08004044
	b _08004028
_08003F9E:
	bl sub_08007AD4
	bl sub_08004044
	b _08004028
_08003FA8:
	bl sub_08007398
	ldr r4, _08003FE4 @ =gScript
	ldr r1, _08003FE8 @ =0x00008299
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08003FEC @ =0x00008370
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08003FF0 @ =0x00008494
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0802462C
	movs r0, #0
	bl sub_08023118
	ldr r0, _08003FF4 @ =gUnknown_02004CE2
	ldr r1, _08003FF8 @ =0x00009C88
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08001B18
	b _08004028
	.align 2, 0
_08003FE4: .4byte gScript
_08003FE8: .4byte 0x00008299
_08003FEC: .4byte 0x00008370
_08003FF0: .4byte 0x00008494
_08003FF4: .4byte gUnknown_02004CE2
_08003FF8: .4byte 0x00009C88
_08003FFC:
	bl sub_08007398
	ldr r1, _08004034 @ =gScript
	ldr r2, _08004038 @ =0x00008299
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	ldr r3, _0800403C @ =0x00008370
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _08004040 @ =0x00008494
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_0802462C
	movs r0, #1
	bl sub_08023118
_08004028:
	bl sub_08005C38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004034: .4byte gScript
_08004038: .4byte 0x00008299
_0800403C: .4byte 0x00008370
_08004040: .4byte 0x00008494

	thumb_func_start sub_08004044
sub_08004044: @ 0x08004044
	push {lr}
	bl sub_08004114
	bl sub_0800408C
	ldr r0, _08004080 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08004066
	ldr r0, _08004084 @ =gUnknown_020047E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004066
	bl sub_080269AC
	bl sub_08026724
_08004066:
	ldr r0, _08004080 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800407A
	ldr r0, _08004088 @ =gUnknown_02004100
	ldrb r0, [r0]
	cmp r0, #7
	bne _0800407A
	bl sub_08023F4C
_0800407A:
	pop {r0}
	bx r0
	.align 2, 0
_08004080: .4byte gUnknown_020051E4
_08004084: .4byte gUnknown_020047E0
_08004088: .4byte gUnknown_02004100

	thumb_func_start sub_0800408C
sub_0800408C: @ 0x0800408C
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	bl sub_08036BD8
	ldr r2, _080040E8 @ =gSave
	ldr r0, _080040EC @ =gScript
	ldr r1, _080040F0 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	movs r4, #0
	adds r5, r2, #0
	movs r7, #0
	ldr r0, _080040F4 @ =0x00000236
	adds r6, r5, r0
_080040B0:
	adds r0, r4, #0
	bl sub_08036BD8
	lsls r3, r4, #1
	ldr r1, _080040F8 @ =0x00000222
	adds r2, r5, r1
	adds r2, r3, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r2]
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r2, r5, r1
	adds r2, r3, r2
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r2]
	adds r0, #0x8b
	ldrb r2, [r0]
	lsrs r0, r2, #3
	cmp r0, #0xc
	bls _080040FC
	adds r0, r3, r6
	strh r7, [r0]
	b _08004104
	.align 2, 0
_080040E8: .4byte gSave
_080040EC: .4byte gScript
_080040F0: .4byte 0x000067AC
_080040F4: .4byte 0x00000236
_080040F8: .4byte 0x00000222
_080040FC:
	adds r1, r3, r6
	movs r0, #7
	ands r0, r2
	strh r0, [r1]
_08004104:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080040B0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004114
sub_08004114: @ 0x08004114
	push {r4, r5, lr}
	ldr r4, _08004150 @ =0x04000208
	movs r0, #0
	strh r0, [r4]
	ldr r1, _08004154 @ =0x04000200
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldr r2, _08004158 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	bl sub_080037D8
	ldr r5, _0800415C @ =gUnknown_02005080
	ldrb r0, [r5]
	cmp r0, #1
	bne _08004168
	ldr r0, _08004160 @ =gScript
	ldr r1, _08004164 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_08008704
	b _0800418E
	.align 2, 0
_08004150: .4byte 0x04000208
_08004154: .4byte 0x04000200
_08004158: .4byte 0x04000004
_0800415C: .4byte gUnknown_02005080
_08004160: .4byte gScript
_08004164: .4byte 0x000067AC
_08004168:
	ldr r4, _080041E0 @ =gScript
	ldr r2, _080041E4 @ =0x000067AC
	adds r0, r4, r2
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_080083B8
	ldr r0, _080041E8 @ =0x00008494
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800418E
	ldrb r0, [r5]
	cmp r0, #4
	bne _0800418E
	bl sub_08003ECC
_0800418E:
	ldr r4, _080041EC @ =gUnknown_02016028
	ldr r5, _080041E0 @ =gScript
	ldr r1, _080041F0 @ =0x0000679C
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r4]
	strh r0, [r4]
	ldr r2, _080041F4 @ =0x0000679E
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	strh r0, [r4, #2]
	ldr r1, _080041F8 @ =0x000067A0
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #4]
	strh r0, [r4, #4]
	movs r0, #6
	strb r0, [r5]
	bl sub_08013D38
	ldr r2, _080041E8 @ =0x00008494
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080041C6
	b _08004360
_080041C6:
	movs r0, #1
	strb r0, [r5]
	ldr r0, _080041FC @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #4
	beq _08004200
	cmp r0, #4
	ble _080041D8
	b _080043DA
_080041D8:
	cmp r0, #3
	beq _0800429C
	b _080043DA
	.align 2, 0
_080041E0: .4byte gScript
_080041E4: .4byte 0x000067AC
_080041E8: .4byte 0x00008494
_080041EC: .4byte gUnknown_02016028
_080041F0: .4byte 0x0000679C
_080041F4: .4byte 0x0000679E
_080041F8: .4byte 0x000067A0
_080041FC: .4byte gUnknown_02005080
_08004200:
	ldr r0, _08004210 @ =gUnknown_02004100
	ldrb r0, [r0]
	cmp r0, #5
	beq _08004214
	cmp r0, #0xc
	beq _08004220
	b _080043DA
	.align 2, 0
_08004210: .4byte gUnknown_02004100
_08004214:
	ldr r1, _08004238 @ =0x000067AC
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x8b
	beq _08004220
	b _080043DA
_08004220:
	ldr r1, _0800423C @ =gScript
	ldr r2, _08004240 @ =0x00008496
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1f
	cmp r2, #0
	beq _08004248
	ldr r0, _08004244 @ =0x00009485
	adds r1, r1, r0
	b _080043D6
	.align 2, 0
_08004238: .4byte 0x000067AC
_0800423C: .4byte gScript
_08004240: .4byte 0x00008496
_08004244: .4byte 0x00009485
_08004248:
	ldr r4, _08004284 @ =gUnknown_02016028
	ldr r1, _08004288 @ =0x00004B02
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _0800428C @ =gUnknown_080C1FF0
	bl sub_0800A240
	ldr r2, _08004290 @ =0x00005778
	adds r0, r4, r2
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r0, _08004294 @ =0x000121BB
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08004298 @ =0x000121C4
	adds r4, r4, r1
	movs r0, #0x50
	strb r0, [r4]
	b _080043DA
	.align 2, 0
_08004284: .4byte gUnknown_02016028
_08004288: .4byte 0x00004B02
_0800428C: .4byte gUnknown_080C1FF0
_08004290: .4byte 0x00005778
_08004294: .4byte 0x000121BB
_08004298: .4byte 0x000121C4
_0800429C:
	ldr r2, _080042EC @ =0x00008496
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08004314
	ldr r1, _080042F0 @ =0x000067AC
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0xe
	bne _08004308
	ldr r2, _080042F4 @ =0x00004B02
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080042F8 @ =gUnknown_080C1FF0
	bl sub_0800A240
	ldr r1, _080042FC @ =0x00005778
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r0, _08004300 @ =0x000121BB
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08004304 @ =0x000121C4
	adds r1, r4, r2
	movs r0, #0x50
	b _080043D8
	.align 2, 0
_080042EC: .4byte 0x00008496
_080042F0: .4byte 0x000067AC
_080042F4: .4byte 0x00004B02
_080042F8: .4byte gUnknown_080C1FF0
_080042FC: .4byte 0x00005778
_08004300: .4byte 0x000121BB
_08004304: .4byte 0x000121C4
_08004308:
	ldr r0, _08004310 @ =0x00009485
	adds r1, r5, r0
	movs r0, #0
	b _080043D8
	.align 2, 0
_08004310: .4byte 0x00009485
_08004314:
	ldr r2, _0800434C @ =0x00004B02
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _08004350 @ =gUnknown_080C1FF0
	bl sub_0800A240
	ldr r1, _08004354 @ =0x00005778
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r0, _08004358 @ =0x000121BB
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0800435C @ =0x000121C4
	adds r1, r4, r2
	movs r0, #0x50
	b _080043D8
	.align 2, 0
_0800434C: .4byte 0x00004B02
_08004350: .4byte gUnknown_080C1FF0
_08004354: .4byte 0x00005778
_08004358: .4byte 0x000121BB
_0800435C: .4byte 0x000121C4
_08004360:
	ldr r0, _08004388 @ =gUnknown_02005080
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #3
	bne _08004394
	ldr r1, _0800438C @ =0x00008490
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08004394
	ldr r2, _08004390 @ =0x000035BA
	adds r0, r4, r2
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080043DA
	movs r0, #0xe
	strb r0, [r5]
	b _080043DA
	.align 2, 0
_08004388: .4byte gUnknown_02005080
_0800438C: .4byte 0x00008490
_08004390: .4byte 0x000035BA
_08004394:
	ldr r0, _080043AC @ =gUnknown_02016028
	ldr r1, _080043B0 @ =0x000035BA
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080043B8
	ldr r1, _080043B4 @ =gScript
	movs r0, #0xe
	b _080043D8
	.align 2, 0
_080043AC: .4byte gUnknown_02016028
_080043B0: .4byte 0x000035BA
_080043B4: .4byte gScript
_080043B8:
	ldrb r0, [r2]
	cmp r0, #4
	bne _080043D4
	ldr r2, _080043D0 @ =gUnknown_020051E8
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _080043D4
	strb r1, [r2, #2]
	bl sub_08025D64
	b _080043DA
	.align 2, 0
_080043D0: .4byte gUnknown_020051E8
_080043D4:
	ldr r1, _080043E0 @ =gScript
_080043D6:
	movs r0, #0
_080043D8:
	strb r0, [r1]
_080043DA:
	ldr r4, _080043E4 @ =gUnknown_020051E4
	b _080043EC
	.align 2, 0
_080043E0: .4byte gScript
_080043E4: .4byte gUnknown_020051E4
_080043E8:
	bl sub_0800444C
_080043EC:
	bl sub_080044B8
	bl sub_08013EB8
	ldrb r0, [r4]
	cmp r0, #7
	beq _080043E8
	ldr r0, _08004434 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800442C
	cmp r0, #5
	beq _0800442C
	bl sub_080037E4
	ldr r3, _08004438 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0800443C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08004440 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08004444 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08004448 @ =0x0000FFE7
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bl sub_080018E4
_0800442C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004434: .4byte gUnknown_020051E4
_08004438: .4byte 0x04000208
_0800443C: .4byte 0x04000200
_08004440: .4byte 0x0000FFFC
_08004444: .4byte 0x04000004
_08004448: .4byte 0x0000FFE7

	thumb_func_start sub_0800444C
sub_0800444C: @ 0x0800444C
	push {r4, lr}
	ldr r4, _080044A0 @ =gScript
	ldr r0, _080044A4 @ =0x00009D14
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4]
	ldr r1, _080044A8 @ =0x000067C4
	adds r2, r4, r1
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080044AC @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_080083B8
	ldr r0, _080044B0 @ =0x00009488
	adds r4, r4, r0
	ldr r1, _080044B4 @ =gUnknown_03005314
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080044A0: .4byte gScript
_080044A4: .4byte 0x00009D14
_080044A8: .4byte 0x000067C4
_080044AC: .4byte 0x000067AC
_080044B0: .4byte 0x00009488
_080044B4: .4byte gUnknown_03005314

	thumb_func_start sub_080044B8
sub_080044B8: @ 0x080044B8
	push {r4, r5, r6, lr}
	ldr r3, _08004514 @ =gScript
	ldr r0, _08004518 @ =0x00009D14
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080044FE
	adds r4, r3, #0
	adds r6, r2, #0
	movs r1, #0x11
	rsbs r1, r1, #0
	adds r5, r1, #0
_080044D8:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080044F6
	bl sub_0800451C
	ldrb r0, [r4, #3]
	ands r0, r5
	strb r0, [r4, #3]
_080044F6:
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080044D8
_080044FE:
	ldr r0, _08004514 @ =gScript
	ldr r1, _08004518 @ =0x00009D14
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004514: .4byte gScript
_08004518: .4byte 0x00009D14

	thumb_func_start sub_0800451C
sub_0800451C: @ 0x0800451C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r2, sp
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x80
	strh r0, [r1]
	bl sub_08001960
	bl sub_080037A8
	bl sub_080037BC
	bl sub_080037E4
	mov r4, sp
	adds r4, #2
	ldr r0, _0800462C @ =0x04000080
	ldrh r0, [r0]
	strh r0, [r4]
	add r3, sp, #4
	ldr r1, _08004630 @ =0x04000084
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r2, [r1]
	ldr r0, _08004634 @ =0x0000FF7F
	ands r0, r2
	strh r0, [r1]
	movs r5, #0
	mov r8, r4
	adds r7, r3, #0
_08004562:
	bl sub_08001960
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1d
	bls _08004562
	movs r0, #0
	bl sub_0800186C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08004638 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0800463C @ =gUnknown_080C1FF8
	bl sub_0800A480
	bl sub_080377D0
	ldr r1, _08004640 @ =gUnknown_02016028
	ldr r0, _08004644 @ =0x000121B6
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r6, _08004648 @ =0x04000130
	ldr r2, _0800464C @ =0x000003FF
	adds r5, r2, #0
_080045A2:
	ldrh r0, [r6]
	adds r4, r5, #0
	bics r4, r0
	bl sub_08001960
	cmp r4, #0
	bne _080045A2
	ldr r0, _08004650 @ =gUnknown_02018CC8
	movs r1, #0
	bl sub_08001630
	movs r5, #0
_080045BA:
	bl sub_08001960
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1d
	bls _080045BA
	ldr r1, _08004630 @ =0x04000084
	ldrh r0, [r7]
	strh r0, [r1]
	subs r1, #4
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1]
	bl sub_080037D8
	ldr r4, _08004654 @ =gScript
	ldr r0, _08004658 @ =0x00009D14
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r2, _0800465C @ =0x000082B9
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800462C: .4byte 0x04000080
_08004630: .4byte 0x04000084
_08004634: .4byte 0x0000FF7F
_08004638: .4byte 0x0000FEFF
_0800463C: .4byte gUnknown_080C1FF8
_08004640: .4byte gUnknown_02016028
_08004644: .4byte 0x000121B6
_08004648: .4byte 0x04000130
_0800464C: .4byte 0x000003FF
_08004650: .4byte gUnknown_02018CC8
_08004654: .4byte gScript
_08004658: .4byte 0x00009D14
_0800465C: .4byte 0x000082B9

	thumb_func_start sub_08004660
sub_08004660: @ 0x08004660
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	bl sub_08004F7C
	ldr r6, _08004724 @ =gScript
	ldr r0, _08004728 @ =0x00008494
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004686
	movs r0, #4
	bl sub_0801B5E8
_08004686:
	ldrb r7, [r6]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080046C8
	ldr r5, _0800472C @ =0x00000315
	adds r0, r5, #0
	bl sub_08002970
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl set_event_flag
	movs r0, #7
	strb r0, [r6]
	bl sub_08013EB8
	ldr r1, _08004730 @ =0x0000595C
	adds r0, r6, r1
	ldrb r0, [r0]
	bl sub_08007D94
	bl sub_08001960
	bl sub_08005C4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl set_event_flag
_080046C8:
	ldr r0, _08004734 @ =gUnknown_03004B00
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08004738 @ =gUnknown_03004B02
	strh r1, [r0]
	bl sub_08005BFC
	ldr r2, _0800473C @ =0x00005978
	adds r0, r6, r2
	ldrh r0, [r0]
	bl sub_08007760
	bl sub_08005C14
	ldr r1, _08004740 @ =gUnknown_02016028
	ldr r2, _08004744 @ =0x0000679C
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r2, _08004748 @ =0x0000679E
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r2, [r1, #2]
	strh r0, [r1, #2]
	ldr r2, _0800474C @ =0x000067A0
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r2, [r1, #4]
	strh r0, [r1, #4]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08004754
	cmp r7, #1
	beq _08004772
	bl sub_0802773C
	ldr r2, _08004750 @ =0x000067C4
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _08004764
	.align 2, 0
_08004724: .4byte gScript
_08004728: .4byte 0x00008494
_0800472C: .4byte 0x00000315
_08004730: .4byte 0x0000595C
_08004734: .4byte gUnknown_03004B00
_08004738: .4byte gUnknown_03004B02
_0800473C: .4byte 0x00005978
_08004740: .4byte gUnknown_02016028
_08004744: .4byte 0x0000679C
_08004748: .4byte 0x0000679E
_0800474C: .4byte 0x000067A0
_08004750: .4byte 0x000067C4
_08004754:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08004764
	movs r0, #6
	strb r0, [r6]
	bl sub_08013D38
_08004764:
	ldr r1, _0800477C @ =gScript
	ldr r2, _08004780 @ =0x00008494
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08004784
_08004772:
	ldr r1, _0800477C @ =gScript
	movs r0, #1
	strb r0, [r1]
	b _08004786
	.align 2, 0
_0800477C: .4byte gScript
_08004780: .4byte 0x00008494
_08004784:
	strb r7, [r1]
_08004786:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004794
sub_08004794: @ 0x08004794
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r5, _080048A4 @ =0x04000208
	movs r4, #0
	strh r4, [r5]
	mov r2, sp
	ldr r1, _080048A8 @ =0x04000200
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #2
	add r0, sp
	mov sb, r0
	ldr r2, _080048AC @ =0x04000004
	ldrh r0, [r2]
	mov r3, sb
	strh r0, [r3]
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r5]
	ldr r5, _080048B0 @ =gScript
	ldrb r7, [r5]
	ldr r1, _080048B4 @ =0x00005962
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	ldr r3, _080048B8 @ =0x00005960
	adds r1, r5, r3
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080048BC @ =0x0000595C
	adds r0, r5, r1
	strb r4, [r0]
	subs r3, #5
	adds r0, r5, r3
	strb r4, [r0]
	movs r0, #0
	bl sub_08007D94
	ldr r0, _080048C0 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08001ACC
	ldr r4, _080048C4 @ =gUnknown_02016078
	adds r0, r4, #0
	bl sub_080019A4
	ldr r0, _080048C8 @ =0x00008462
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	bl sub_08019EE8
	subs r4, #0x50
	ldrh r0, [r4]
	strh r6, [r4]
	ldrh r0, [r4, #2]
	strh r6, [r4, #2]
	ldrh r0, [r4, #4]
	strh r6, [r4, #4]
	movs r0, #2
	strb r0, [r5]
	bl sub_08013D38
	mov r1, r8
	ldrh r0, [r1]
	movs r5, #0x96
	lsls r5, r5, #1
	mov r6, sb
	cmp r0, #4
	bne _08004836
	adds r5, #0x3c
_08004836:
	movs r4, #0
	cmp r4, r5
	bhs _08004852
_0800483C:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0800483C
_08004852:
	ldr r4, _080048B0 @ =gScript
	movs r0, #2
	strb r0, [r4]
	bl sub_08013EB8
	ldr r3, _080048CC @ =0x00008494
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080048E0
	movs r0, #1
	strb r0, [r4]
	ldr r1, _080048D0 @ =0x00009480
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	bne _080048E2
	ldr r0, _080048D4 @ =gUnknown_02016028
	ldr r3, _080048D8 @ =0x000121B8
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	ldr r1, _080048DC @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #1
	bl sub_080106CC
	bl sub_0801084C
	bl sub_0802781C
	b _080048E2
	.align 2, 0
_080048A4: .4byte 0x04000208
_080048A8: .4byte 0x04000200
_080048AC: .4byte 0x04000004
_080048B0: .4byte gScript
_080048B4: .4byte 0x00005962
_080048B8: .4byte 0x00005960
_080048BC: .4byte 0x0000595C
_080048C0: .4byte gUnknown_03005314
_080048C4: .4byte gUnknown_02016078
_080048C8: .4byte 0x00008462
_080048CC: .4byte 0x00008494
_080048D0: .4byte 0x00009480
_080048D4: .4byte gUnknown_02016028
_080048D8: .4byte 0x000121B8
_080048DC: .4byte 0x000067AC
_080048E0:
	strb r7, [r4]
_080048E2:
	ldr r2, _0800492C @ =gUnknown_02016028
	ldr r1, _08004930 @ =gScript
	ldr r3, _08004934 @ =0x0000679C
	adds r0, r1, r3
	ldrh r0, [r0]
	ldrh r3, [r2]
	movs r3, #0
	strh r0, [r2]
	ldr r4, _08004938 @ =0x0000679E
	adds r0, r1, r4
	ldrh r0, [r0]
	ldrh r4, [r2, #2]
	strh r0, [r2, #2]
	ldr r0, _0800493C @ =0x000067A0
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	ldr r2, _08004940 @ =0x04000208
	strh r3, [r2]
	ldr r1, _08004944 @ =0x04000200
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08004948 @ =0x04000004
	ldrh r0, [r6]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800492C: .4byte gUnknown_02016028
_08004930: .4byte gScript
_08004934: .4byte 0x0000679C
_08004938: .4byte 0x0000679E
_0800493C: .4byte 0x000067A0
_08004940: .4byte 0x04000208
_08004944: .4byte 0x04000200
_08004948: .4byte 0x04000004

	thumb_func_start sub_0800494C
sub_0800494C: @ 0x0800494C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080049C8 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	add r6, sp, #4
	ldr r1, _080049CC @ =0x04000200
	ldrh r0, [r1]
	strh r0, [r6]
	mov r5, sp
	adds r5, #6
	ldr r2, _080049D0 @ =0x04000004
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r1]
	movs r4, #1
	orrs r0, r4
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	ldr r3, _080049D4 @ =gScript
	ldrb r0, [r3]
	mov sl, r0
	movs r1, #0
	mov r8, r1
	movs r0, #3
	strb r0, [r3]
	ldr r0, _080049D8 @ =0x000067C4
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r7, _080049DC @ =gUnknown_02016028
	ldr r1, _080049E0 @ =0x00011D16
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	mov r1, sp
	adds r1, #2
	strh r4, [r1]
	ldr r2, _080049E4 @ =0x000067AC
	adds r0, r3, r2
	ldrh r0, [r0]
	adds r4, r1, #0
	cmp r0, #0xd6
	beq _08004A34
	cmp r0, #0xd6
	bgt _080049E8
	cmp r0, #0xcb
	beq _080049EC
	b _08004A5C
	.align 2, 0
_080049C8: .4byte 0x04000208
_080049CC: .4byte 0x04000200
_080049D0: .4byte 0x04000004
_080049D4: .4byte gScript
_080049D8: .4byte 0x000067C4
_080049DC: .4byte gUnknown_02016028
_080049E0: .4byte 0x00011D16
_080049E4: .4byte 0x000067AC
_080049E8:
	cmp r0, #0xd8
	bgt _08004A5C
_080049EC:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08004A24 @ =0x000067C4
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08004A28 @ =gUnknown_02016028
	ldr r3, _08004A2C @ =0x000053A0
	adds r2, r1, r3
	ldrh r0, [r2]
	subs r0, #0x78
	strh r0, [r2]
	ldr r0, _08004A30 @ =0x000121BB
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x9f
	bl sub_08005AD8
	b _08004A82
	.align 2, 0
_08004A24: .4byte 0x000067C4
_08004A28: .4byte gUnknown_02016028
_08004A2C: .4byte 0x000053A0
_08004A30: .4byte 0x000121BB
_08004A34:
	mov r0, sp
	mov r1, r8
	strh r1, [r0]
	strh r1, [r4]
	ldr r2, _08004A54 @ =0x000053A0
	adds r1, r7, r2
	ldrh r0, [r1]
	adds r0, #0xb4
	strh r0, [r1]
	ldr r3, _08004A58 @ =0x000121BB
	adds r2, r7, r3
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _08004A82
	.align 2, 0
_08004A54: .4byte 0x000053A0
_08004A58: .4byte 0x000121BB
_08004A5C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08004B74 @ =gUnknown_02016028
	ldr r0, _08004B78 @ =0x000053A0
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #0xb4
	strh r0, [r2]
	ldr r2, _08004B7C @ =0x000121BB
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x9f
	bl sub_08005AD8
_08004A82:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08004A8C
	bl sub_08005BFC
_08004A8C:
	movs r5, #0
	ldr r0, _08004B74 @ =gUnknown_02016028
	ldr r3, _08004B78 @ =0x000053A0
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r5, r1
	bhs _08004B08
	mov sb, r0
	ldr r4, _08004B80 @ =gScript
	ldr r2, _08004B84 @ =0x000083B0
	adds r2, r2, r4
	mov r8, r2
	ldr r3, _08004B88 @ =0x000067C4
	adds r7, r4, r3
	ldr r6, _08004B8C @ =0x0000FFE1
_08004AAA:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08004AFA
	mov r1, sb
	ldrh r0, [r1]
	subs r0, #0x1e
	cmp r5, r0
	bne _08004AFA
	ldrb r0, [r7]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	ldr r2, _08004B90 @ =0x000083AC
	adds r0, r4, r2
	strh r6, [r0]
	ldr r3, _08004B94 @ =0x000083AA
	adds r0, r4, r3
	strh r6, [r0]
	ldr r1, _08004B98 @ =0x000083A8
	adds r0, r4, r1
	strh r6, [r0]
	movs r0, #0xa
	movs r1, #0x1e
	movs r2, #0
	bl sub_080272F4
	mov r2, r8
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
_08004AFA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sb
	ldrh r0, [r0]
	cmp r5, r0
	blo _08004AAA
_08004B08:
	ldr r0, _08004B9C @ =0x06008000
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_08001ACC
	ldr r0, _08004BA0 @ =0x06006000
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_08001ACC
	ldr r0, _08004B80 @ =gScript
	movs r4, #0
	mov r1, sl
	strb r1, [r0]
	ldr r0, _08004B74 @ =gUnknown_02016028
	ldr r2, _08004BA4 @ =0x00011D16
	adds r3, r0, r2
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	ldr r3, _08004BA8 @ =0x000121B8
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	bl sub_08005B68
	bl sub_08005C14
	ldr r2, _08004BAC @ =0x04000208
	strh r4, [r2]
	ldr r1, _08004BB0 @ =0x04000200
	mov r3, sp
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldr r1, _08004BB4 @ =0x04000004
	ldrh r0, [r3, #6]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004B74: .4byte gUnknown_02016028
_08004B78: .4byte 0x000053A0
_08004B7C: .4byte 0x000121BB
_08004B80: .4byte gScript
_08004B84: .4byte 0x000083B0
_08004B88: .4byte 0x000067C4
_08004B8C: .4byte 0x0000FFE1
_08004B90: .4byte 0x000083AC
_08004B94: .4byte 0x000083AA
_08004B98: .4byte 0x000083A8
_08004B9C: .4byte 0x06008000
_08004BA0: .4byte 0x06006000
_08004BA4: .4byte 0x00011D16
_08004BA8: .4byte 0x000121B8
_08004BAC: .4byte 0x04000208
_08004BB0: .4byte 0x04000200
_08004BB4: .4byte 0x04000004

	thumb_func_start sub_08004BB8
sub_08004BB8: @ 0x08004BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08004C8C @ =0x04000208
	movs r0, #0
	strh r0, [r4]
	mov r2, sp
	ldr r1, _08004C90 @ =0x04000200
	ldrh r0, [r1]
	strh r0, [r2]
	mov r5, sp
	adds r5, #2
	ldr r2, _08004C94 @ =0x04000004
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	ldr r2, _08004C98 @ =gScript
	ldrb r7, [r2]
	movs r0, #4
	strb r0, [r2]
	ldr r0, _08004C9C @ =0x000067C4
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _08004CA0 @ =gUnknown_02016028
	ldr r1, _08004CA4 @ =0x00011D16
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl sub_08005BFC
	movs r6, #0
	ldr r0, _08004CA8 @ =0x000053A0
	adds r4, r4, r0
	ldrh r1, [r4]
	cmp r6, r1
	bhs _08004C30
_08004C18:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4]
	cmp r6, r0
	blo _08004C18
_08004C30:
	ldr r0, _08004CAC @ =0x06008000
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_08001ACC
	ldr r0, _08004CB0 @ =0x06006000
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_08001ACC
	ldr r0, _08004C98 @ =gScript
	movs r4, #0
	strb r7, [r0]
	ldr r0, _08004CA0 @ =gUnknown_02016028
	ldr r1, _08004CA4 @ =0x00011D16
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	ldr r1, _08004CB4 @ =0x000121B8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	bl sub_08005C14
	ldr r2, _08004C8C @ =0x04000208
	strh r4, [r2]
	ldr r1, _08004C90 @ =0x04000200
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08004C94 @ =0x04000004
	ldrh r0, [r5]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004C8C: .4byte 0x04000208
_08004C90: .4byte 0x04000200
_08004C94: .4byte 0x04000004
_08004C98: .4byte gScript
_08004C9C: .4byte 0x000067C4
_08004CA0: .4byte gUnknown_02016028
_08004CA4: .4byte 0x00011D16
_08004CA8: .4byte 0x000053A0
_08004CAC: .4byte 0x06008000
_08004CB0: .4byte 0x06006000
_08004CB4: .4byte 0x000121B8

	thumb_func_start sub_08004CB8
sub_08004CB8: @ 0x08004CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _08004D18 @ =0x04000208
	movs r0, #0
	strh r0, [r5]
	mov r2, sp
	ldr r1, _08004D1C @ =0x04000200
	ldrh r0, [r1]
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	ldr r2, _08004D20 @ =0x04000004
	ldrh r0, [r2]
	strh r0, [r4]
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r5]
	ldr r2, _08004D24 @ =gScript
	ldrb r6, [r2]
	movs r0, #5
	strb r0, [r2]
	ldr r0, _08004D28 @ =0x000067C4
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08004D2C @ =gUnknown_02016028
	ldr r2, _08004D30 @ =0x00011D16
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	bl sub_08005BFC
	ldr r0, _08004D34 @ =0x00000246
	bl sub_0800399C
	adds r7, r4, #0
	b _08004DA6
	.align 2, 0
_08004D18: .4byte 0x04000208
_08004D1C: .4byte 0x04000200
_08004D20: .4byte 0x04000004
_08004D24: .4byte gScript
_08004D28: .4byte 0x000067C4
_08004D2C: .4byte gUnknown_02016028
_08004D30: .4byte 0x00011D16
_08004D34: .4byte 0x00000246
_08004D38:
	ldr r0, _08004D6C @ =0x00000111
	ands r0, r1
	cmp r0, #0
	beq _08004D7C
	ldr r0, _08004D70 @ =0x000053AC
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	ldr r2, _08004D74 @ =0x000053AE
	adds r1, r5, r2
	ldrh r1, [r1]
	cmp r0, r1
	bge _08004DA6
	ldr r0, _08004D78 @ =0x00000246
	bl sub_0800399C
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0
	bl sub_08024DCC
	b _08004DA6
	.align 2, 0
_08004D6C: .4byte 0x00000111
_08004D70: .4byte 0x000053AC
_08004D74: .4byte 0x000053AE
_08004D78: .4byte 0x00000246
_08004D7C:
	movs r0, #0x88
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08004DA6
	ldr r1, _08004E30 @ =0x000053AC
	adds r4, r5, r1
	ldrh r0, [r4]
	cmp r0, #0
	beq _08004DA6
	ldr r0, _08004E34 @ =0x00000246
	bl sub_0800399C
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #0
	bl sub_08024DCC
_08004DA6:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldr r5, _08004E38 @ =gUnknown_02016028
	ldr r1, _08004E3C @ =0x00002CA0
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08004D38
	movs r0, #0xd3
	bl sub_0800399C
	ldr r0, _08004E40 @ =0x06008000
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_08001ACC
	ldr r0, _08004E44 @ =0x06006000
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_08001ACC
	ldr r1, _08004E48 @ =gScript
	movs r4, #0
	strb r6, [r1]
	ldr r2, _08004E4C @ =0x000067C4
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _08004E50 @ =0x00011D16
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08004E54 @ =0x000121B8
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	bl sub_08005C14
	ldr r2, _08004E58 @ =0x04000208
	strh r4, [r2]
	ldr r1, _08004E5C @ =0x04000200
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08004E60 @ =0x04000004
	ldrh r0, [r7]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004E30: .4byte 0x000053AC
_08004E34: .4byte 0x00000246
_08004E38: .4byte gUnknown_02016028
_08004E3C: .4byte 0x00002CA0
_08004E40: .4byte 0x06008000
_08004E44: .4byte 0x06006000
_08004E48: .4byte gScript
_08004E4C: .4byte 0x000067C4
_08004E50: .4byte 0x00011D16
_08004E54: .4byte 0x000121B8
_08004E58: .4byte 0x04000208
_08004E5C: .4byte 0x04000200
_08004E60: .4byte 0x04000004

	thumb_func_start sub_08004E64
sub_08004E64: @ 0x08004E64
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08004F5C @ =gScript
	ldrb r6, [r0]
	movs r3, #0
	ldr r4, _08004F60 @ =gUnknown_02016028
	adds r5, r4, #0
	adds r5, #0xa
_08004E74:
	lsls r0, r3, #1
	mov r1, sp
	adds r2, r1, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08004E74
	adds r0, r4, #0
	movs r1, #3
	bl sub_08007CE8
	ldrh r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	ldrh r1, [r4, #0x14]
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	ldrh r1, [r4, #0x12]
	strh r0, [r4, #0x12]
	ldr r0, _08004F64 @ =0x000121B9
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08004F68 @ =0x00003684
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _08004F6C @ =0x000121BE
	adds r0, r4, r2
	strh r1, [r0]
	ldr r4, _08004F5C @ =gScript
	ldr r1, _08004F70 @ =0x0000829B
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _08004ED6
	movs r0, #5
	bl sub_08003BA8
_08004ED6:
	bl sub_08027A28
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0xd
	strb r0, [r4]
	ldr r2, _08004F74 @ =0x00009D14
	adds r1, r4, r2
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004F08
	adds r4, r1, #0
_08004EF4:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08004EF4
_08004F08:
	movs r3, #0
	ldr r4, _08004F60 @ =gUnknown_02016028
	adds r4, #0xa
_08004F0E:
	lsls r0, r3, #1
	adds r2, r0, r4
	add r0, sp
	ldrh r0, [r0]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08004F0E
	bl sub_08005BFC
	bl sub_0801084C
	bl sub_08005C14
	ldr r1, _08004F60 @ =gUnknown_02016028
	ldr r0, _08004F78 @ =0x000121B8
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _08004F5C @ =gScript
	ldr r1, _08004F74 @ =0x00009D14
	adds r2, r3, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r6, [r3]
	bl sub_08027AE0
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004F5C: .4byte gScript
_08004F60: .4byte gUnknown_02016028
_08004F64: .4byte 0x000121B9
_08004F68: .4byte 0x00003684
_08004F6C: .4byte 0x000121BE
_08004F70: .4byte 0x0000829B
_08004F74: .4byte 0x00009D14
_08004F78: .4byte 0x000121B8

	thumb_func_start sub_08004F7C
sub_08004F7C: @ 0x08004F7C
	push {r4, lr}
	ldr r0, _08004FAC @ =gScript
	ldr r1, _08004FB0 @ =0x00008494
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _08004FA4
	adds r4, r2, #0
_08004F90:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004F90
_08004FA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004FAC: .4byte gScript
_08004FB0: .4byte 0x00008494

	thumb_func_start sub_08004FB4
sub_08004FB4: @ 0x08004FB4
	push {r4, r5, lr}
	bl sub_0800519C
	ldr r4, _08004FE8 @ =gUnknown_02018CC8
	adds r0, r4, #0
	bl sub_0800164C
	ldr r1, _08004FEC @ =gScript
	ldrb r0, [r1]
	cmp r0, #2
	bne _08004FF4
	ldr r0, _08004FF0 @ =0xFFFFD360
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_08005104
	bl nullsub_3
	b _080050E6
	.align 2, 0
_08004FE8: .4byte gUnknown_02018CC8
_08004FEC: .4byte gScript
_08004FF0: .4byte 0xFFFFD360
_08004FF4:
	cmp r0, #3
	bne _08005018
	ldr r0, _08005014 @ =0xFFFFD360
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_08024148
	bl sub_080093F0
	b _080050AE
	.align 2, 0
_08005014: .4byte 0xFFFFD360
_08005018:
	cmp r0, #4
	bne _0800503C
	ldr r0, _08005038 @ =0xFFFFD360
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_080242C4
	bl sub_080093F0
	b _080050AE
	.align 2, 0
_08005038: .4byte 0xFFFFD360
_0800503C:
	cmp r0, #5
	bne _08005060
	ldr r0, _0800505C @ =0xFFFFD360
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_0802443C
	bl sub_080093F0
	b _080050AE
	.align 2, 0
_0800505C: .4byte 0xFFFFD360
_08005060:
	cmp r0, #0xd
	bne _08005090
	ldr r0, _0800508C @ =0xFFFFD360
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x98
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_08005104
	bl sub_08038F90
	bl sub_08032FBC
	bl nullsub_3
	b _080050E6
	.align 2, 0
_0800508C: .4byte 0xFFFFD360
_08005090:
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080050AE
	ldr r0, _080050EC @ =0xFFFFD360
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl nullsub_6
_080050AE:
	ldr r4, _080050F0 @ =gUnknown_02018CC8
	adds r0, r4, #0
	bl nullsub_2
	ldr r5, _080050F4 @ =gScript
	ldrb r1, [r5, #1]
	movs r0, #5
	ands r0, r1
	cmp r0, #1
	beq _080050E6
	bl sub_08023148
	ldr r1, _080050F8 @ =0x00009D14
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080050D8
	adds r0, r4, #0
	bl sub_08005104
_080050D8:
	bl sub_080051E0
	adds r0, r4, #0
	bl nullsub_1
	bl nullsub_3
_080050E6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080050EC: .4byte 0xFFFFD360
_080050F0: .4byte gUnknown_02018CC8
_080050F4: .4byte gScript
_080050F8: .4byte 0x00009D14

	thumb_func_start nullsub_1
nullsub_1: @ 0x080050FC
	bx lr
	.align 2, 0

	thumb_func_start nullsub_2
nullsub_2: @ 0x08005100
	bx lr
	.align 2, 0

	thumb_func_start sub_08005104
sub_08005104: @ 0x08005104
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080016E4
	ldr r0, _08005120 @ =gScript
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08005196
	lsls r0, r0, #2
	ldr r1, _08005124 @ =_08005128
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005120: .4byte gScript
_08005124: .4byte _08005128
_08005128: @ jump table
	.4byte _08005168 @ case 0
	.4byte _08005170 @ case 1
	.4byte _08005196 @ case 2
	.4byte _08005196 @ case 3
	.4byte _08005196 @ case 4
	.4byte _08005196 @ case 5
	.4byte _08005196 @ case 6
	.4byte _08005196 @ case 7
	.4byte _08005178 @ case 8
	.4byte _08005196 @ case 9
	.4byte _08005196 @ case 10
	.4byte _08005196 @ case 11
	.4byte _08005196 @ case 12
	.4byte _08005180 @ case 13
	.4byte _08005188 @ case 14
	.4byte _08005190 @ case 15
_08005168:
	adds r0, r4, #0
	bl sub_0800B00C
	b _08005196
_08005170:
	adds r0, r4, #0
	bl sub_0800BB54
	b _08005196
_08005178:
	adds r0, r4, #0
	bl sub_08026DE0
	b _08005196
_08005180:
	adds r0, r4, #0
	bl sub_08026E3C
	b _08005196
_08005188:
	adds r0, r4, #0
	bl sub_08037DB0
	b _08005196
_08005190:
	adds r0, r4, #0
	bl sub_0803A03C
_08005196:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800519C
sub_0800519C: @ 0x0800519C
	push {lr}
	ldr r1, _080051CC @ =gScript
	ldrb r2, [r1, #1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r0, _080051D0 @ =0x0000844C
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0
	strh r0, [r2]
	ldr r2, _080051D4 @ =0x0000844E
	adds r1, r1, r2
	strh r0, [r1]
	ldr r0, _080051D8 @ =gUnknown_02016028
	ldr r1, _080051DC @ =0x00011C8B
	adds r0, r0, r1
	strb r3, [r0]
	bl sub_08032F8C
	pop {r0}
	bx r0
	.align 2, 0
_080051CC: .4byte gScript
_080051D0: .4byte 0x0000844C
_080051D4: .4byte 0x0000844E
_080051D8: .4byte gUnknown_02016028
_080051DC: .4byte 0x00011C8B

	thumb_func_start sub_080051E0
sub_080051E0: @ 0x080051E0
	push {r4, r5, r6, lr}
	ldr r4, _080051FC @ =gUnknown_02016028
	ldr r1, _08005200 @ =0x0000566C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08005204
	bl sub_080052D0
	b _080052B4
	.align 2, 0
_080051FC: .4byte gUnknown_02016028
_08005200: .4byte 0x0000566C
_08005204:
	ldr r2, _08005270 @ =0x00011D16
	adds r5, r4, r2
	ldrb r1, [r5]
	lsls r1, r1, #0x1f
	adds r2, #0x84
	adds r0, r4, r2
	ldrb r2, [r0]
	lsls r2, r2, #0x1f
	orrs r2, r1
	ldr r1, _08005274 @ =0x000035BA
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r1, r0, #0x1f
	orrs r1, r2
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	orrs r0, r1
	cmp r0, #0
	beq _0800523A
	ldrh r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r4, #8]
	orrs r1, r0
	strh r1, [r4, #8]
_0800523A:
	bl sub_08012028
	bl sub_08030724
	bl sub_080383AC
	bl sub_0803AD50
	bl sub_08008920
	bl sub_08032FBC
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800527C
	ldr r1, _08005278 @ =0x0001ED10
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800527C
	ldrh r0, [r4, #0x1a]
	movs r0, #0x60
	strh r0, [r4, #0x1a]
	b _080052B4
	.align 2, 0
_08005270: .4byte 0x00011D16
_08005274: .4byte 0x000035BA
_08005278: .4byte 0x0001ED10
_0800527C:
	ldr r2, _080052BC @ =gUnknown_02016028
	ldr r1, _080052C0 @ =0x000035BA
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080052B4
	ldr r1, _080052C4 @ =0x00011D9A
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080052B4
	ldr r1, _080052C8 @ =0x00003530
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080052B4
	ldr r1, _080052CC @ =0x00011D1E
	adds r0, r2, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	adds r0, #0x10
	ldrh r1, [r2, #0x1a]
	strh r0, [r2, #0x1a]
_080052B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080052BC: .4byte gUnknown_02016028
_080052C0: .4byte 0x000035BA
_080052C4: .4byte 0x00011D9A
_080052C8: .4byte 0x00003530
_080052CC: .4byte 0x00011D1E

	thumb_func_start sub_080052D0
sub_080052D0: @ 0x080052D0
	push {lr}
	bl sub_08030724
	bl sub_08008920
	bl sub_08032FBC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080052E4
sub_080052E4: @ 0x080052E4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	ldr r4, _08005314 @ =gScript
	ldr r0, _08005318 @ =0x00009D14
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800531C @ =gUnknown_020051E4
	movs r1, #0
	strb r3, [r0]
	cmp r3, #2
	bne _08005328
	ldr r2, _08005320 @ =0x0000595C
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08005324 @ =0x00005960
	adds r1, r4, r0
	movs r0, #0x14
	b _08005340
	.align 2, 0
_08005314: .4byte gScript
_08005318: .4byte 0x00009D14
_0800531C: .4byte gUnknown_020051E4
_08005320: .4byte 0x0000595C
_08005324: .4byte 0x00005960
_08005328:
	cmp r3, #2
	blt _08005342
	cmp r3, #5
	bgt _08005342
	cmp r3, #4
	blt _08005342
	ldr r2, _08005348 @ =0x0000595C
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0800534C @ =0x00005960
	adds r1, r4, r0
	movs r0, #0x28
_08005340:
	strh r0, [r1]
_08005342:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005348: .4byte 0x0000595C
_0800534C: .4byte 0x00005960

	thumb_func_start nullsub_3
nullsub_3: @ 0x08005350
	bx lr
	.align 2, 0

	thumb_func_start sub_08005354
sub_08005354: @ 0x08005354
	push {lr}
	bl nullsub_17
	bl nullsub_18
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005364
sub_08005364: @ 0x08005364
	push {r4, r5, lr}
	ldr r5, _080053A8 @ =0x04000208
	movs r4, #0
	strh r4, [r5]
	ldr r2, _080053AC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080053B0 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080053B4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080053B8 @ =0x0000FFE7
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080053BC @ =gUnknown_020051F0
	ldr r1, _080053C0 @ =gUnknown_080C1A58
	movs r2, #0x38
	bl memcpy
	ldr r0, _080053C4 @ =sub_0803D474
	ldr r1, _080053C8 @ =gUnknown_03004B14
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
	bl sub_08005C38
	ldr r0, _080053CC @ =gUnknown_03004B0A
	strh r4, [r0]
	movs r0, #1
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080053A8: .4byte 0x04000208
_080053AC: .4byte 0x04000200
_080053B0: .4byte 0x0000FFFC
_080053B4: .4byte 0x04000004
_080053B8: .4byte 0x0000FFE7
_080053BC: .4byte gUnknown_020051F0
_080053C0: .4byte gUnknown_080C1A58
_080053C4: .4byte sub_0803D474
_080053C8: .4byte gUnknown_03004B14
_080053CC: .4byte gUnknown_03004B0A

	thumb_func_start sub_080053D0
sub_080053D0: @ 0x080053D0
	push {lr}
	bl sub_080037A8
	bl sub_080058D8
	ldr r1, _080053FC @ =gScript
	ldrb r2, [r1, #2]
	lsls r0, r2, #0x1c
	cmp r0, #0
	bge _0800540E
	ldr r0, _08005400 @ =gUnknown_02016028
	ldr r3, _08005404 @ =0x000121BB
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08005408
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #2]
	b _08005420
	.align 2, 0
_080053FC: .4byte gScript
_08005400: .4byte gUnknown_02016028
_08005404: .4byte 0x000121BB
_08005408:
	bl sub_08005848
	b _08005420
_0800540E:
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08005420
	ldrb r0, [r1]
	cmp r0, #2
	beq _08005420
	bl sub_08005890
_08005420:
	ldr r1, _08005448 @ =0x04000012
	ldr r0, _0800544C @ =gUnknown_02016028
	ldrh r0, [r0, #0x1a]
	strh r0, [r1]
	ldr r0, _08005450 @ =gUnknown_03004B00
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005434
	bl sub_080037BC
_08005434:
	ldr r2, _08005454 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005458 @ =gUnknown_03007FF8
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08005448: .4byte 0x04000012
_0800544C: .4byte gUnknown_02016028
_08005450: .4byte gUnknown_03004B00
_08005454: .4byte 0x04000208
_08005458: .4byte gUnknown_03007FF8

	thumb_func_start sub_0800545C
sub_0800545C: @ 0x0800545C
	push {lr}
	bl sub_080037A8
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08005490 @ =gUnknown_02016028
	ldrh r0, [r2, #8]
	strh r0, [r1]
	adds r1, #0x12
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	ldr r0, _08005494 @ =gUnknown_03004B00
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800547E
	bl sub_080037BC
_0800547E:
	ldr r2, _08005498 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0800549C @ =gUnknown_03007FF8
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08005490: .4byte gUnknown_02016028
_08005494: .4byte gUnknown_03004B00
_08005498: .4byte 0x04000208
_0800549C: .4byte gUnknown_03007FF8

	thumb_func_start sub_080054A0
sub_080054A0: @ 0x080054A0
	push {lr}
	sub sp, #4
	ldr r2, _08005580 @ =0x04000006
	ldrh r0, [r2]
	cmp r0, #0x9d
	bhi _08005572
	mov r1, sp
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _08005584 @ =gUnknown_03004AF0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080054CA
	adds r2, #0x3a
	ldr r1, _08005588 @ =gUnknown_030040F0
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080054CA:
	ldr r0, _0800558C @ =gUnknown_03004AF2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080054E2
	ldr r2, _08005590 @ =0x04000042
	ldr r1, _08005594 @ =gUnknown_03004230
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080054E2:
	ldr r0, _08005598 @ =gUnknown_03004AF4
	ldrh r0, [r0]
	cmp r0, #0
	beq _080054FA
	ldr r2, _0800559C @ =0x04000014
	ldr r1, _080055A0 @ =gUnknown_03004370
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080054FA:
	ldr r0, _080055A4 @ =gUnknown_03004AF6
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005512
	ldr r2, _080055A8 @ =0x04000018
	ldr r1, _080055AC @ =gUnknown_030044B0
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08005512:
	ldr r0, _080055B0 @ =gUnknown_03004AF8
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800552A
	ldr r2, _080055B4 @ =0x0400001C
	ldr r1, _080055B8 @ =gUnknown_030045F0
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0800552A:
	ldr r0, _080055BC @ =gUnknown_03004AFA
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005542
	ldr r2, _080055C0 @ =0x04000016
	ldr r1, _080055C4 @ =gUnknown_03004730
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08005542:
	ldr r0, _080055C8 @ =gUnknown_03004AFC
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800555A
	ldr r2, _080055CC @ =0x0400001A
	ldr r1, _080055D0 @ =gUnknown_03004870
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0800555A:
	ldr r0, _080055D4 @ =gUnknown_03004AFE
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005572
	ldr r2, _080055D8 @ =0x0400001E
	ldr r1, _080055DC @ =gUnknown_030049B0
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08005572:
	ldr r1, _080055E0 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005580: .4byte 0x04000006
_08005584: .4byte gUnknown_03004AF0
_08005588: .4byte gUnknown_030040F0
_0800558C: .4byte gUnknown_03004AF2
_08005590: .4byte 0x04000042
_08005594: .4byte gUnknown_03004230
_08005598: .4byte gUnknown_03004AF4
_0800559C: .4byte 0x04000014
_080055A0: .4byte gUnknown_03004370
_080055A4: .4byte gUnknown_03004AF6
_080055A8: .4byte 0x04000018
_080055AC: .4byte gUnknown_030044B0
_080055B0: .4byte gUnknown_03004AF8
_080055B4: .4byte 0x0400001C
_080055B8: .4byte gUnknown_030045F0
_080055BC: .4byte gUnknown_03004AFA
_080055C0: .4byte 0x04000016
_080055C4: .4byte gUnknown_03004730
_080055C8: .4byte gUnknown_03004AFC
_080055CC: .4byte 0x0400001A
_080055D0: .4byte gUnknown_03004870
_080055D4: .4byte gUnknown_03004AFE
_080055D8: .4byte 0x0400001E
_080055DC: .4byte gUnknown_030049B0
_080055E0: .4byte 0x04000202

	thumb_func_start sub_080055E4
sub_080055E4: @ 0x080055E4
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	adds r2, #2
	mov r1, sp
	ldr r0, _0800560C @ =0x04000006
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
	ldr r1, _08005628 @ =0x04000012
	ldr r0, _0800562C @ =gUnknown_03004B06
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x83
	b _080056B2
	.align 2, 0
_08005628: .4byte 0x04000012
_0800562C: .4byte gUnknown_03004B06
_08005630:
	ldr r2, _0800565C @ =0x04000012
	ldr r0, _08005660 @ =gUnknown_03004B06
	ldrh r0, [r0]
	ldr r1, _08005664 @ =gUnknown_03004B08
	adds r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0x8f
	strh r0, [r4]
	ldr r0, _08005668 @ =gUnknown_03004B0A
	movs r3, #1
	strh r3, [r0]
	ldr r2, _0800566C @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005670 @ =gUnknown_020051F0
	ldr r0, _08005674 @ =nullsub_60
	str r0, [r1, #4]
	strh r3, [r2]
	b _080056B4
	.align 2, 0
_0800565C: .4byte 0x04000012
_08005660: .4byte gUnknown_03004B06
_08005664: .4byte gUnknown_03004B08
_08005668: .4byte gUnknown_03004B0A
_0800566C: .4byte 0x04000208
_08005670: .4byte gUnknown_020051F0
_08005674: .4byte nullsub_60
_08005678:
	ldr r1, _08005694 @ =0x04000012
	ldr r0, _08005698 @ =gUnknown_03004B06
	ldrh r0, [r0]
	adds r0, #0xc
	strh r0, [r1]
	movs r0, #0xb4
	strh r0, [r4]
	ldr r1, _0800569C @ =gUnknown_02016028
	ldr r0, _080056A0 @ =gUnknown_03004B04
	ldrh r0, [r0]
	ldrh r2, [r1, #0x1a]
	strh r0, [r1, #0x1a]
	b _080056B4
	.align 2, 0
_08005694: .4byte 0x04000012
_08005698: .4byte gUnknown_03004B06
_0800569C: .4byte gUnknown_02016028
_080056A0: .4byte gUnknown_03004B04
_080056A4:
	ldr r0, _080056D8 @ =gUnknown_03004B00
	ldrh r0, [r0]
	cmp r0, #0
	bne _080056B0
	bl sub_080037BC
_080056B0:
	movs r0, #0x50
_080056B2:
	strh r0, [r4]
_080056B4:
	ldr r2, _080056DC @ =0x04000004
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r4]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080056E0 @ =0x04000202
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

	thumb_func_start sub_080056E4
sub_080056E4: @ 0x080056E4
	push {lr}
	sub sp, #4
	mov r1, sp
	ldr r0, _08005720 @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0x9f
	bne _08005714
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08005724 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08005728 @ =gUnknown_02016028
	ldrh r2, [r1, #8]
	movs r3, #0xd0
	lsls r3, r3, #4
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
_08005714:
	ldr r1, _0800572C @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005720: .4byte 0x04000006
_08005724: .4byte 0x0000FEFF
_08005728: .4byte gUnknown_02016028
_0800572C: .4byte 0x04000202

	thumb_func_start sub_08005730
sub_08005730: @ 0x08005730
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	adds r2, #2
	mov r1, sp
	ldr r0, _08005758 @ =0x04000006
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
	ldr r1, _08005774 @ =0x04000012
	ldr r0, _08005778 @ =gUnknown_03004B06
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x83
	b _08005816
	.align 2, 0
_08005774: .4byte 0x04000012
_08005778: .4byte gUnknown_03004B06
_0800577C:
	ldr r2, _080057AC @ =0x04000012
	ldr r0, _080057B0 @ =gUnknown_03004B06
	ldrh r0, [r0]
	ldr r1, _080057B4 @ =gUnknown_03004B08
	adds r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0x8f
	strh r0, [r4]
	ldr r0, _080057B8 @ =gUnknown_03004B0A
	movs r3, #1
	strh r3, [r0]
	ldr r2, _080057BC @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080057C0 @ =gUnknown_020051F0
	ldr r0, _080057C4 @ =nullsub_60
	str r0, [r1, #4]
	strh r3, [r2]
	ldr r1, _080057C8 @ =0x0400004A
	movs r0, #0x11
	strh r0, [r1]
	b _08005818
	.align 2, 0
_080057AC: .4byte 0x04000012
_080057B0: .4byte gUnknown_03004B06
_080057B4: .4byte gUnknown_03004B08
_080057B8: .4byte gUnknown_03004B0A
_080057BC: .4byte 0x04000208
_080057C0: .4byte gUnknown_020051F0
_080057C4: .4byte nullsub_60
_080057C8: .4byte 0x0400004A
_080057CC:
	ldr r1, _080057E8 @ =0x04000012
	ldr r0, _080057EC @ =gUnknown_03004B06
	ldrh r0, [r0]
	adds r0, #0xc
	strh r0, [r1]
	movs r0, #0xb4
	strh r0, [r4]
	ldr r1, _080057F0 @ =gUnknown_02016028
	ldr r0, _080057F4 @ =gUnknown_03004B04
	ldrh r0, [r0]
	ldrh r2, [r1, #0x1a]
	strh r0, [r1, #0x1a]
	b _08005818
	.align 2, 0
_080057E8: .4byte 0x04000012
_080057EC: .4byte gUnknown_03004B06
_080057F0: .4byte gUnknown_02016028
_080057F4: .4byte gUnknown_03004B04
_080057F8:
	ldr r0, _08005810 @ =gUnknown_03004B00
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005804
	bl sub_080037BC
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
	ldr r2, _0800583C @ =0x04000004
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r4]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08005840 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800583C: .4byte 0x04000004
_08005840: .4byte 0x04000202

	thumb_func_start nullsub_60
nullsub_60: @ 0x08005844
	bx lr
	.align 2, 0

	thumb_func_start sub_08005848
sub_08005848: @ 0x08005848
	ldr r1, _08005874 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _08005878 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0800587C @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r2, _08005880 @ =0x040000BA
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08005884 @ =gUnknown_030040F0
	str r0, [r1]
	ldr r0, _08005888 @ =0x04000040
	str r0, [r1, #4]
	ldr r0, _0800588C @ =0xA2600001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08005874: .4byte 0x040000B0
_08005878: .4byte 0x0000C5FF
_0800587C: .4byte 0x00007FFF
_08005880: .4byte 0x040000BA
_08005884: .4byte gUnknown_030040F0
_08005888: .4byte 0x04000040
_0800588C: .4byte 0xA2600001

	thumb_func_start sub_08005890
sub_08005890: @ 0x08005890
	ldr r1, _080058BC @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080058C0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080058C4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r2, _080058C8 @ =0x040000BA
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080058CC @ =gUnknown_030045F0
	str r0, [r1]
	ldr r0, _080058D0 @ =0x0400001C
	str r0, [r1, #4]
	ldr r0, _080058D4 @ =0xA2600001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_080058BC: .4byte 0x040000B0
_080058C0: .4byte 0x0000C5FF
_080058C4: .4byte 0x00007FFF
_080058C8: .4byte 0x040000BA
_080058CC: .4byte gUnknown_030045F0
_080058D0: .4byte 0x0400001C
_080058D4: .4byte 0xA2600001

	thumb_func_start sub_080058D8
sub_080058D8: @ 0x080058D8
	ldr r1, _080058F4 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080058F8 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080058FC @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xa
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080058F4: .4byte 0x040000B0
_080058F8: .4byte 0x0000C5FF
_080058FC: .4byte 0x00007FFF

	thumb_func_start sub_08005900
sub_08005900: @ 0x08005900
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _08005940 @ =gUnknown_02016028
	ldr r0, _08005944 @ =0x000121BB
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, _08005948 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800594C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08005950 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	cmp r3, #6
	bls _08005936
	b _08005A24
_08005936:
	lsls r0, r3, #2
	ldr r1, _08005954 @ =_08005958
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005940: .4byte gUnknown_02016028
_08005944: .4byte 0x000121BB
_08005948: .4byte 0x04000208
_0800594C: .4byte 0x04000200
_08005950: .4byte 0x04000004
_08005954: .4byte _08005958
_08005958: @ jump table
	.4byte _08005974 @ case 0
	.4byte _0800597C @ case 1
	.4byte _08005984 @ case 2
	.4byte _0800598C @ case 3
	.4byte _080059F8 @ case 4
	.4byte _08005A00 @ case 5
	.4byte _08005A18 @ case 6
_08005974:
	ldr r0, _08005978 @ =sub_0803D0E4
	b _08005A02
	.align 2, 0
_08005978: .4byte sub_0803D0E4
_0800597C:
	ldr r0, _08005980 @ =sub_0803D13C
	b _08005A02
	.align 2, 0
_08005980: .4byte sub_0803D13C
_08005984:
	ldr r0, _08005988 @ =sub_0803D1B4
	b _08005A02
	.align 2, 0
_08005988: .4byte sub_0803D1B4
_0800598C:
	ldr r2, _080059C4 @ =gScript
	ldr r1, _080059C8 @ =0x000067AC
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0x45
	bgt _080059F0
	cmp r0, #0x44
	blt _080059F0
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080059DC
	ldrb r0, [r2, #3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r2, _080059CC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080059D0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080059D4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080059D8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	b _08005A24
	.align 2, 0
_080059C4: .4byte gScript
_080059C8: .4byte 0x000067AC
_080059CC: .4byte 0x04000200
_080059D0: .4byte 0x0000FFFD
_080059D4: .4byte 0x04000004
_080059D8: .4byte 0x0000FFEF
_080059DC:
	ldrb r1, [r2, #3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
	ldr r0, _080059EC @ =sub_0803D32C
	b _08005A02
	.align 2, 0
_080059EC: .4byte sub_0803D32C
_080059F0:
	ldr r0, _080059F4 @ =sub_0803D2A4
	b _08005A02
	.align 2, 0
_080059F4: .4byte sub_0803D2A4
_080059F8:
	ldr r0, _080059FC @ =sub_0803D374
	b _08005A02
	.align 2, 0
_080059FC: .4byte sub_0803D374
_08005A00:
	ldr r0, _08005A10 @ =sub_0803D3FC
_08005A02:
	ldr r1, _08005A14 @ =gUnknown_03004B14
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
	b _08005A24
	.align 2, 0
_08005A10: .4byte sub_0803D3FC
_08005A14: .4byte gUnknown_03004B14
_08005A18:
	ldr r0, _08005A30 @ =sub_0803D474
	ldr r1, _08005A34 @ =gUnknown_03004B14
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
_08005A24:
	ldr r1, _08005A38 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08005A30: .4byte sub_0803D474
_08005A34: .4byte gUnknown_03004B14
_08005A38: .4byte 0x04000208

	thumb_func_start sub_08005A3C
sub_08005A3C: @ 0x08005A3C
	ldr r3, _08005A5C @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005A60 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08005A64 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005A68 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08005A6C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08005A5C: .4byte 0x04000208
_08005A60: .4byte 0x04000200
_08005A64: .4byte 0x0000FFFD
_08005A68: .4byte 0x04000004
_08005A6C: .4byte 0x0000FFEF

	thumb_func_start sub_08005A70
sub_08005A70: @ 0x08005A70
	push {lr}
	ldr r1, _08005A88 @ =gUnknown_03004B0A
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005A84
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08005A8C @ =gUnknown_020051F0
	ldr r0, _08005A90 @ =gUnknown_03004B14
	str r0, [r1, #4]
_08005A84:
	pop {r0}
	bx r0
	.align 2, 0
_08005A88: .4byte gUnknown_03004B0A
_08005A8C: .4byte gUnknown_020051F0
_08005A90: .4byte gUnknown_03004B14

	thumb_func_start sub_08005A94
sub_08005A94: @ 0x08005A94
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08005ACC @ =0x04000208
	movs r1, #0
	strh r1, [r4]
	ldr r3, _08005AD0 @ =0x04000200
	ldrh r1, [r3]
	movs r2, #4
	orrs r1, r2
	strh r1, [r3]
	ldr r3, _08005AD4 @ =0x04000004
	ldrh r1, [r3]
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r3]
	ldrh r2, [r3]
	movs r1, #0xff
	ands r1, r2
	strh r1, [r3]
	lsrs r0, r0, #8
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005ACC: .4byte 0x04000208
_08005AD0: .4byte 0x04000200
_08005AD4: .4byte 0x04000004

	thumb_func_start sub_08005AD8
sub_08005AD8: @ 0x08005AD8
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08005B1C @ =0x04000208
	movs r1, #0
	strh r1, [r4]
	ldr r3, _08005B20 @ =0x04000200
	ldrh r1, [r3]
	movs r2, #4
	orrs r1, r2
	strh r1, [r3]
	ldr r3, _08005B24 @ =0x04000004
	ldrh r1, [r3]
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r3]
	ldrh r2, [r3]
	movs r1, #0xff
	ands r1, r2
	strh r1, [r3]
	lsrs r0, r0, #8
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08005B28 @ =gUnknown_020051F0
	ldr r0, _08005B2C @ =sub_0800545C
	str r0, [r1]
	ldr r0, _08005B30 @ =sub_080056E4
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005B1C: .4byte 0x04000208
_08005B20: .4byte 0x04000200
_08005B24: .4byte 0x04000004
_08005B28: .4byte gUnknown_020051F0
_08005B2C: .4byte sub_0800545C
_08005B30: .4byte sub_080056E4

	thumb_func_start sub_08005B34
sub_08005B34: @ 0x08005B34
	ldr r3, _08005B54 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005B58 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08005B5C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005B60 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08005B64 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08005B54: .4byte 0x04000208
_08005B58: .4byte 0x04000200
_08005B5C: .4byte 0x0000FFFB
_08005B60: .4byte 0x04000004
_08005B64: .4byte 0x0000FFDF

	thumb_func_start sub_08005B68
sub_08005B68: @ 0x08005B68
	ldr r3, _08005B94 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005B98 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08005B9C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005BA0 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08005BA4 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08005BA8 @ =gUnknown_020051F0
	ldr r0, _08005BAC @ =sub_080053D0
	str r0, [r1]
	ldr r0, _08005BB0 @ =sub_080055E4
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08005B94: .4byte 0x04000208
_08005B98: .4byte 0x04000200
_08005B9C: .4byte 0x0000FFFB
_08005BA0: .4byte 0x04000004
_08005BA4: .4byte 0x0000FFDF
_08005BA8: .4byte gUnknown_020051F0
_08005BAC: .4byte sub_080053D0
_08005BB0: .4byte sub_080055E4

	thumb_func_start sub_08005BB4
sub_08005BB4: @ 0x08005BB4
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005BDC
	ldr r2, _08005BD0 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005BD4 @ =gUnknown_020051F0
	ldr r0, _08005BD8 @ =sub_08005730
	b _08005BE4
	.align 2, 0
_08005BD0: .4byte 0x04000208
_08005BD4: .4byte gUnknown_020051F0
_08005BD8: .4byte sub_08005730
_08005BDC:
	ldr r2, _08005BF0 @ =0x04000208
	strh r0, [r2]
	ldr r1, _08005BF4 @ =gUnknown_020051F0
	ldr r0, _08005BF8 @ =sub_080055E4
_08005BE4:
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005BF0: .4byte 0x04000208
_08005BF4: .4byte gUnknown_020051F0
_08005BF8: .4byte sub_080055E4

	thumb_func_start sub_08005BFC
sub_08005BFC: @ 0x08005BFC
	ldr r1, _08005C0C @ =gUnknown_03004B00
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08005C10 @ =gUnknown_03004B02
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005C0C: .4byte gUnknown_03004B00
_08005C10: .4byte gUnknown_03004B02

	thumb_func_start sub_08005C14
sub_08005C14: @ 0x08005C14
	push {lr}
	ldr r1, _08005C30 @ =gUnknown_03004B02
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005C22
	subs r0, #1
	strh r0, [r1]
_08005C22:
	ldrh r1, [r1]
	cmp r1, #0
	bne _08005C2C
	ldr r0, _08005C34 @ =gUnknown_03004B00
	strh r1, [r0]
_08005C2C:
	pop {r0}
	bx r0
	.align 2, 0
_08005C30: .4byte gUnknown_03004B02
_08005C34: .4byte gUnknown_03004B00

	thumb_func_start sub_08005C38
sub_08005C38: @ 0x08005C38
	ldr r0, _08005C44 @ =gUnknown_03004B00
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005C48 @ =gUnknown_03004B02
	strh r1, [r0]
	bx lr
	.align 2, 0
_08005C44: .4byte gUnknown_03004B00
_08005C48: .4byte gUnknown_03004B02

	thumb_func_start sub_08005C4C
sub_08005C4C: @ 0x08005C4C
	push {r4, r5, lr}
	ldr r2, _08005D20 @ =gScript
	ldr r0, _08005D24 @ =0x00009D10
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08005D28 @ =gUnknown_02000000
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08005C76
	ldr r3, _08005D2C @ =0x0000595B
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _08005C76
	movs r0, #1
	strh r0, [r1]
_08005C76:
	ldr r4, _08005D30 @ =gUnknown_02000002
	movs r0, #0
	strh r0, [r4]
	ldrb r3, [r2]
	cmp r3, #1
	bne _08005C8E
	ldrb r1, [r2, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08005C8E
	strh r3, [r4]
_08005C8E:
	ldr r2, _08005D34 @ =gUnknown_02000004
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08005D20 @ =gScript
	ldr r1, _08005D38 @ =0x0000598C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08005CC0
	movs r0, #1
	strh r0, [r2]
	ldr r2, _08005D3C @ =gUnknown_02016028
	ldrh r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08005CC0
	ldrh r0, [r2, #8]
	ldr r1, _08005D40 @ =0x0000EFFF
	ands r1, r0
	ldrh r0, [r2, #8]
	strh r1, [r2, #8]
_08005CC0:
	bl sub_080026C0
	bl sub_08003024
	bl sub_08019E40
	bl sub_08005D54
	ldr r4, _08005D3C @ =gUnknown_02016028
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005FB4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080061CC
	ldr r3, _08005D44 @ =0x0000567C
	adds r4, r4, r3
	adds r0, r4, #0
	bl sub_08027C40
	ldr r0, _08005D48 @ =gUnknown_03004B00
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005CFC
	bl sub_080037BC
_08005CFC:
	ldr r2, _08005D20 @ =gScript
	ldr r0, _08005D4C @ =0x000082A4
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005D0C
	subs r0, #1
	strh r0, [r1]
_08005D0C:
	ldr r3, _08005D50 @ =0x000082A6
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005D1A
	subs r0, #1
	strh r0, [r1]
_08005D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005D20: .4byte gScript
_08005D24: .4byte 0x00009D10
_08005D28: .4byte gUnknown_02000000
_08005D2C: .4byte 0x0000595B
_08005D30: .4byte gUnknown_02000002
_08005D34: .4byte gUnknown_02000004
_08005D38: .4byte 0x0000598C
_08005D3C: .4byte gUnknown_02016028
_08005D40: .4byte 0x0000EFFF
_08005D44: .4byte 0x0000567C
_08005D48: .4byte gUnknown_03004B00
_08005D4C: .4byte 0x000082A4
_08005D50: .4byte 0x000082A6

	thumb_func_start sub_08005D54
sub_08005D54: @ 0x08005D54
	push {r4, r5, r6, lr}
	bl sub_08005A70
	ldr r1, _08005F20 @ =gUnknown_03004AF0
	ldr r4, _08005F24 @ =gUnknown_02016028
	ldr r2, _08005F28 @ =0x0001ED10
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	strh r3, [r1]
	ldr r1, _08005F2C @ =gUnknown_03004AF2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	strh r0, [r1]
	ldr r2, _08005F30 @ =gUnknown_03004AF4
	ldr r1, _08005F34 @ =0x0001ED11
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F38 @ =gUnknown_03004AF6
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F3C @ =gUnknown_03004AF8
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F40 @ =gUnknown_03004AFA
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F44 @ =gUnknown_03004AFC
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r0, _08005F48 @ =gUnknown_03004AFE
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	strh r1, [r0]
	cmp r3, #0
	beq _08005DDE
	ldr r2, _08005F4C @ =gUnknown_030040F0
	ldrh r0, [r2]
	ldrh r1, [r4, #0x26]
	strh r0, [r4, #0x26]
	ldr r0, _08005F50 @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005DDE
	ldr r0, _08005F54 @ =gUnknown_02000002
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005DDE
	ldr r0, _08005F58 @ =0x00013210
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_08001A14
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080019DC
_08005DDE:
	ldr r0, _08005F2C @ =gUnknown_03004AF2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E0A
	ldr r4, _08005F5C @ =gUnknown_02029378
	ldr r5, _08005F60 @ =gUnknown_03004230
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08001A14
	ldr r1, _08005F64 @ =0xFFFECCB0
	adds r0, r4, r1
	ldrh r1, [r5]
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080019DC
_08005E0A:
	ldr r0, _08005F30 @ =gUnknown_03004AF4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E2C
	ldr r4, _08005F68 @ =gUnknown_0202A6F8
	ldr r5, _08005F6C @ =gUnknown_03004370
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r2, _08005F70 @ =0xFFFEB930
	adds r4, r4, r2
	ldrh r0, [r5]
	ldrh r1, [r4, #0x14]
	strh r0, [r4, #0x14]
_08005E2C:
	ldr r0, _08005F38 @ =gUnknown_03004AF6
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E4E
	ldr r4, _08005F74 @ =gUnknown_0202A838
	ldr r5, _08005F78 @ =gUnknown_030044B0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r0, _08005F7C @ =0xFFFEB7F0
	adds r4, r4, r0
	ldrh r0, [r5]
	ldrh r1, [r4, #0x16]
	strh r0, [r4, #0x16]
_08005E4E:
	ldr r0, _08005F3C @ =gUnknown_03004AF8
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E70
	ldr r4, _08005F80 @ =gUnknown_0202A978
	ldr r5, _08005F84 @ =gUnknown_030045F0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r1, _08005F88 @ =0xFFFEB6B0
	adds r4, r4, r1
	ldrh r0, [r5]
	ldrh r1, [r4, #0x18]
	strh r0, [r4, #0x18]
_08005E70:
	ldr r0, _08005F40 @ =gUnknown_03004AFA
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E92
	ldr r4, _08005F8C @ =gUnknown_0202AAB8
	ldr r5, _08005F90 @ =gUnknown_03004730
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r2, _08005F94 @ =0xFFFEB570
	adds r4, r4, r2
	ldrh r0, [r5]
	ldrh r1, [r4, #0x1c]
	strh r0, [r4, #0x1c]
_08005E92:
	ldr r0, _08005F44 @ =gUnknown_03004AFC
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005EB4
	ldr r4, _08005F98 @ =gUnknown_0202ABF8
	ldr r5, _08005F9C @ =gUnknown_03004870
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r0, _08005FA0 @ =0xFFFEB430
	adds r4, r4, r0
	ldrh r0, [r5]
	ldrh r1, [r4, #0x1e]
	strh r0, [r4, #0x1e]
_08005EB4:
	ldr r0, _08005F48 @ =gUnknown_03004AFE
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005ED6
	ldr r4, _08005FA4 @ =gUnknown_0202AD38
	ldr r5, _08005FA8 @ =gUnknown_030049B0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r1, _08005FAC @ =0xFFFEB2F0
	adds r4, r4, r1
	ldrh r0, [r5]
	ldrh r1, [r4, #0x20]
	strh r0, [r4, #0x20]
_08005ED6:
	ldr r0, _08005FB0 @ =gScript
	ldrb r1, [r0, #1]
	movs r0, #5
	ands r0, r1
	cmp r0, #1
	beq _08005F1A
	ldr r2, _08005F24 @ =gUnknown_02016028
	ldr r0, _08005F28 @ =0x0001ED10
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3]
	ldr r1, _08005F34 @ =0x0001ED11
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2]
_08005F1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005F20: .4byte gUnknown_03004AF0
_08005F24: .4byte gUnknown_02016028
_08005F28: .4byte 0x0001ED10
_08005F2C: .4byte gUnknown_03004AF2
_08005F30: .4byte gUnknown_03004AF4
_08005F34: .4byte 0x0001ED11
_08005F38: .4byte gUnknown_03004AF6
_08005F3C: .4byte gUnknown_03004AF8
_08005F40: .4byte gUnknown_03004AFA
_08005F44: .4byte gUnknown_03004AFC
_08005F48: .4byte gUnknown_03004AFE
_08005F4C: .4byte gUnknown_030040F0
_08005F50: .4byte gUnknown_02000000
_08005F54: .4byte gUnknown_02000002
_08005F58: .4byte 0x00013210
_08005F5C: .4byte gUnknown_02029378
_08005F60: .4byte gUnknown_03004230
_08005F64: .4byte 0xFFFECCB0
_08005F68: .4byte gUnknown_0202A6F8
_08005F6C: .4byte gUnknown_03004370
_08005F70: .4byte 0xFFFEB930
_08005F74: .4byte gUnknown_0202A838
_08005F78: .4byte gUnknown_030044B0
_08005F7C: .4byte 0xFFFEB7F0
_08005F80: .4byte gUnknown_0202A978
_08005F84: .4byte gUnknown_030045F0
_08005F88: .4byte 0xFFFEB6B0
_08005F8C: .4byte gUnknown_0202AAB8
_08005F90: .4byte gUnknown_03004730
_08005F94: .4byte 0xFFFEB570
_08005F98: .4byte gUnknown_0202ABF8
_08005F9C: .4byte gUnknown_03004870
_08005FA0: .4byte 0xFFFEB430
_08005FA4: .4byte gUnknown_0202AD38
_08005FA8: .4byte gUnknown_030049B0
_08005FAC: .4byte 0xFFFEB2F0
_08005FB0: .4byte gScript

	thumb_func_start sub_08005FB4
sub_08005FB4: @ 0x08005FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r4, #8]
	strh r0, [r1]
	adds r1, #8
	ldrh r0, [r4, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0xc]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0xe]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x10]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x12]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x14]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x16]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x18]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x20]
	strh r0, [r1]
	adds r1, #0x32
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #4]
	strh r0, [r1]
	subs r1, #0xc
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x28]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x2c]
	strh r0, [r1]
	adds r1, #6
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #2
	bne _080060CA
	ldr r1, _080061A0 @ =0x04000020
	ldrh r0, [r4, #0x30]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x34]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x36]
	strh r0, [r1]
	adds r1, #0xa
	ldrh r0, [r4, #0x38]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x3a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x3c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x3e]
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, [r4, #0x40]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x40]
	ldr r2, _080061A4 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x44]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x44]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #0xa
	ldr r0, [r4, #0x48]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x48]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x4c]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x4c]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
_080060CA:
	ldr r3, _080061A8 @ =gUnknown_03005314
	ldr r1, _080061AC @ =0x00002C4C
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldr r2, _080061B0 @ =0x00002C4E
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r3]
	ldr r2, _080061B4 @ =gScript
	ldrb r1, [r2, #1]
	movs r0, #5
	ands r0, r1
	mov sb, r2
	cmp r0, #1
	beq _08006190
	ldrh r1, [r4, #8]
	movs r0, #0xff
	ands r0, r1
	ldrh r1, [r4, #8]
	strh r0, [r4, #8]
	mov r1, sp
	ldrh r0, [r4, #0x1a]
	strh r0, [r1]
	movs r3, #0
	ldr r0, _080061B8 @ =gUnknown_02016028
	mov ip, r0
	ldr r1, _080061BC @ =gUnknown_02000000
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x12
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x1a
_0800611A:
	lsls r0, r3, #1
	adds r1, r7, r0
	ldrh r2, [r1]
	strh r5, [r1]
	adds r0, r6, r0
	ldrh r1, [r0]
	strh r5, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0800611A
	ldr r0, _080061C0 @ =0x000035BA
	add r0, ip
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08006148
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
_08006148:
	mov r2, sb
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800615A
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
_0800615A:
	ldrh r0, [r4, #0x2e]
	movs r0, #0
	strh r0, [r4, #0x2e]
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08006190
	ldr r3, _080061C4 @ =gUnknown_03004AF0
	ldr r2, _080061C8 @ =0x0001ED10
	add r2, ip
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strh r0, [r3]
	mov r2, ip
	ldrh r0, [r2, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	mov r2, ip
	ldrh r1, [r2, #8]
	movs r1, #0
	orrs r0, r1
	strh r0, [r2, #8]
_08006190:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080061A0: .4byte 0x04000020
_080061A4: .4byte 0x0FFF0000
_080061A8: .4byte gUnknown_03005314
_080061AC: .4byte 0x00002C4C
_080061B0: .4byte 0x00002C4E
_080061B4: .4byte gScript
_080061B8: .4byte gUnknown_02016028
_080061BC: .4byte gUnknown_02000000
_080061C0: .4byte 0x000035BA
_080061C4: .4byte gUnknown_03004AF0
_080061C8: .4byte 0x0001ED10

	thumb_func_start sub_080061CC
sub_080061CC: @ 0x080061CC
	push {r4, r5, lr}
	ldr r0, _08006204 @ =gScript
	ldr r1, _08006208 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r1, r0
	bne _080061E2
	bl sub_08006944
_080061E2:
	ldr r0, _0800620C @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	bne _080061F2
	ldr r0, _08006210 @ =gUnknown_02000004
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006218
_080061F2:
	ldr r0, _08006214 @ =gUnknown_03004F14
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _0800622A
	.align 2, 0
_08006204: .4byte gScript
_08006208: .4byte 0x000067AC
_0800620C: .4byte gUnknown_02000000
_08006210: .4byte gUnknown_02000004
_08006214: .4byte gUnknown_03004F14
_08006218:
	ldr r1, _08006268 @ =0x040000D4
	ldr r0, _0800626C @ =gUnknown_03004F14
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08006270 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800622A:
	ldr r5, _08006274 @ =gScript
	ldr r2, _08006278 @ =0x000067AC
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r1, r0
	beq _0800623E
	bl sub_08006944
_0800623E:
	ldr r4, _0800627C @ =gUnknown_020281E0
	adds r0, r4, #0
	bl sub_080062F0
	ldr r1, _08006280 @ =0xFFFEDE48
	adds r0, r4, r1
	ldr r2, _08006284 @ =0xFFFEDE98
	adds r1, r4, r2
	bl sub_0800724C
	ldrb r0, [r5]
	cmp r0, #5
	bgt _0800628C
	cmp r0, #3
	blt _0800628C
	ldr r1, _08006288 @ =0xFFFF35C0
	adds r0, r4, r1
	bl sub_08006F78
	b _0800629A
	.align 2, 0
_08006268: .4byte 0x040000D4
_0800626C: .4byte gUnknown_03004F14
_08006270: .4byte 0x84000100
_08006274: .4byte gScript
_08006278: .4byte 0x000067AC
_0800627C: .4byte gUnknown_020281E0
_08006280: .4byte 0xFFFEDE48
_08006284: .4byte 0xFFFEDE98
_08006288: .4byte 0xFFFF35C0
_0800628C:
	ldr r4, _080062BC @ =gUnknown_0201B7A0
	adds r0, r4, #0
	bl sub_08006B40
	adds r0, r4, #0
	bl sub_08006E80
_0800629A:
	ldr r0, _080062C0 @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	bne _080062AA
	ldr r0, _080062C4 @ =gUnknown_02000004
	ldrh r0, [r0]
	cmp r0, #0
	beq _080062CC
_080062AA:
	ldr r0, _080062C8 @ =gUnknown_03005314
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _080062DE
	.align 2, 0
_080062BC: .4byte gUnknown_0201B7A0
_080062C0: .4byte gUnknown_02000000
_080062C4: .4byte gUnknown_02000004
_080062C8: .4byte gUnknown_03005314
_080062CC:
	ldr r1, _080062E4 @ =0x040000D4
	ldr r0, _080062E8 @ =gUnknown_03005314
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080062EC @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080062DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080062E4: .4byte 0x040000D4
_080062E8: .4byte gUnknown_03005314
_080062EC: .4byte 0x84000100

	thumb_func_start sub_080062F0
sub_080062F0: @ 0x080062F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _080062FC
	b _0800648C
_080062FC:
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006308
	bl sub_08007E2C
_08006308:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006316
	ldrh r0, [r4, #4]
	bl sub_08010808
_08006316:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08006338
	ldr r1, _08006494 @ =gScript
	ldr r0, _08006498 @ =0x00009D08
	adds r2, r1, r0
	ldr r0, _0800649C @ =0x06010000
	str r0, [r2]
	ldr r0, _080064A0 @ =0x00009D0C
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	bl sub_08030180
	bl sub_080306C4
_08006338:
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08006344
	bl sub_080306C4
_08006344:
	ldrb r0, [r4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08006350
	bl sub_0800809C
_08006350:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800635C
	bl sub_08007F64
_0800635C:
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08006368
	bl sub_08007FC8
_08006368:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006374
	bl sub_080080BC
_08006374:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006382
	ldrb r0, [r4, #0xb]
	bl sub_080080DC
_08006382:
	ldrb r1, [r4, #1]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08006390
	bl sub_08008110
_08006390:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800639C
	bl sub_08008244
_0800639C:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080063AA
	ldrb r0, [r4, #0xe]
	bl sub_080082DC
_080063AA:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080063B8
	ldrh r0, [r4, #6]
	bl sub_08011EC0
_080063B8:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080063C8
	bl sub_080064A8
	bl sub_08005C14
_080063C8:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080063D8
	bl sub_080066B4
	bl sub_08005C14
_080063D8:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080063E6
	ldr r0, _080064A4 @ =gUnknown_02019550
	bl sub_0800677C
_080063E6:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080063F4
	ldr r0, _080064A4 @ =gUnknown_02019550
	bl sub_080067B4
_080063F4:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08006404
	bl sub_080067DC
	bl sub_08005C14
_08006404:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08006410
	bl sub_08006850
_08006410:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800641C
	bl sub_08006868
_0800641C:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08006428
	bl sub_0800687C
_08006428:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08006434
	bl sub_080068B8
_08006434:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006440
	bl nullsub_4
_08006440:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800644E
	ldrb r0, [r4, #0xd]
	bl nullsub_5
_0800644E:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800645A
	bl sub_08005A3C
_0800645A:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08006468
	ldrb r0, [r4, #0xc]
	bl sub_08005A94
_08006468:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08006474
	bl sub_08005B34
_08006474:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08006488
	ldr r2, _08006494 @ =gScript
	ldrb r1, [r2, #2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
_08006488:
	movs r0, #0
	str r0, [r4]
_0800648C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006494: .4byte gScript
_08006498: .4byte 0x00009D08
_0800649C: .4byte 0x06010000
_080064A0: .4byte 0x00009D0C
_080064A4: .4byte gUnknown_02019550

	thumb_func_start sub_080064A8
sub_080064A8: @ 0x080064A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08006568 @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	beq _080064DA
	ldr r0, _0800656C @ =gScript
	ldr r1, _08006570 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x1f
	bne _080064CE
	b _080066A4
_080064CE:
	cmp r0, #0x23
	bne _080064D4
	b _080066A4
_080064D4:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_080064DA:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080065CA
	ldr r3, _08006574 @ =0x06008020
	ldr r0, _08006578 @ =0x06006000
	mov sb, r0
	ldr r2, _0800657C @ =0x77777777
	adds r0, r3, #0
	movs r1, #0x20
	bl sub_08001A38
	ldr r4, _08006580 @ =0xC001C001
	mov r0, sb
	movs r1, #0x80
	adds r2, r4, #0
	bl sub_08001A38
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r4, #0
	bl sub_08001A38
	mov r0, sb
	adds r0, #0x80
	movs r1, #0xc0
	lsls r1, r1, #2
	bl sub_080019DC
	ldr r2, _08006584 @ =gUnknown_02016028
	ldr r1, _08006588 @ =0x00011D04
	adds r0, r2, r1
	ldr r5, [r0]
	adds r1, #8
	adds r0, r2, r1
	ldr r3, [r0]
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	adds r1, #8
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	adds r1, #6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006590
	ldr r1, _0800658C @ =0x00011D15
	adds r0, r2, r1
	ldrb r6, [r0]
	subs r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	lsls r0, r1, #0xa
	adds r3, r3, r0
	lsls r1, r1, #6
	add r8, r1
	add sb, r1
	b _08006592
	.align 2, 0
_08006568: .4byte gUnknown_02000000
_0800656C: .4byte gScript
_08006570: .4byte 0x000067AC
_08006574: .4byte 0x06008020
_08006578: .4byte 0x06006000
_0800657C: .4byte 0x77777777
_08006580: .4byte 0xC001C001
_08006584: .4byte gUnknown_02016028
_08006588: .4byte 0x00011D04
_0800658C: .4byte 0x00011D15
_08006590:
	movs r6, #4
_08006592:
	movs r4, #0
	cmp r4, r6
	bhs _080065BC
	movs r7, #0xf0
	lsls r7, r7, #2
_0800659C:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r7, #0
	str r3, [sp, #4]
	bl sub_08001A14
	adds r5, r5, r7
	ldr r3, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0800659C
_080065BC:
	mov r0, r8
	mov r1, sb
	movs r2, #0x1e
	adds r3, r6, #0
	bl sub_08007318
	b _080066A4
_080065CA:
	ldr r3, _08006650 @ =0x06008020
	ldr r1, _08006654 @ =0x06006000
	mov sb, r1
	ldr r2, _08006658 @ =0x77777777
	adds r0, r3, #0
	movs r1, #0x20
	bl sub_08001B54
	ldr r4, _0800665C @ =0xC001C001
	mov r0, sb
	movs r1, #0x80
	adds r2, r4, #0
	bl sub_08001B54
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r4, #0
	bl sub_08001B54
	mov r0, sb
	adds r0, #0x80
	movs r1, #0xc0
	lsls r1, r1, #2
	bl sub_08001ACC
	ldr r2, _08006660 @ =gUnknown_02016028
	ldr r1, _08006664 @ =0x00011D04
	adds r0, r2, r1
	ldr r5, [r0]
	adds r1, #8
	adds r0, r2, r1
	ldr r3, [r0]
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	adds r1, #8
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	adds r1, #6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800666C
	ldr r1, _08006668 @ =0x00011D15
	adds r0, r2, r1
	ldrb r6, [r0]
	subs r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	lsls r0, r1, #0xa
	adds r3, r3, r0
	lsls r1, r1, #6
	add r8, r1
	add sb, r1
	b _0800666E
	.align 2, 0
_08006650: .4byte 0x06008020
_08006654: .4byte 0x06006000
_08006658: .4byte 0x77777777
_0800665C: .4byte 0xC001C001
_08006660: .4byte gUnknown_02016028
_08006664: .4byte 0x00011D04
_08006668: .4byte 0x00011D15
_0800666C:
	movs r6, #4
_0800666E:
	movs r4, #0
	cmp r4, r6
	bhs _08006698
	movs r7, #0xf0
	lsls r7, r7, #2
_08006678:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r7, #0
	str r3, [sp, #4]
	bl sub_08001B18
	adds r5, r5, r7
	ldr r3, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08006678
_08006698:
	mov r0, r8
	mov r1, sb
	movs r2, #0x1e
	adds r3, r6, #0
	bl sub_08007358
_080066A4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080066B4
sub_080066B4: @ 0x080066B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r3, _08006720 @ =0x06008020
	ldr r0, _08006724 @ =0x06006000
	mov sb, r0
	adds r0, r3, #0
	movs r1, #0x20
	bl sub_080019DC
	mov r0, sb
	movs r1, #0x80
	bl sub_080019DC
	ldr r2, _08006728 @ =gUnknown_02016028
	ldr r1, _0800672C @ =0x00011D04
	adds r0, r2, r1
	ldr r5, [r0]
	adds r1, #8
	adds r0, r2, r1
	ldr r3, [r0]
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	adds r1, #8
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	adds r1, #6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006734
	ldr r1, _08006730 @ =0x00011D15
	adds r0, r2, r1
	ldrb r7, [r0]
	subs r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	lsls r0, r1, #0xa
	adds r3, r3, r0
	lsls r1, r1, #6
	add r8, r1
	add sb, r1
	b _08006736
	.align 2, 0
_08006720: .4byte 0x06008020
_08006724: .4byte 0x06006000
_08006728: .4byte gUnknown_02016028
_0800672C: .4byte 0x00011D04
_08006730: .4byte 0x00011D15
_08006734:
	movs r7, #8
_08006736:
	movs r4, #0
	cmp r4, r7
	bhs _08006760
	movs r6, #0xf0
	lsls r6, r6, #2
_08006740:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r6, #0
	str r3, [sp]
	bl sub_08001A14
	adds r5, r5, r6
	ldr r3, [sp]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _08006740
_08006760:
	mov r0, r8
	mov r1, sb
	movs r2, #0x1e
	adds r3, r7, #0
	bl sub_08007318
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800677C
sub_0800677C: @ 0x0800677C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080067AC @ =gUnknown_02016078
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	movs r1, #0
	bl sub_08001378
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	lsls r2, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r2, _080067B0 @ =0x06006000
	adds r1, r1, r2
	ldrh r2, [r4, #4]
	ldrh r3, [r4, #6]
	bl sub_08007318
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080067AC: .4byte gUnknown_02016078
_080067B0: .4byte 0x06006000

	thumb_func_start sub_080067B4
sub_080067B4: @ 0x080067B4
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #2
	ldrsh r1, [r2, r3]
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080067D8 @ =0x06006000
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	lsls r1, r1, #6
	bl sub_08001A70
	pop {r0}
	bx r0
	.align 2, 0
_080067D8: .4byte 0x06006000

	thumb_func_start sub_080067DC
sub_080067DC: @ 0x080067DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08006844 @ =gUnknown_02016028
	ldr r2, _08006848 @ =0x00011D88
	adds r0, r1, r2
	ldr r6, [r0]
	adds r2, #8
	adds r0, r1, r2
	ldr r4, [r0]
	subs r2, #4
	adds r0, r1, r2
	ldr r0, [r0]
	mov sl, r0
	ldr r0, _0800684C @ =0x00011D94
	adds r1, r1, r0
	ldr r1, [r1]
	mov sb, r1
	movs r2, #8
	mov r8, r2
	movs r5, #0
	movs r7, #0xf0
	lsls r7, r7, #2
_0800680E:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08001A14
	adds r6, r6, r7
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r8
	blo _0800680E
	mov r0, sl
	mov r1, sb
	movs r2, #0x1e
	mov r3, r8
	bl sub_08007318
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006844: .4byte gUnknown_02016028
_08006848: .4byte 0x00011D88
_0800684C: .4byte 0x00011D94

	thumb_func_start sub_08006850
sub_08006850: @ 0x08006850
	push {lr}
	ldr r0, _08006860 @ =0x06008020
	ldr r2, _08006864 @ =0x77777777
	movs r1, #0x20
	bl sub_08001A38
	pop {r0}
	bx r0
	.align 2, 0
_08006860: .4byte 0x06008020
_08006864: .4byte 0x77777777

	thumb_func_start sub_08006868
sub_08006868: @ 0x08006868
	push {lr}
	ldr r0, _08006878 @ =0x06008000
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_080019DC
	pop {r0}
	bx r0
	.align 2, 0
_08006878: .4byte 0x06008000

	thumb_func_start sub_0800687C
sub_0800687C: @ 0x0800687C
	push {r4, r5, r6, lr}
	ldr r6, _080068AC @ =gUnknown_02029238
	ldr r5, _080068B0 @ =0x06008020
	movs r4, #0
_08006884:
	adds r1, r6, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800689C
	lsls r0, r0, #5
	ldr r1, _080068B4 @ =gUnknown_080C2730
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r5, #0x20
_0800689C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x61
	bls _08006884
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080068AC: .4byte gUnknown_02029238
_080068B0: .4byte 0x06008020
_080068B4: .4byte gUnknown_080C2730

	thumb_func_start sub_080068B8
sub_080068B8: @ 0x080068B8
	push {r4, r5, lr}
	ldr r4, _080068D8 @ =gUnknown_0202A6F8
	ldr r5, _080068DC @ =0x06008020
	ldr r0, _080068E0 @ =gScript
	ldr r1, _080068E4 @ =0x0000598C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080068EC
	ldrb r0, [r4]
	lsls r0, r0, #5
	ldr r1, _080068E8 @ =gUnknown_080C2850
	b _080068F2
	.align 2, 0
_080068D8: .4byte gUnknown_0202A6F8
_080068DC: .4byte 0x06008020
_080068E0: .4byte gScript
_080068E4: .4byte 0x0000598C
_080068E8: .4byte gUnknown_080C2850
_080068EC:
	ldrb r0, [r4]
	lsls r0, r0, #5
	ldr r1, _08006918 @ =gUnknown_080C2970
_080068F2:
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r5, #0x20
	ldr r0, _0800691C @ =gScript
	ldr r1, _08006920 @ =0x0000598C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08006928
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	ldr r1, _08006924 @ =gUnknown_080C2850
	b _0800692E
	.align 2, 0
_08006918: .4byte gUnknown_080C2970
_0800691C: .4byte gScript
_08006920: .4byte 0x0000598C
_08006924: .4byte gUnknown_080C2850
_08006928:
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	ldr r1, _08006940 @ =gUnknown_080C2970
_0800692E:
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006940: .4byte gUnknown_080C2970

	thumb_func_start sub_08006944
sub_08006944: @ 0x08006944
	push {r4, lr}
	ldr r4, _08006960 @ =gUnknown_0200C3C8
	adds r0, r4, #0
	bl sub_08006968
	ldr r0, _08006964 @ =0xFFFFF2B8
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08006ACC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006960: .4byte gUnknown_0200C3C8
_08006964: .4byte 0xFFFFF2B8

	thumb_func_start sub_08006968
sub_08006968: @ 0x08006968
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080069CC @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800698C
	ldr r0, _080069D0 @ =gUnknown_02000004
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006992
_0800698C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08006992:
	movs r1, #0
	ldr r0, _080069D4 @ =0x040000D4
	mov sl, r0
_08006998:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r1, #1
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r1, #0xd0
	str r1, [sp, #8]
	cmp r0, #0
	beq _08006A6C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08006A6C
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080069D8
	adds r0, r4, #0
	bl sub_08006A88
	b _08006A6C
	.align 2, 0
_080069CC: .4byte gUnknown_02000000
_080069D0: .4byte gUnknown_02000004
_080069D4: .4byte 0x040000D4
_080069D8:
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	str r3, [sp, #0xc]
	bl sub_08036D18
	ldrb r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r0, r0, #5
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x54
	ldr r6, [r4, #0x28]
	movs r0, #0
	mov r8, r0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08006A68
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	b _08006A60
_08006A12:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006A32
	ldr r0, [r5]
	mov r1, sl
	str r0, [r1]
	str r6, [r1, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	mov r1, sl
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08006A40
_08006A32:
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_08001B18
	ldr r3, [sp, #0xc]
_08006A40:
	adds r6, r6, r4
_08006A42:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #8
	ldrb r0, [r3]
	cmp r8, r0
	bhs _08006A68
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08006A60:
	cmp r4, #0
	beq _08006A42
	cmp r7, sb
	bls _08006A12
_08006A68:
	movs r0, #0
	strb r0, [r3]
_08006A6C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r4, [sp, #8]
	cmp r1, #0x18
	bls _08006998
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08006A88
sub_08006A88: @ 0x08006A88
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7, #0x54]
	ldr r4, [r7, #0x28]
	movs r6, #0
_08006A92:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0x20
	bl sub_080019DC
	adds r5, #0x60
	adds r4, #0x80
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _08006A92
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_080019DC
	adds r1, r7, #0
	adds r1, #0x90
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006ACC
sub_08006ACC: @ 0x08006ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	movs r4, #0
_08006ADA:
	adds r0, r2, #0
	adds r0, #0x32
	ldrb r1, [r0]
	adds r3, r0, #0
	adds r4, #1
	mov r8, r4
	movs r0, #0x38
	adds r0, r0, r2
	mov sb, r0
	cmp r1, #0
	beq _08006B24
	adds r5, r2, #0
	ldr r6, [r5, #0x28]
	movs r7, #0
	ldrb r1, [r3]
	cmp r7, r1
	bhs _08006B20
_08006AFC:
	ldrh r4, [r5, #4]
	lsls r4, r4, #0x15
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	str r3, [sp]
	bl sub_08001A14
	adds r6, r6, r4
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #8
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r7, r0
	blo _08006AFC
_08006B20:
	movs r0, #0
	strb r0, [r3]
_08006B24:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	mov r2, sb
	cmp r4, #5
	bls _08006ADA
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006B40
sub_08006B40: @ 0x08006B40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08006C28 @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006B5E
	movs r0, #0
	strh r0, [r1]
_08006B5E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08006B68
	b _08006CE0
_08006B68:
	movs r4, #0xcc
	lsls r4, r4, #1
	add r4, sb
	ldr r0, _08006C2C @ =0x0000C513
	add r0, sb
	ldrb r6, [r0]
	cmp r6, #0
	beq _08006BB8
	ldr r5, _08006C30 @ =0x00000262
	add r5, sb
_08006B7C:
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08006BB0
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001A14
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08006BB0:
	adds r5, #0xcc
	adds r4, #0xcc
	cmp r6, #0
	bne _08006B7C
_08006BB8:
	ldr r0, _08006C34 @ =0x0000C51A
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006C48
	ldr r2, _08006C38 @ =gUnknown_02016028
	ldr r3, _08006C3C @ =0x00011D16
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006BDA
	movs r1, #0
_08006BDA:
	ldr r3, _08006C40 @ =0x00011D0C
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #0x20
	mov r8, r0
	movs r1, #0
	ldr r0, _08006C44 @ =0x00011CA4
	adds r7, r2, r0
_08006BEE:
	lsls r0, r1, #0xb
	mov r2, r8
	adds r4, r2, r0
	movs r5, #0
	adds r6, r1, #1
_08006BF8:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001A14
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r7, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1b
	bls _08006BF8
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _08006BEE
	b _08006E3E
	.align 2, 0
_08006C28: .4byte gUnknown_02000000
_08006C2C: .4byte 0x0000C513
_08006C30: .4byte 0x00000262
_08006C34: .4byte 0x0000C51A
_08006C38: .4byte gUnknown_02016028
_08006C3C: .4byte 0x00011D16
_08006C40: .4byte 0x00011D0C
_08006C44: .4byte 0x00011CA4
_08006C48:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08006C52
	b _08006E3E
_08006C52:
	ldr r2, _08006CD0 @ =gUnknown_02016028
	ldr r1, _08006CD4 @ =0x00011D16
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006C66
	movs r1, #0
_08006C66:
	ldr r3, _08006CD8 @ =0x00011D0C
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0x82
	lsls r2, r2, #4
	adds r5, r0, r2
	mov r4, r8
	movs r6, #0
	movs r7, #0x80
	lsls r7, r7, #3
_08006C84:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl sub_08001A14
	adds r5, r5, r7
	adds r4, r4, r7
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08006C84
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	movs r6, #0
	ldr r5, _08006CDC @ =gUnknown_02027CCC
_08006CA8:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001A14
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r4, #0x20
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1b
	bls _08006CA8
	b _08006E3E
	.align 2, 0
_08006CD0: .4byte gUnknown_02016028
_08006CD4: .4byte 0x00011D16
_08006CD8: .4byte 0x00011D0C
_08006CDC: .4byte gUnknown_02027CCC
_08006CE0:
	movs r4, #0xcc
	lsls r4, r4, #1
	add r4, sb
	ldr r0, _08006DA0 @ =0x0000C513
	add r0, sb
	ldrb r6, [r0]
	cmp r6, #0
	beq _08006D30
	ldr r5, _08006DA4 @ =0x00000262
	add r5, sb
_08006CF4:
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08006D28
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001B18
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08006D28:
	adds r5, #0xcc
	adds r4, #0xcc
	cmp r6, #0
	bne _08006CF4
_08006D30:
	ldr r0, _08006DA8 @ =0x0000C51A
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006DBC
	ldr r2, _08006DAC @ =gUnknown_02016028
	ldr r3, _08006DB0 @ =0x00011D16
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006D52
	movs r1, #0
_08006D52:
	ldr r3, _08006DB4 @ =0x00011D0C
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #0x20
	mov r8, r0
	movs r1, #0
	ldr r0, _08006DB8 @ =0x00011CA4
	adds r7, r2, r0
_08006D66:
	lsls r0, r1, #0xb
	mov r2, r8
	adds r4, r2, r0
	movs r5, #0
	adds r6, r1, #1
_08006D70:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001B18
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r7, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1b
	bls _08006D70
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _08006D66
	b _08006E3E
	.align 2, 0
_08006DA0: .4byte 0x0000C513
_08006DA4: .4byte 0x00000262
_08006DA8: .4byte 0x0000C51A
_08006DAC: .4byte gUnknown_02016028
_08006DB0: .4byte 0x00011D16
_08006DB4: .4byte 0x00011D0C
_08006DB8: .4byte 0x00011CA4
_08006DBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006E3E
	ldr r2, _08006E68 @ =gUnknown_02016028
	ldr r1, _08006E6C @ =0x00011D16
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08006DD8
	movs r1, #0
_08006DD8:
	ldr r3, _08006E70 @ =0x00011D0C
	adds r0, r2, r3
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0x82
	lsls r2, r2, #4
	adds r5, r0, r2
	mov r4, r8
	movs r6, #0
	movs r7, #0x80
	lsls r7, r7, #3
_08006DF6:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl sub_08001B18
	adds r5, r5, r7
	adds r4, r4, r7
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08006DF6
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	movs r6, #0
	ldr r5, _08006E74 @ =gUnknown_02027CCC
_08006E1A:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08001B18
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r4, #0x20
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1b
	bls _08006E1A
_08006E3E:
	ldr r1, _08006E78 @ =0x0000C513
	add r1, sb
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08006E7C @ =0x0000C51A
	add r2, sb
	ldrb r1, [r2]
	subs r0, #0x11
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E68: .4byte gUnknown_02016028
_08006E6C: .4byte 0x00011D16
_08006E70: .4byte 0x00011D0C
_08006E74: .4byte gUnknown_02027CCC
_08006E78: .4byte 0x0000C513
_08006E7C: .4byte 0x0000C51A

	thumb_func_start sub_08006E80
sub_08006E80: @ 0x08006E80
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08006EE4 @ =gUnknown_02000000
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006E98
	movs r0, #0
	strh r0, [r1]
_08006E98:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006EF0
	ldr r0, _08006EE8 @ =0x00009610
	adds r4, r6, r0
	ldr r1, _08006EEC @ =0x0000C515
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08006F30
_08006EAE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08006ED4
	adds r0, r4, #4
	ldr r1, [r4]
	movs r2, #0x40
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x44
	ldr r1, [r4]
	adds r1, #0x40
	movs r2, #0x40
	bl sub_08001A14
_08006ED4:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x8c
	cmp r5, #0
	bne _08006EAE
	b _08006F30
	.align 2, 0
_08006EE4: .4byte gUnknown_02000000
_08006EE8: .4byte 0x00009610
_08006EEC: .4byte 0x0000C515
_08006EF0:
	ldr r2, _08006F44 @ =0x00009610
	adds r4, r6, r2
	ldr r1, _08006F48 @ =0x0000C515
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08006F30
_08006EFE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08006F24
	adds r0, r4, #4
	ldr r1, [r4]
	movs r2, #0x40
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x44
	ldr r1, [r4]
	adds r1, #0x40
	movs r2, #0x40
	bl sub_08001A14
_08006F24:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x8c
	cmp r5, #0
	bne _08006EFE
_08006F30:
	ldr r0, _08006F4C @ =0x0000C204
	adds r2, r6, r0
	subs r0, #0x18
	adds r1, r6, r0
	ldr r0, [r2]
	cmp r0, r1
	bne _08006F54
	ldr r1, _08006F50 @ =0x0000C1F8
	adds r0, r6, r1
	b _08006F56
	.align 2, 0
_08006F44: .4byte 0x00009610
_08006F48: .4byte 0x0000C515
_08006F4C: .4byte 0x0000C204
_08006F50: .4byte 0x0000C1F8
_08006F54:
	adds r0, r1, #0
_08006F56:
	str r0, [r2]
	ldr r2, _08006F70 @ =0x0000C204
	adds r0, r6, r2
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08006F74 @ =0x0000C515
	adds r0, r6, r2
	strb r1, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006F70: .4byte 0x0000C204
_08006F74: .4byte 0x0000C515

	thumb_func_start sub_08006F78
sub_08006F78: @ 0x08006F78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	ldr r0, _08006FBC @ =0x04000200
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007070
	ldr r3, _08006FC0 @ =gUnknown_02016028
	ldr r0, _08006FC4 @ =0x00005548
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006FCC
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08006FC8 @ =0x000053B4
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	bl sub_08001ACC
	b _08007240
	.align 2, 0
_08006FBC: .4byte 0x04000200
_08006FC0: .4byte gUnknown_02016028
_08006FC4: .4byte 0x00005548
_08006FC8: .4byte 0x000053B4
_08006FCC:
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r4, r6, r2
	ldr r1, _0800705C @ =0x0000C513
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08007006
_08006FDC:
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001B18
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0xcc
	cmp r5, #0
	bne _08006FDC
_08007006:
	ldr r1, _0800705C @ =0x0000C513
	adds r0, r6, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strb r1, [r0]
	ldr r2, _08007060 @ =0x0000C516
	adds r7, r6, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _08007042
	ldr r4, _08007064 @ =gUnknown_02016078
	ldr r0, _08007068 @ =0x00005364
	adds r5, r4, r0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x3c
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, #0x40
	movs r2, #0x3c
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_08001ACC
_08007042:
	ldr r2, _0800706C @ =0x0000C1E8
	adds r1, r6, r2
	ldr r0, [r1]
	ldrb r0, [r0, #9]
	strb r0, [r7]
	ldr r0, [r1]
	mov r1, r8
	strb r1, [r0, #9]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009E38
	b _08007210
	.align 2, 0
_0800705C: .4byte 0x0000C513
_08007060: .4byte 0x0000C516
_08007064: .4byte gUnknown_02016078
_08007068: .4byte 0x00005364
_0800706C: .4byte 0x0000C1E8
_08007070:
	ldr r3, _080070A0 @ =gUnknown_02016028
	ldr r0, _080070A4 @ =0x00005548
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080070C2
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080070A8 @ =gScript
	ldrb r0, [r0]
	cmp r0, #3
	bne _080070B0
	ldr r1, _080070AC @ =0x000053B4
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	bl sub_080019DC
	b _08007240
	.align 2, 0
_080070A0: .4byte gUnknown_02016028
_080070A4: .4byte 0x00005548
_080070A8: .4byte gScript
_080070AC: .4byte 0x000053B4
_080070B0:
	cmp r0, #3
	blt _080070C2
	cmp r0, #5
	bgt _080070C2
	ldr r0, _080070D4 @ =0x06006000
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080019DC
_080070C2:
	ldr r0, _080070D8 @ =gScript
	ldrb r0, [r0]
	cmp r0, #5
	bgt _080070E0
	cmp r0, #4
	blt _080070E0
	ldr r2, _080070DC @ =0x00003670
	adds r4, r6, r2
	b _080070E6
	.align 2, 0
_080070D4: .4byte 0x06006000
_080070D8: .4byte gScript
_080070DC: .4byte 0x00003670
_080070E0:
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r4, r6, r0
_080070E6:
	ldr r1, _08007134 @ =0x0000C513
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0800711A
_080070F0:
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001A14
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0xcc
	cmp r5, #0
	bne _080070F0
_0800711A:
	ldr r1, _08007134 @ =0x0000C513
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08007138 @ =gScript
	ldrb r0, [r0]
	cmp r0, #4
	beq _08007174
	cmp r0, #4
	bgt _0800713C
	cmp r0, #3
	beq _08007142
	b _080071E0
	.align 2, 0
_08007134: .4byte 0x0000C513
_08007138: .4byte gScript
_0800713C:
	cmp r0, #5
	beq _080071B8
	b _080071E0
_08007142:
	ldr r2, _08007168 @ =0x0000C516
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080071E0
	ldr r4, _0800716C @ =gUnknown_02016078
	ldr r1, _08007170 @ =0x00005364
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #2
	bl sub_08007318
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_080019DC
	b _080071E0
	.align 2, 0
_08007168: .4byte 0x0000C516
_0800716C: .4byte gUnknown_02016078
_08007170: .4byte 0x00005364
_08007174:
	ldr r2, _080071A8 @ =0x0000C1E8
	adds r0, r6, r2
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _080071E0
	ldr r4, _080071AC @ =gUnknown_02016078
	ldr r1, _080071B0 @ =0x00005364
	adds r0, r4, r1
	ldr r1, [r0]
	ldr r2, _080071B4 @ =0x0000535A
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	movs r2, #0x1e
	bl sub_08007318
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_080019DC
	b _080071E0
	.align 2, 0
_080071A8: .4byte 0x0000C1E8
_080071AC: .4byte gUnknown_02016078
_080071B0: .4byte 0x00005364
_080071B4: .4byte 0x0000535A
_080071B8:
	ldr r1, _08007224 @ =0x0000C1E8
	adds r0, r6, r1
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _080071E0
	ldr r4, _08007228 @ =gUnknown_02016078
	ldr r2, _0800722C @ =0x00005364
	adds r0, r4, r2
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_08007318
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_080019DC
_080071E0:
	ldr r0, _08007224 @ =0x0000C1E8
	adds r3, r6, r0
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	ldr r2, _08007230 @ =0x0000C516
	adds r0, r6, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r3]
	strb r2, [r0, #9]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009E38
	ldr r0, _08007234 @ =gScript
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08007210
	cmp r0, #4
	blt _08007210
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009F10
_08007210:
	ldr r0, _08007224 @ =0x0000C1E8
	adds r2, r6, r0
	subs r0, #0x18
	adds r1, r6, r0
	ldr r0, [r2]
	cmp r0, r1
	bne _0800723C
	ldr r1, _08007238 @ =0x0000C1DC
	adds r0, r6, r1
	b _0800723E
	.align 2, 0
_08007224: .4byte 0x0000C1E8
_08007228: .4byte gUnknown_02016078
_0800722C: .4byte 0x00005364
_08007230: .4byte 0x0000C516
_08007234: .4byte gScript
_08007238: .4byte 0x0000C1DC
_0800723C:
	adds r0, r1, #0
_0800723E:
	str r0, [r2]
_08007240:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800724C
sub_0800724C: @ 0x0800724C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0xb1
	lsls r1, r1, #6
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800728C
	ldr r0, _08007274 @ =gScript
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08007280
	ldr r0, _08007278 @ =gUnknown_020281F8
	ldr r1, _0800727C @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08001A94
	b _0800728C
	.align 2, 0
_08007274: .4byte gScript
_08007278: .4byte gUnknown_020281F8
_0800727C: .4byte 0x0600F000
_08007280:
	ldr r1, _080072FC @ =0x06006000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, #0
	bl sub_08001A14
_0800728C:
	ldr r2, _08007300 @ =0x00002C42
	adds r7, r5, r2
	ldrh r0, [r7]
	cmp r0, #0
	beq _080072A2
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, _08007304 @ =0x06006800
	bl sub_08001A14
_080072A2:
	ldr r0, _08007308 @ =0x00002C44
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _080072BC
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, _0800730C @ =0x06007000
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001A14
_080072BC:
	ldr r2, _08007310 @ =0x00002C46
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _080072D6
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, _08007314 @ =0x06007800
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001A14
_080072D6:
	ldrh r0, [r4]
	movs r0, #0
	strh r0, [r4]
	ldrh r0, [r4]
	ldrh r1, [r6]
	strh r0, [r6]
	ldrh r0, [r6]
	ldrh r1, [r7]
	strh r0, [r7]
	ldrh r1, [r7]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r5, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080072FC: .4byte 0x06006000
_08007300: .4byte 0x00002C42
_08007304: .4byte 0x06006800
_08007308: .4byte 0x00002C44
_0800730C: .4byte 0x06007000
_08007310: .4byte 0x00002C46
_08007314: .4byte 0x06007800

	thumb_func_start sub_08007318
sub_08007318: @ 0x08007318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r4, #0
	cmp r4, r7
	bhs _0800734C
_08007332:
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	lsls r2, r3, #1
	bl sub_08001A14
	adds r6, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _08007332
_0800734C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007358
sub_08007358: @ 0x08007358
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r4, #0
	cmp r4, r7
	bhs _0800738C
_08007372:
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	lsls r2, r3, #1
	bl sub_08001B18
	adds r6, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _08007372
_0800738C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007398
sub_08007398: @ 0x08007398
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _08007534 @ =gScript
	ldr r0, _08007538 @ =0x00009D14
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r5, #3
	rsbs r5, r5, #0
	ands r0, r5
	strb r0, [r3]
	ldr r1, _0800753C @ =0x00009D10
	adds r0, r7, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, _08007540 @ =0x00009D08
	adds r1, r7, r0
	ldr r0, _08007544 @ =0x06010000
	str r0, [r1]
	ldr r1, _08007548 @ =0x00009D0C
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800754C @ =gUnknown_02016028
	mov sl, r0
	ldr r1, _08007550 @ =0x0001ED10
	add r1, sl
	movs r6, #5
	rsbs r6, r6, #0
	movs r4, #9
	rsbs r4, r4, #0
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	subs r0, #0x20
	mov sb, r0
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08007554 @ =0x0001ED11
	add r3, sl
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	ands r0, r4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r7]
	ldrb r0, [r7, #1]
	ands r2, r0
	ands r2, r5
	ands r2, r6
	strb r2, [r7, #1]
	movs r0, #0x1a
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #1
	ands r0, r5
	lsls r0, r0, #3
	ldrb r2, [r7, #1]
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #1]
	movs r0, #0x1b
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r0, r0, #4
	ldrb r2, [r7, #1]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #1]
	ldr r0, _08007558 @ =0x0000036E
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r0, r0, #5
	ldrb r2, [r7, #1]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	mov r2, sb
	ands r1, r2
	strb r1, [r7, #1]
	movs r0, #0x18
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r7]
	ldr r2, _0800755C @ =0xFFF87FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r7]
	ldrb r0, [r7, #2]
	adds r1, r4, #0
	ands r1, r0
	ldrb r2, [r7, #3]
	mov r0, sb
	ands r0, r2
	strb r0, [r7, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	ands r1, r2
	mov r0, sb
	ands r1, r0
	strb r1, [r7, #2]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r0, r0, #3
	ldrb r1, [r7, #3]
	ands r4, r1
	orrs r4, r0
	mov r1, r8
	ands r4, r1
	strb r4, [r7, #3]
	ldr r2, _08007560 @ =0x00008494
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080074CE
	ldrh r1, [r7, #2]
	ldr r0, _08007564 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r7, #2]
_080074CE:
	ldr r0, _08007568 @ =0x000121B8
	add r0, sl
	movs r1, #0
	str r1, [r0]
	ldr r2, _0800756C @ =0x0000595B
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #1
	beq _080074E4
	movs r0, #0
	strb r0, [r1]
_080074E4:
	mov r0, sl
	bl sub_080013D0
	mov r4, sl
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r0, _08007570 @ =0x00002CA0
	add r0, sl
	movs r1, #0
	bl sub_08001630
	mov r0, sl
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
	adds r0, r7, #0
	adds r0, #8
	bl sub_08007DEC
	ldr r0, _08007574 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #7
	bgt _08007584
	cmp r0, #6
	blt _08007584
	ldr r1, _08007578 @ =0x000082AC
	adds r0, r7, r1
	ldr r1, _0800757C @ =0x0000FFFF
	strh r1, [r0]
	ldr r2, _08007580 @ =0x000082B4
	adds r0, r7, r2
	movs r1, #0
	strh r1, [r0]
	b _0800773C
	.align 2, 0
_08007534: .4byte gScript
_08007538: .4byte 0x00009D14
_0800753C: .4byte 0x00009D10
_08007540: .4byte 0x00009D08
_08007544: .4byte 0x06010000
_08007548: .4byte 0x00009D0C
_0800754C: .4byte gUnknown_02016028
_08007550: .4byte 0x0001ED10
_08007554: .4byte 0x0001ED11
_08007558: .4byte 0x0000036E
_0800755C: .4byte 0xFFF87FFF
_08007560: .4byte 0x00008494
_08007564: .4byte 0xFFFFF87F
_08007568: .4byte 0x000121B8
_0800756C: .4byte 0x0000595B
_08007570: .4byte 0x00002CA0
_08007574: .4byte gUnknown_02005080
_08007578: .4byte 0x000082AC
_0800757C: .4byte 0x0000FFFF
_08007580: .4byte 0x000082B4
_08007584:
	ldr r6, _080076A0 @ =gScript
	ldr r2, _080076A4 @ =gSave
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r3, [r6, #8]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r6, #8]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r1, [r2]
	ldr r2, _080076A8 @ =0x000067AC
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _080076AC @ =gUnknown_02005080
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #2
	bne _080075C2
	ldr r1, _080076B0 @ =0x00008494
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080075C2:
	bl sub_0802462C
	bl sub_0800FC00
	bl sub_08027FB8
	bl sub_0802BB64
	ldr r4, _080076B4 @ =gUnknown_0201B7A0
	adds r0, r4, #0
	bl sub_08009E18
	ldr r2, _080076B8 @ =0x0000C51C
	adds r0, r4, r2
	bl sub_0800AF44
	ldr r1, _080076BC @ =0x0000C5A0
	adds r0, r4, r1
	bl sub_0800AF44
	ldr r2, _080076C0 @ =0x00009484
	adds r0, r6, r2
	bl sub_0800AFC0
	ldr r1, _080076C4 @ =0xFFFFD538
	adds r0, r4, r1
	bl sub_08037608
	ldr r2, _080076C8 @ =0xFFFFDE44
	adds r0, r4, r2
	bl sub_08039B88
	bl sub_08032EDC
	bl sub_08032F5C
	ldr r0, _080076CC @ =0x0000CA40
	adds r5, r4, r0
	ldrb r0, [r5]
	movs r7, #1
	orrs r0, r7
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	movs r3, #0
	ldr r0, [r6]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800762C
	movs r3, #1
_0800762C:
	ldr r1, _080076D0 @ =0x0000CA41
	adds r2, r4, r1
	ands r3, r7
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080062F0
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #5
	bgt _08007654
	cmp r0, #3
	blt _08007654
	bl sub_0803D0A8
_08007654:
	ldr r1, _080076A0 @ =gScript
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08007682
	ldr r2, _080076A8 @ =0x000067AC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0xca
	bne _08007682
	ldr r4, _080076D4 @ =gUnknown_03005314
	ldr r0, _080076D8 @ =0x00009488
	adds r1, r1, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
_08007682:
	ldr r0, _080076AC @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #3
	bne _08007720
	ldr r1, _080076DC @ =gUnknown_020047E0
	ldrb r0, [r1]
	cmp r0, #1
	bne _08007720
	ldrh r0, [r1, #0xa]
	cmp r0, #0x39
	beq _080076E0
	cmp r0, #0x3a
	beq _08007708
	b _08007720
	.align 2, 0
_080076A0: .4byte gScript
_080076A4: .4byte gSave
_080076A8: .4byte 0x000067AC
_080076AC: .4byte gUnknown_02005080
_080076B0: .4byte 0x00008494
_080076B4: .4byte gUnknown_0201B7A0
_080076B8: .4byte 0x0000C51C
_080076BC: .4byte 0x0000C5A0
_080076C0: .4byte 0x00009484
_080076C4: .4byte 0xFFFFD538
_080076C8: .4byte 0xFFFFDE44
_080076CC: .4byte 0x0000CA40
_080076D0: .4byte 0x0000CA41
_080076D4: .4byte gUnknown_03005314
_080076D8: .4byte 0x00009488
_080076DC: .4byte gUnknown_020047E0
_080076E0:
	ldr r5, _08007700 @ =gUnknown_03005314
	ldr r1, _08007704 @ =gUnknown_0200F088
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08001B18
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001B54
	b _08007720
	.align 2, 0
_08007700: .4byte gUnknown_03005314
_08007704: .4byte gUnknown_0200F088
_08007708:
	ldr r4, _0800774C @ =gUnknown_03005314
	ldr r1, _08007750 @ =gUnknown_0200F088
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
_08007720:
	ldr r0, _08007754 @ =gScript
	ldr r1, _08007758 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007736
	ldr r0, _0800775C @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800773C
_08007736:
	movs r0, #2
	bl sub_0801B5E8
_0800773C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800774C: .4byte gUnknown_03005314
_08007750: .4byte gUnknown_0200F088
_08007754: .4byte gScript
_08007758: .4byte 0x00008494
_0800775C: .4byte gUnknown_02005080

	thumb_func_start sub_08007760
sub_08007760: @ 0x08007760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r6, _080078B8 @ =gScript
	ldr r1, _080078BC @ =0x00009D10
	adds r0, r6, r1
	movs r2, #0
	str r2, [r0]
	ldr r0, _080078C0 @ =0x00009D08
	adds r1, r6, r0
	ldr r0, _080078C4 @ =0x06010000
	str r0, [r1]
	ldr r1, _080078C8 @ =0x00009D0C
	adds r0, r6, r1
	strh r2, [r0]
	ldrb r1, [r6, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	subs r2, #3
	mov sl, r2
	ands r0, r2
	movs r1, #5
	rsbs r1, r1, #0
	mov sb, r1
	ands r0, r1
	strb r0, [r6, #1]
	movs r0, #0x1a
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #3
	ldrb r2, [r6, #1]
	movs r1, #9
	rsbs r1, r1, #0
	mov r8, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #1]
	movs r0, #0x1b
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #4
	ldrb r2, [r6, #1]
	movs r7, #0x11
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #1]
	ldr r0, _080078CC @ =0x0000036E
	bl sub_08002970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	ldrb r2, [r6, #1]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r1, r4
	strb r1, [r6, #1]
	movs r0, #0x18
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r6]
	ldr r2, _080078D0 @ =0xFFF87FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r6]
	ldrb r1, [r6, #2]
	mov r0, r8
	ands r0, r1
	ldrb r2, [r6, #3]
	adds r1, r4, #0
	ands r1, r2
	ands r0, r7
	ands r0, r5
	ands r0, r4
	strb r0, [r6, #2]
	ands r1, r5
	strb r1, [r6, #3]
	ldr r2, _080078D4 @ =0x00008494
	adds r4, r6, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08007844
	ldrh r1, [r6, #2]
	ldr r0, _080078D8 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r6, #2]
_08007844:
	ldr r3, _080078DC @ =gUnknown_02016028
	ldr r0, _080078E0 @ =0x0001ED10
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	ands r0, r1
	mov r1, sb
	ands r0, r1
	mov r1, r8
	ands r0, r1
	ands r0, r7
	ands r0, r5
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	adds r5, r3, #0
	cmp r0, #0
	beq _080078EC
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080078EC
	adds r0, r5, #0
	bl sub_080013D0
	ldr r2, _080078E4 @ =0x00005676
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r5, #0x1a]
	strh r0, [r5, #0x1a]
	ldrh r0, [r5, #0x22]
	movs r0, #1
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0x24]
	movs r0, #0x21
	strh r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r1, _080078E8 @ =0x00002CA0
	adds r0, r5, r1
	movs r1, #0
	bl sub_08001630
	adds r0, r5, #0
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
	b _08007916
	.align 2, 0
_080078B8: .4byte gScript
_080078BC: .4byte 0x00009D10
_080078C0: .4byte 0x00009D08
_080078C4: .4byte 0x06010000
_080078C8: .4byte 0x00009D0C
_080078CC: .4byte 0x0000036E
_080078D0: .4byte 0xFFF87FFF
_080078D4: .4byte 0x00008494
_080078D8: .4byte 0xFFFFF87F
_080078DC: .4byte gUnknown_02016028
_080078E0: .4byte 0x0001ED10
_080078E4: .4byte 0x00005676
_080078E8: .4byte 0x00002CA0
_080078EC:
	adds r0, r5, #0
	bl sub_080013D0
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r2, _08007A38 @ =0x00002CA0
	adds r0, r5, r2
	movs r1, #0
	bl sub_08001630
	adds r0, r5, #0
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
_08007916:
	ldr r6, _08007A3C @ =gScript
	ldr r0, _08007A40 @ =0x000067AC
	adds r0, r0, r6
	mov r8, r0
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_08024744
	bl sub_0800FCE8
	bl sub_08027FD8
	bl sub_0802BBC8
	ldr r4, _08007A44 @ =gUnknown_0201B7A0
	adds r0, r4, #0
	bl sub_08009E18
	ldr r2, _08007A48 @ =0x0000C51C
	adds r0, r4, r2
	bl sub_0800AF44
	ldr r1, _08007A4C @ =0x0000C5A0
	adds r0, r4, r1
	bl sub_0800AF44
	ldr r2, _08007A50 @ =0x00009484
	adds r0, r6, r2
	bl sub_0800AFC0
	ldr r1, _08007A54 @ =0xFFFFD538
	adds r0, r4, r1
	bl sub_08037608
	ldr r2, _08007A58 @ =0xFFFFDE44
	adds r0, r4, r2
	bl sub_08039B88
	bl sub_08032EDC
	bl sub_08032F5C
	ldr r0, _08007A5C @ =0x0000CA40
	adds r5, r4, r0
	ldrb r0, [r5]
	movs r7, #1
	orrs r0, r7
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	movs r3, #0
	ldr r0, [r6]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800798E
	movs r3, #1
_0800798E:
	ldr r1, _08007A60 @ =0x0000CA41
	adds r2, r4, r1
	ands r3, r7
	ldrb r1, [r2]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080062F0
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080079C0
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0xcd
	bne _080079C0
	ldrb r1, [r6, #0xf]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r6, #0xf]
_080079C0:
	ldr r5, _08007A3C @ =gScript
	ldr r1, _08007A64 @ =0x00008494
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007A88
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08007A88
	ldr r4, _08007A68 @ =gUnknown_02016028
	adds r0, r4, #0
	movs r1, #2
	bl sub_08007CE8
	ldr r0, _08007A6C @ =0x000058E5
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08007A70 @ =0x0000679C
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08007A74 @ =0x0000679E
	adds r0, r5, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r2, _08007A78 @ =0x000067A0
	adds r0, r5, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r1, _08007A7C @ =0x00005676
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
	ldr r2, _08007A80 @ =0x000131D0
	adds r4, r4, r2
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0x40
	bl sub_08016F4C
	ldr r1, _08007A84 @ =gUnknown_030054D4
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_08001B18
	b _08007A94
	.align 2, 0
_08007A38: .4byte 0x00002CA0
_08007A3C: .4byte gScript
_08007A40: .4byte 0x000067AC
_08007A44: .4byte gUnknown_0201B7A0
_08007A48: .4byte 0x0000C51C
_08007A4C: .4byte 0x0000C5A0
_08007A50: .4byte 0x00009484
_08007A54: .4byte 0xFFFFD538
_08007A58: .4byte 0xFFFFDE44
_08007A5C: .4byte 0x0000CA40
_08007A60: .4byte 0x0000CA41
_08007A64: .4byte 0x00008494
_08007A68: .4byte gUnknown_02016028
_08007A6C: .4byte 0x000058E5
_08007A70: .4byte 0x0000679C
_08007A74: .4byte 0x0000679E
_08007A78: .4byte 0x000067A0
_08007A7C: .4byte 0x00005676
_08007A80: .4byte 0x000131D0
_08007A84: .4byte gUnknown_030054D4
_08007A88:
	ldr r2, _08007AC8 @ =gScript
	ldrb r1, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
_08007A94:
	ldr r4, _08007AC8 @ =gScript
	ldr r1, _08007ACC @ =0x00008494
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08007AB6
	movs r0, #2
	bl sub_0801B5E8
	ldr r2, _08007AD0 @ =0x000067AC
	adds r0, r4, r2
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_080083B8
_08007AB6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007AC8: .4byte gScript
_08007ACC: .4byte 0x00008494
_08007AD0: .4byte 0x000067AC

	thumb_func_start sub_08007AD4
sub_08007AD4: @ 0x08007AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _08007C68 @ =gScript
	ldr r0, _08007C6C @ =0x00009D14
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	mov ip, r1
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08007C70 @ =0x00009D08
	adds r1, r6, r0
	ldr r0, _08007C74 @ =0x06010000
	str r0, [r1]
	ldr r1, _08007C78 @ =0x00009D0C
	adds r0, r6, r1
	movs r1, #0
	mov sb, r1
	mov r1, sb
	strh r1, [r0]
	ldr r7, _08007C7C @ =gUnknown_02016028
	ldr r0, _08007C80 @ =0x0001ED10
	adds r1, r7, r0
	movs r3, #5
	rsbs r3, r3, #0
	movs r4, #9
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08007C84 @ =0x0001ED11
	adds r2, r7, r1
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r3
	ands r0, r4
	ands r0, r5
	mov r1, r8
	ands r0, r1
	strb r0, [r2]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	mov sl, r1
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #3
	ldrb r1, [r6, #3]
	ands r4, r1
	orrs r4, r0
	mov r0, r8
	ands r4, r0
	strb r4, [r6, #3]
	ldr r1, _08007C88 @ =0x000121B8
	adds r5, r7, r1
	mov r0, sb
	str r0, [r5]
	ldr r1, _08007C8C @ =0x0000595B
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_080013D0
	adds r4, r7, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r1, _08007C90 @ =0x00002CA0
	adds r0, r7, r1
	movs r1, #0
	bl sub_08001630
	adds r0, r7, #0
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
	ldr r0, _08007C94 @ =gSave
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r2, [r6, #8]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #8]
	bl sub_08024874
	bl sub_0800FDA8
	bl sub_08028020
	bl sub_0802BB64
	ldr r1, _08007C98 @ =0x00005778
	adds r0, r7, r1
	bl sub_08009E18
	ldr r1, _08007C9C @ =0x00011C94
	adds r0, r7, r1
	bl sub_0800AF44
	ldr r1, _08007CA0 @ =0x00011D18
	adds r0, r7, r1
	bl sub_0800AF44
	ldr r1, _08007CA4 @ =0x00009484
	adds r0, r6, r1
	bl sub_0800AFC0
	ldr r1, _08007CA8 @ =0x00002CB0
	adds r0, r7, r1
	bl sub_08037608
	ldr r1, _08007CAC @ =0x000035BC
	adds r0, r7, r1
	bl sub_08039B88
	bl sub_08032EDC
	bl sub_08032F5C
	ldrb r0, [r5]
	mov r1, sl
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	movs r3, #0
	ldr r0, [r6]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _08007C14
	movs r3, #1
_08007C14:
	ldr r0, _08007CB0 @ =0x000121B9
	adds r2, r7, r0
	mov r1, sl
	ands r3, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080062F0
	ldr r0, _08007CB4 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007C46
	ldr r0, _08007CB8 @ =gUnknown_020050C0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_0803D06C
_08007C46:
	ldr r1, _08007CBC @ =0x00008494
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08007C58
	movs r0, #3
	bl sub_0801B5E8
_08007C58:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007C68: .4byte gScript
_08007C6C: .4byte 0x00009D14
_08007C70: .4byte 0x00009D08
_08007C74: .4byte 0x06010000
_08007C78: .4byte 0x00009D0C
_08007C7C: .4byte gUnknown_02016028
_08007C80: .4byte 0x0001ED10
_08007C84: .4byte 0x0001ED11
_08007C88: .4byte 0x000121B8
_08007C8C: .4byte 0x0000595B
_08007C90: .4byte 0x00002CA0
_08007C94: .4byte gSave
_08007C98: .4byte 0x00005778
_08007C9C: .4byte 0x00011C94
_08007CA0: .4byte 0x00011D18
_08007CA4: .4byte 0x00009484
_08007CA8: .4byte 0x00002CB0
_08007CAC: .4byte 0x000035BC
_08007CB0: .4byte 0x000121B9
_08007CB4: .4byte gUnknown_02005080
_08007CB8: .4byte gUnknown_020050C0
_08007CBC: .4byte 0x00008494

	thumb_func_start sub_08007CC0
sub_08007CC0: @ 0x08007CC0
	push {lr}
	ldrh r1, [r0, #8]
	movs r1, #0x40
	strh r1, [r0, #8]
	movs r1, #0
	bl sub_08007CE8
	ldr r0, _08007CE0 @ =gScript
	ldr r1, _08007CE4 @ =0x0000595B
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08007D94
	pop {r0}
	bx r0
	.align 2, 0
_08007CE0: .4byte gScript
_08007CE4: .4byte 0x0000595B

	thumb_func_start sub_08007CE8
sub_08007CE8: @ 0x08007CE8
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xd
	ldr r2, _08007D14 @ =gUnknown_080C1B20
	adds r4, r1, r2
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0xa
_08007CF8:
	lsls r0, r3, #1
	adds r0, r5, r0
	ldrh r1, [r4]
	ldrh r2, [r0]
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08007CF8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007D14: .4byte gUnknown_080C1B20

	thumb_func_start sub_08007D18
sub_08007D18: @ 0x08007D18
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08007D58 @ =gScript
	ldr r1, _08007D5C @ =0x0000595B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08007D68
	ldr r2, _08007D60 @ =0x00002C4C
	adds r3, r4, r2
	ldrb r0, [r3]
	movs r0, #0x1f
	strb r0, [r3]
	ldr r5, _08007D64 @ =0x00002C4D
	adds r1, r4, r5
	ldrb r2, [r1]
	strb r0, [r1]
	adds r5, #1
	adds r2, r4, r5
	ldrb r4, [r2]
	strb r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldrb r3, [r3]
	ldrb r0, [r1]
	lsls r0, r0, #5
	orrs r0, r3
	ldrb r1, [r2]
	lsls r1, r1, #0xa
	orrs r0, r1
	strh r0, [r4]
	b _08007D82
	.align 2, 0
_08007D58: .4byte gScript
_08007D5C: .4byte 0x0000595B
_08007D60: .4byte 0x00002C4C
_08007D64: .4byte 0x00002C4D
_08007D68:
	ldr r1, _08007D88 @ =0x00002C4C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08007D8C @ =0x00002C4D
	adds r0, r4, r2
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r5, _08007D90 @ =0x00002C4E
	adds r0, r4, r5
	ldrb r2, [r0]
	strb r1, [r0]
_08007D82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007D88: .4byte 0x00002C4C
_08007D8C: .4byte 0x00002C4D
_08007D90: .4byte 0x00002C4E

	thumb_func_start sub_08007D94
sub_08007D94: @ 0x08007D94
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08007DE4
	lsls r0, r0, #2
	ldr r1, _08007DA8 @ =_08007DAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007DA8: .4byte _08007DAC
_08007DAC: @ jump table
	.4byte _08007DC0 @ case 0
	.4byte _08007DC0 @ case 1
	.4byte _08007DD0 @ case 2
	.4byte _08007DC0 @ case 3
	.4byte _08007DC0 @ case 4
_08007DC0:
	ldr r1, _08007DCC @ =gUnknown_02016028
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xff
	b _08007DD8
	.align 2, 0
_08007DCC: .4byte gUnknown_02016028
_08007DD0:
	ldr r1, _08007DE8 @ =gUnknown_02016028
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xbf
_08007DD8:
	strh r0, [r1]
	ldrh r0, [r1, #2]
	strh r2, [r1, #2]
	ldrh r0, [r1, #4]
	movs r0, #0xf
	strh r0, [r1, #4]
_08007DE4:
	pop {r0}
	bx r0
	.align 2, 0
_08007DE8: .4byte gUnknown_02016028

	thumb_func_start sub_08007DEC
sub_08007DEC: @ 0x08007DEC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08007E28 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #7
	bgt _08007E22
	cmp r0, #6
	blt _08007E22
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_08007E22:
	pop {r0}
	bx r0
	.align 2, 0
_08007E28: .4byte gUnknown_02005080

	thumb_func_start sub_08007E2C
sub_08007E2C: @ 0x08007E2C
	push {lr}
	ldr r1, _08007E50 @ =0x06008000
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	bl sub_08007E54
	bl sub_08007F18
	pop {r0}
	bx r0
	.align 2, 0
_08007E50: .4byte 0x06008000

	thumb_func_start sub_08007E54
sub_08007E54: @ 0x08007E54
	push {r4, lr}
	ldr r4, _08007EE8 @ =0x09AF3790
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	ldr r1, _08007EEC @ =0x0600A000
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0x23
	bl sub_0800289C
	ldr r1, _08007EF0 @ =0x06017E00
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_08001B18
	ldr r0, _08007EF4 @ =gSave
	ldr r1, _08007EF8 @ =0x0000081E
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r4, #0
	bl sub_0800289C
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	movs r0, #0xc
	movs r1, #1
	bl sub_0803B688
	ldr r0, _08007EFC @ =gUnknown_03005494
	ldr r2, _08007F00 @ =0x00007E9C
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r2, _08007F04 @ =0x0000319F
	adds r1, r2, #0
	strh r1, [r0, #6]
	movs r1, #0
	strh r1, [r0, #0xe]
	ldr r2, _08007F08 @ =0x00007FEC
	adds r1, r2, #0
	strh r1, [r0, #0x10]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0, #0x16]
	ldr r2, _08007F0C @ =0x00007FFF
	adds r1, r2, #0
	strh r1, [r0, #0x1e]
	ldr r1, _08007F10 @ =gUnknown_020050C0
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r1, [r1]
	adds r2, #0x6c
	adds r1, r1, r2
	movs r2, #0x20
	bl sub_08001B18
	ldr r0, _08007F14 @ =gUnknown_080C1B40
	movs r1, #0x1f
	movs r2, #0x20
	bl sub_08016F4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007EE8: .4byte 0x09AF3790
_08007EEC: .4byte 0x0600A000
_08007EF0: .4byte 0x06017E00
_08007EF4: .4byte gSave
_08007EF8: .4byte 0x0000081E
_08007EFC: .4byte gUnknown_03005494
_08007F00: .4byte 0x00007E9C
_08007F04: .4byte 0x0000319F
_08007F08: .4byte 0x00007FEC
_08007F0C: .4byte 0x00007FFF
_08007F10: .4byte gUnknown_020050C0
_08007F14: .4byte gUnknown_080C1B40

	thumb_func_start sub_08007F18
sub_08007F18: @ 0x08007F18
	push {r4, lr}
	ldr r4, _08007F58 @ =0x09AF3790
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0800289C
	ldr r1, _08007F5C @ =0x06017000
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_0800289C
	movs r1, #0x1c
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_0800289C
	ldr r1, _08007F60 @ =0x06014400
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007F58: .4byte 0x09AF3790
_08007F5C: .4byte 0x06017000
_08007F60: .4byte 0x06014400

	thumb_func_start sub_08007F64
sub_08007F64: @ 0x08007F64
	push {r4, r5, r6, lr}
	ldr r5, _08007FB0 @ =gUnknown_02016028
	ldr r1, _08007FB4 @ =0x000121C0
	adds r0, r5, r1
	ldrb r4, [r0]
	lsls r4, r4, #2
	ldr r0, _08007FB8 @ =gUnknown_080C2A90
	adds r4, r4, r0
	ldr r6, _08007FBC @ =0x09B0CA54
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_0800289C
	ldr r1, _08007FC0 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r1, [r4, #1]
	adds r0, r6, #0
	bl sub_0800289C
	ldr r1, _08007FC4 @ =0x000121C1
	adds r5, r5, r1
	ldrb r1, [r5]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0xd
	movs r2, #0x20
	bl sub_08016F4C
	movs r0, #0xd
	movs r1, #1
	bl sub_0803B688
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007FB0: .4byte gUnknown_02016028
_08007FB4: .4byte 0x000121C0
_08007FB8: .4byte gUnknown_080C2A90
_08007FBC: .4byte 0x09B0CA54
_08007FC0: .4byte 0x0600F000
_08007FC4: .4byte 0x000121C1

	thumb_func_start sub_08007FC8
sub_08007FC8: @ 0x08007FC8
	push {r4, lr}
	ldr r4, _08007FF8 @ =gUnknown_02016028
	ldr r1, _08007FFC @ =0x000121C0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08008000 @ =gUnknown_080C2A90
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r2, _08008004 @ =0x000121C2
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	bl sub_0800800C
	ldr r0, _08008008 @ =0x00002C90
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007FF8: .4byte gUnknown_02016028
_08007FFC: .4byte 0x000121C0
_08008000: .4byte gUnknown_080C2A90
_08008004: .4byte 0x000121C2
_08008008: .4byte 0x00002C90

	thumb_func_start sub_0800800C
sub_0800800C: @ 0x0800800C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08008090 @ =0x09B0CA54
	bl sub_0800289C
	adds r6, r0, #0
	ldr r0, _08008094 @ =gUnknown_02016078
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0xe0
	lsls r1, r1, #2
	mov sb, r1
	movs r2, #0xc0
	mov sl, r2
_0800803E:
	movs r4, #0
	movs r1, #0x1e
	adds r1, r1, r6
	mov ip, r1
	movs r2, #0x40
	adds r2, r2, r5
	mov r8, r2
	adds r7, r0, #1
_0800804E:
	lsls r3, r4, #1
	adds r3, r3, r5
	adds r0, r6, r4
	ldrb r2, [r0]
	movs r1, #0x3f
	ands r1, r2
	add r1, sb
	mov r0, sl
	ands r0, r2
	lsls r0, r0, #4
	orrs r1, r0
	ldr r2, _08008098 @ =0xFFFFD000
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _0800804E
	mov r6, ip
	mov r5, r8
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _0800803E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008090: .4byte 0x09B0CA54
_08008094: .4byte gUnknown_02016078
_08008098: .4byte 0xFFFFD000

	thumb_func_start sub_0800809C
sub_0800809C: @ 0x0800809C
	push {lr}
	ldr r0, _080080B4 @ =0x09AF3790
	movs r1, #0x20
	bl sub_0800289C
	ldr r1, _080080B8 @ =0x06014000
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_080080B4: .4byte 0x09AF3790
_080080B8: .4byte 0x06014000

	thumb_func_start sub_080080BC
sub_080080BC: @ 0x080080BC
	push {lr}
	ldr r0, _080080D4 @ =0x09AF3790
	movs r1, #0x22
	bl sub_0800289C
	ldr r1, _080080D8 @ =0x06014000
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_080080D4: .4byte 0x09AF3790
_080080D8: .4byte 0x06014000

	thumb_func_start sub_080080DC
sub_080080DC: @ 0x080080DC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08008108 @ =0x09AF3790
	movs r1, #0xa
	bl sub_0800289C
	lsls r4, r4, #9
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	adds r0, r0, r4
	ldr r1, _0800810C @ =0x06017600
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008108: .4byte 0x09AF3790
_0800810C: .4byte 0x06017600

	thumb_func_start sub_08008110
sub_08008110: @ 0x08008110
	push {r4, r5, r6, r7, lr}
	ldr r0, _080081D8 @ =0x09AF3790
	movs r1, #0xe
	bl sub_0800289C
	ldr r1, _080081DC @ =0x0600D800
	movs r2, #0xc0
	lsls r2, r2, #5
	bl sub_08001A14
	ldr r0, _080081E0 @ =gUnknown_02016028
	ldr r1, _080081E4 @ =0x000035BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r7, #0x1a
	cmp r0, #0
	beq _08008138
	movs r7, #0x16
_08008138:
	movs r5, #0
	movs r4, #0
	ldr r0, _080081E8 @ =gScript
	ldr r1, _080081EC @ =0x00008299
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08008174
	adds r6, r0, #0
_0800814A:
	adds r0, r4, #0
	bl get_char_data
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08008168
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08008168
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08008168:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r6]
	cmp r4, r0
	blo _0800814A
_08008174:
	cmp r5, #0
	beq _0800817E
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800817E:
	adds r0, r7, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08008200
	ldr r0, _080081E0 @ =gUnknown_02016028
	ldr r1, _080081F0 @ =0x000121B9
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080081D2
	ldr r4, _080081D8 @ =0x09AF3790
	ldr r0, _080081F4 @ =gSave
	ldr r1, _080081F8 @ =0x0000081E
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0xf
	adds r0, r4, #0
	bl sub_0800289C
	movs r1, #0xd
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0800289C
	ldr r1, _080081FC @ =0x06014C00
	movs r2, #0xc0
	lsls r2, r2, #4
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0800289C
	movs r1, #0x1e
	movs r2, #0x20
	bl sub_08016F4C
_080081D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080081D8: .4byte 0x09AF3790
_080081DC: .4byte 0x0600D800
_080081E0: .4byte gUnknown_02016028
_080081E4: .4byte 0x000035BA
_080081E8: .4byte gScript
_080081EC: .4byte 0x00008299
_080081F0: .4byte 0x000121B9
_080081F4: .4byte gSave
_080081F8: .4byte 0x0000081E
_080081FC: .4byte 0x06014C00

	thumb_func_start sub_08008200
sub_08008200: @ 0x08008200
	push {r4, r5, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0800823C @ =0x09AF3790
	bl sub_0800289C
	adds r5, r0, #0
	ldr r4, _08008240 @ =gUnknown_02016078
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, #0
	bl sub_08001B18
	movs r0, #0xb1
	lsls r0, r0, #6
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800823C: .4byte 0x09AF3790
_08008240: .4byte gUnknown_02016078

	thumb_func_start sub_08008244
sub_08008244: @ 0x08008244
	push {r4, lr}
	ldr r4, _080082C4 @ =0x09AF3790
	adds r0, r4, #0
	movs r1, #0x26
	bl sub_0800289C
	ldr r1, _080082C8 @ =0x0600B000
	movs r2, #0xb0
	lsls r2, r2, #6
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x27
	bl sub_0800289C
	movs r1, #0xe
	movs r2, #0x20
	bl sub_08016F4C
	ldr r0, _080082CC @ =gUnknown_02016028
	ldr r1, _080082D0 @ =0x000035BA
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	bl sub_080082DC
	adds r0, r4, #0
	movs r1, #0x2a
	bl sub_0800289C
	ldr r1, _080082D4 @ =0x06014800
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x2b
	bl sub_0800289C
	movs r1, #0x1d
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0800289C
	ldr r1, _080082D8 @ =0x06014C00
	movs r2, #0xc0
	lsls r2, r2, #4
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0800289C
	movs r1, #0x1e
	movs r2, #0x20
	bl sub_08016F4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080082C4: .4byte 0x09AF3790
_080082C8: .4byte 0x0600B000
_080082CC: .4byte gUnknown_02016028
_080082D0: .4byte 0x000035BA
_080082D4: .4byte 0x06014800
_080082D8: .4byte 0x06014C00

	thumb_func_start sub_080082DC
sub_080082DC: @ 0x080082DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _08008394 @ =0x09AF3790
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	bl sub_0800289C
	adds r6, r0, #0
	ldr r4, _08008398 @ =gUnknown_02016078
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r0, #0
	subs r4, #0x50
	mov sl, r4
	ldr r7, _0800839C @ =0xFFFFFC00
	mov sb, r7
_08008316:
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x40
	str r1, [sp]
	movs r2, #0x40
	adds r2, r2, r5
	mov ip, r2
	adds r0, #1
	mov r8, r0
_08008328:
	lsls r0, r4, #1
	adds r3, r0, r5
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r3]
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r7, #0xc0
	lsls r7, r7, #1
	adds r1, r1, r7
	ldr r7, _080083A0 @ =0x000003FF
	adds r0, r7, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	adds r1, #0xe
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _08008328
	ldr r6, [sp]
	mov r5, ip
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _08008316
	ldr r0, _080083A4 @ =0x00002C90
	add r0, sl
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008394: .4byte 0x09AF3790
_08008398: .4byte gUnknown_02016078
_0800839C: .4byte 0xFFFFFC00
_080083A0: .4byte 0x000003FF
_080083A4: .4byte 0x00002C90

	thumb_func_start nullsub_4
nullsub_4: @ 0x080083A8
	bx lr
	.align 2, 0

	thumb_func_start nullsub_5
nullsub_5: @ 0x080083AC
	bx lr
	.align 2, 0

	thumb_func_start nullsub_61
nullsub_61: @ 0x080083B0
	bx lr
	.align 2, 0

	thumb_func_start nullsub_62
nullsub_62: @ 0x080083B4
	bx lr
	.align 2, 0

	thumb_func_start sub_080083B8
sub_080083B8: @ 0x080083B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	ldr r7, _08008414 @ =gScript
	ldr r1, _08008418 @ =0x0000829B
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08008434
	movs r5, #0xac
	movs r0, #0xac
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080083FA
	b _080086E8
_080083FA:
	movs r0, #0xac
	bl sub_08003928
	cmp r4, #0
	bne _08008420
	movs r0, #1
	bl sub_08003B58
	ldr r2, _0800841C @ =0x000067AE
	adds r0, r7, r2
	strh r5, [r0]
	b _080086E8
	.align 2, 0
_08008414: .4byte gScript
_08008418: .4byte 0x0000829B
_0800841C: .4byte 0x000067AE
_08008420:
	movs r0, #0
	bl sub_08003B58
	ldr r3, _08008430 @ =0x000067B0
	adds r0, r7, r3
	strh r5, [r0]
	b _080086E8
	.align 2, 0
_08008430: .4byte 0x000067B0
_08008434:
	ldr r0, _080084D8 @ =0x0000847A
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	cmp r0, r8
	bne _0800844A
	b _0800858C
_0800844A:
	ldr r3, _080084DC @ =0x000067AC
	adds r0, r7, r3
	ldrh r1, [r0]
	ldr r0, _080084E0 @ =0x0000012D
	cmp r1, r0
	beq _0800845C
	adds r0, #0x11
	cmp r1, r0
	bne _080084F8
_0800845C:
	movs r0, #0
	bl sub_08003D14
	ldr r1, _080084E4 @ =gSave
	lsls r2, r4, #1
	ldr r3, _080084E8 @ =0x00000482
	adds r1, r1, r3
	adds r2, r2, r1
	ldrb r5, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _0800847C
	adds r0, r5, #0
	bl sub_08003928
_0800847C:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bne _08008486
	movs r6, #0x64
_08008486:
	adds r0, r6, #0
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_08003C88
	ldr r1, _080084EC @ =0x000067AE
	adds r0, r7, r1
	strh r5, [r0]
	mov r2, sb
	ldrh r5, [r2]
	ldr r3, _080084F0 @ =0x0000847C
	adds r4, r7, r3
	ldrh r6, [r4]
	adds r0, r5, #0
	bl sub_08003928
	lsls r1, r6, #0x10
	asrs r0, r1, #0x10
	cmp r0, r8
	beq _080084C8
	lsrs r0, r1, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	bl sub_08003C88
_080084C8:
	ldr r0, _080084F4 @ =0x0000FFFF
	mov r1, sb
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4]
	b _080086E8
	.align 2, 0
_080084D8: .4byte 0x0000847A
_080084DC: .4byte 0x000067AC
_080084E0: .4byte 0x0000012D
_080084E4: .4byte gSave
_080084E8: .4byte 0x00000482
_080084EC: .4byte 0x000067AE
_080084F0: .4byte 0x0000847C
_080084F4: .4byte 0x0000FFFF
_080084F8:
	mov r2, sb
	ldrh r5, [r2]
	ldr r3, _0800852C @ =0x0000847C
	adds r0, r7, r3
	ldrh r6, [r0]
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	beq _08008560
	adds r0, r5, #0
	bl sub_08003928
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08008534
	movs r0, #1
	bl sub_08003B58
	ldr r1, _08008530 @ =0x000067AE
	adds r0, r7, r1
	b _0800853E
	.align 2, 0
_0800852C: .4byte 0x0000847C
_08008530: .4byte 0x000067AE
_08008534:
	movs r0, #0
	bl sub_08003B58
	ldr r2, _08008578 @ =0x000067B0
	adds r0, r7, r2
_0800853E:
	strh r5, [r0]
	lsls r2, r6, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08008560
	lsrs r4, r4, #0x10
	lsrs r0, r2, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08008560:
	ldr r1, _0800857C @ =gScript
	ldr r3, _08008580 @ =0x0000847A
	adds r2, r1, r3
	ldr r0, _08008584 @ =0x0000FFFF
	strh r0, [r2]
	ldr r0, _08008588 @ =0x0000847C
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080086E8
	.align 2, 0
_08008578: .4byte 0x000067B0
_0800857C: .4byte gScript
_08008580: .4byte 0x0000847A
_08008584: .4byte 0x0000FFFF
_08008588: .4byte 0x0000847C
_0800858C:
	movs r0, #0
	bl sub_08003D14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, _080085FC @ =gSave
	lsls r2, r5, #1
	ldr r3, _08008600 @ =0x00000482
	adds r0, r1, r3
	adds r0, r2, r0
	ldrh r3, [r0]
	ldrb r5, [r0]
	lsrs r3, r3, #8
	mov r8, r3
	ldr r0, _08008604 @ =0x00000582
	adds r1, r1, r0
	adds r2, r2, r1
	ldrh r2, [r2]
	str r2, [sp, #8]
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _08008608 @ =0x00008494
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08008610
	mov r2, sp
	ldr r3, _0800860C @ =0x00008496
	adds r0, r7, r3
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	b _08008616
	.align 2, 0
_080085FC: .4byte gSave
_08008600: .4byte 0x00000482
_08008604: .4byte 0x00000582
_08008608: .4byte 0x00008494
_0800860C: .4byte 0x00008496
_08008610:
	mov r0, sp
	strh r1, [r0]
	adds r0, #2
_08008616:
	strh r1, [r0]
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800863E
	cmp r5, #0
	bne _0800862E
	movs r0, #0
	bl sub_08003B58
	b _0800863E
_0800862E:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _0800863E
	adds r0, r5, #0
	bl sub_08003928
_0800863E:
	ldrh r0, [r7]
	cmp r0, #0
	bne _08008676
	mov r2, r8
	cmp r2, #0
	bne _08008652
	movs r0, #1
	bl sub_08003B58
	b _08008676
_08008652:
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	beq _08008664
	mov r0, r8
	bl sub_080038A4
	b _08008676
_08008664:
	mov r0, sb
	bl sub_08003D64
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008676
	mov r0, r8
	bl sub_080038A4
_08008676:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08008684
	movs r6, #0x64
_08008684:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _080086A8
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r1
	beq _080086A8
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_080086A8:
	ldrh r0, [r7]
	cmp r0, #0
	bne _080086D0
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080086D0
	lsrs r4, r4, #0x10
	ldr r0, [sp, #8]
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_080086D0:
	ldr r0, _080086F8 @ =gScript
	ldr r2, _080086FC @ =0x000067AE
	adds r1, r0, r2
	strh r5, [r1]
	ldr r3, _08008700 @ =0x000067B0
	adds r0, r0, r3
	mov r1, r8
	strh r1, [r0]
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
_080086E8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080086F8: .4byte gScript
_080086FC: .4byte 0x000067AE
_08008700: .4byte 0x000067B0

	thumb_func_start sub_08008704
sub_08008704: @ 0x08008704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0800877C @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #1
	bne _08008730
	ldr r0, _08008780 @ =gScript
	ldr r1, _08008784 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #5
	beq _0800881C
	cmp r0, #0x37
	beq _0800881C
_08008730:
	adds r0, r2, #0
	bl sub_0801B3A4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08008780 @ =gScript
	ldr r2, _08008788 @ =0x000067AE
	adds r1, r0, r2
	ldrh r5, [r1]
	ldr r1, _0800878C @ =0x000067B0
	adds r0, r0, r1
	ldrh r6, [r0]
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _08008790 @ =gSave
	lsls r4, r4, #1
	ldr r2, _08008794 @ =0x00000582
	adds r0, r0, r2
	adds r4, r4, r0
	ldrh r4, [r4]
	mov sb, r4
	cmp r5, #0
	bne _08008798
	movs r0, #0
	bl sub_08003B58
	b _0800879E
	.align 2, 0
_0800877C: .4byte gUnknown_02005080
_08008780: .4byte gScript
_08008784: .4byte 0x000067AC
_08008788: .4byte 0x000067AE
_0800878C: .4byte 0x000067B0
_08008790: .4byte gSave
_08008794: .4byte 0x00000582
_08008798:
	adds r0, r5, #0
	bl sub_080038A4
_0800879E:
	cmp r6, #0
	bne _080087C2
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _080087B2
	cmp r1, #1
	beq _080087BA
	b _080087CA
_080087B2:
	movs r0, #1
	bl sub_08003B58
	b _080087CA
_080087BA:
	movs r0, #0
	bl sub_08003B58
	b _080087CA
_080087C2:
	adds r0, r6, #0
	bl sub_080038A4
	lsls r4, r7, #0x10
_080087CA:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _080087DC
	movs r2, #0x64
	mov r8, r2
_080087DC:
	asrs r0, r4, #0x10
	cmp r0, r5
	beq _080087F6
	lsrs r4, r4, #0x10
	mov r0, r8
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_080087F6:
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	cmp r0, r5
	beq _08008814
	lsrs r4, r4, #0x10
	mov r0, sb
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08008814:
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
_0800881C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800882C
sub_0800882C: @ 0x0800882C
	push {r4, r5, r6, lr}
	movs r0, #0
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08008860 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #2
	bne _08008868
	movs r6, #1
	cmp r4, #0x64
	bne _08008854
	cmp r5, #0x64
	beq _0800886A
_08008854:
	ldr r0, _08008864 @ =gUnknown_02004100
	strb r6, [r0, #2]
	bl sub_08003EA0
	b _0800886A
	.align 2, 0
_08008860: .4byte gUnknown_020051E4
_08008864: .4byte gUnknown_02004100
_08008868:
	movs r6, #2
_0800886A:
	cmp r4, #0x64
	bne _08008878
	movs r0, #0
	adds r1, r6, #0
	bl sub_08003AB8
	b _08008884
_08008878:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_08027B84
_08008884:
	cmp r5, #0x64
	bne _08008892
	movs r0, #1
	adds r1, r6, #0
	bl sub_08003AB8
	b _0800889E
_08008892:
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_08027B84
_0800889E:
	movs r0, #8
	movs r1, #4
	bl sub_08003B30
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080088AC
sub_080088AC: @ 0x080088AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08009C4C
	ldr r2, _0800890C @ =0x00000FFF
	adds r1, r2, #0
	ands r4, r1
	ldrh r2, [r0]
	ldr r1, _08008910 @ =0xFFFFF000
	ands r1, r2
	orrs r1, r4
	strh r1, [r0]
	lsls r5, r5, #4
	ldrb r2, [r0, #1]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r5
	strb r1, [r0, #1]
	ldrb r2, [r0, #2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #2]
	ldrh r2, [r0, #2]
	ldr r1, _08008914 @ =0xFFFFFC03
	ands r1, r2
	strh r1, [r0, #2]
	ldr r1, _08008918 @ =gUnknown_02016028
	ldr r0, _0800891C @ =0x00011C8B
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800890C: .4byte 0x00000FFF
_08008910: .4byte 0xFFFFF000
_08008914: .4byte 0xFFFFFC03
_08008918: .4byte gUnknown_02016028
_0800891C: .4byte 0x00011C8B

	thumb_func_start sub_08008920
sub_08008920: @ 0x08008920
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0800893C @ =gUnknown_02016028
	ldr r1, _08008940 @ =0x0000566C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08008944
	bl sub_080089E0
	b _080089D8
	.align 2, 0
_0800893C: .4byte gUnknown_02016028
_08008940: .4byte 0x0000566C
_08008944:
	ldr r0, _080089B8 @ =gScript
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08008950
	cmp r0, #3
	bge _080089D8
_08008950:
	mov r2, sp
	movs r3, #0
	ldr r0, _080089BC @ =0x00011C92
	adds r6, r4, r0
	ldrb r1, [r6]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #4
	bne _08008964
	movs r3, #1
_08008964:
	strh r3, [r2]
	ldr r1, _080089C0 @ =0x000121B6
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0800897C
	ldr r1, _080089C4 @ =0x00005778
	adds r0, r4, r1
	bl sub_08008F0C
_0800897C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800898E
	ldr r1, _080089C4 @ =0x00005778
	adds r0, r4, r1
	movs r1, #2
	bl sub_0800A0A4
_0800898E:
	ldr r1, _080089C8 @ =0x00011C8B
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080089A8
	ldr r0, _080089C4 @ =0x00005778
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080089F0
	adds r0, r4, #0
	bl sub_08008BAC
_080089A8:
	ldrb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080089CC
	bl sub_0800A07C
	b _080089D8
	.align 2, 0
_080089B8: .4byte gScript
_080089BC: .4byte 0x00011C92
_080089C0: .4byte 0x000121B6
_080089C4: .4byte 0x00005778
_080089C8: .4byte 0x00011C8B
_080089CC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080089D8
	bl sub_0800A090
_080089D8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080089E0
sub_080089E0: @ 0x080089E0
	push {lr}
	ldr r0, _080089EC @ =gUnknown_0201B7A0
	bl sub_08008F0C
	pop {r0}
	bx r0
	.align 2, 0
_080089EC: .4byte gUnknown_0201B7A0

	thumb_func_start sub_080089F0
sub_080089F0: @ 0x080089F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _08008B88 @ =0x0000322C
	adds r0, r7, r1
	movs r1, #0
	str r1, [r0]
	adds r4, r7, #0
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r2, r2, r4
	mov r8, r2
	ldr r3, _08008B8C @ =0x0000C513
	adds r0, r4, r3
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _08008A1E
	b _08008B76
_08008A1E:
	add r0, sp, #8
	mov sb, r0
	movs r1, #0x98
	lsls r1, r1, #2
	adds r6, r4, r1
_08008A28:
	ldr r0, [r4]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08008A32
	b _08008B62
_08008A32:
	ldr r2, _08008B88 @ =0x0000322C
	adds r0, r7, r2
	ldr r0, [r0]
	adds r0, #4
	add r5, sp, #4
	cmp r4, r0
	beq _08008A4A
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08008ECC
_08008A4A:
	ldr r0, [r4]
	lsls r0, r0, #0xe
	mov r3, r8
	adds r3, #0xc8
	str r3, [sp, #0xc]
	cmp r0, #0
	blt _08008B06
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08008A62
	adds r0, #7
_08008A62:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _08008B90 @ =0xFFFF0000
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08008A7A
	adds r0, #7
_08008A7A:
	asrs r0, r0, #3
	mov r3, sb
	strh r0, [r3, #2]
	ldrb r0, [r6, #2]
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldrb r1, [r6]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	mov r1, sb
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_08009C84
	mov r2, r8
	str r0, [r2]
	mov r3, sb
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	bl sub_08009CD8
	mov r1, r8
	str r0, [r1, #4]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #5
	adds r2, r2, r0
	ldr r0, _08008B94 @ =0x000003FF
	ands r2, r0
	lsls r2, r2, #7
	ldr r0, [r6]
	ldr r1, _08008B98 @ =0xFFFE007F
	ands r0, r1
	orrs r0, r2
	str r0, [r6]
	ldrh r0, [r5]
	movs r2, #7
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #8
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r1, [r4]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	mov r0, r8
	bl sub_08008C28
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08008B06:
	ldrb r0, [r4, #2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	bl sub_08009DDC
	ldrh r5, [r5]
	adds r0, r0, r5
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, _08008B9C @ =0x0000322A
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	ldr r2, _08008BA0 @ =0x00003228
	adds r1, r7, r2
	strh r0, [r1]
	mov r0, r8
	adds r0, #8
	ldr r3, _08008BA4 @ =0x00003168
	adds r1, r7, r3
	movs r2, #0x60
	bl sub_08001B18
	mov r0, r8
	adds r0, #0x68
	ldr r2, _08008BA8 @ =0x000031C8
	adds r1, r7, r2
	movs r2, #0x60
	bl sub_08001B18
	adds r6, #0xcc
	movs r3, #0xcc
	add r8, r3
	ldr r1, _08008B88 @ =0x0000322C
	adds r0, r7, r1
	str r4, [r0]
_08008B62:
	adds r4, #4
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r7, r2
	cmp r4, r0
	bhs _08008B76
	mov r3, sl
	cmp r3, #0
	beq _08008B76
	b _08008A28
_08008B76:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B88: .4byte 0x0000322C
_08008B8C: .4byte 0x0000C513
_08008B90: .4byte 0xFFFF0000
_08008B94: .4byte 0x000003FF
_08008B98: .4byte 0xFFFE007F
_08008B9C: .4byte 0x0000322A
_08008BA0: .4byte 0x00003228
_08008BA4: .4byte 0x00003168
_08008BA8: .4byte 0x000031C8

	thumb_func_start sub_08008BAC
sub_08008BAC: @ 0x08008BAC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r4, r6, r0
	movs r5, #0
	ldr r7, _08008C24 @ =0x0000C513
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08008C1E
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r6, r0
_08008BC8:
	ldr r2, [r4, #4]
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	strh r0, [r2]
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #1
	strh r0, [r2, #2]
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #2
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x20
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x21
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x22
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0xcc
	adds r4, #0xcc
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r5, r0
	blo _08008BC8
_08008C1E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008C24: .4byte 0x0000C513

	thumb_func_start sub_08008C28
sub_08008C28: @ 0x08008C28
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldr r0, _08008C4C @ =gUnknown_02016028
	ldr r4, _08008C50 @ =0x00011C92
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08008C6A
	cmp r0, #1
	bgt _08008C54
	cmp r0, #0
	beq _08008C5A
	b _08008C6A
	.align 2, 0
_08008C4C: .4byte gUnknown_02016028
_08008C50: .4byte 0x00011C92
_08008C54:
	cmp r0, #2
	beq _08008C62
	b _08008C6A
_08008C5A:
	adds r0, r2, #0
	bl sub_08008C70
	b _08008C6A
_08008C62:
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08008D3C
_08008C6A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08008C70
sub_08008C70: @ 0x08008C70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	adds r4, r0, #0
	movs r0, #0x10
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	add r7, sp, #0x18
_08008C8A:
	mov r1, sp
	adds r2, r1, r3
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #8
	mov r5, sp
	adds r2, r5, r0
	ldrb r0, [r1, #1]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _08008C8A
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r7]
	ldrb r0, [r1, #1]
	strb r0, [r7, #8]
	adds r5, r6, #0
	adds r5, #0xc8
	ldrb r2, [r5]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002104
	ldr r0, _08008D10 @ =gUnknown_0201E908
	adds r4, r6, #0
	adds r4, #8
	adds r6, #0x68
	ldr r3, [r5]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x16
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08008E08
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1c
	cmp r2, #0xf
	beq _08008D14
	adds r0, r4, #0
	mov r1, sp
	movs r3, #3
	bl sub_08001F50
	ldrb r2, [r5]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #3
	bl sub_08001F50
	b _08008D30
	.align 2, 0
_08008D10: .4byte gUnknown_0201E908
_08008D14:
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0xf
	movs r3, #3
	bl sub_08001EA4
	ldrb r2, [r5]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #3
	bl sub_08001EA4
_08008D30:
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_63
nullsub_63: @ 0x08008D38
	bx lr
	.align 2, 0

	thumb_func_start sub_08008D3C
sub_08008D3C: @ 0x08008D3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	adds r7, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08009D6C
	ldr r1, [r0]
	str r1, [sp]
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	ldr r1, [r0, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	add r1, sp, #0x18
	mov r8, r1
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x24]
	adds r6, r7, #0
	adds r6, #0xc8
	ldrb r2, [r6]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	mov r1, r8
	bl sub_08002104
	ldr r0, _08008DB4 @ =gUnknown_0201E908
	adds r5, r7, #0
	adds r5, #8
	adds r7, #0x68
	ldr r3, [r6]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x16
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08008E08
	cmp r4, #0x3e
	bne _08008DB8
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0xb
	movs r3, #3
	bl sub_08001F50
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0xb
	b _08008DD6
	.align 2, 0
_08008DB4: .4byte gUnknown_0201E908
_08008DB8:
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1c
	cmp r2, #0xf
	beq _08008DDE
	adds r0, r5, #0
	mov r1, sp
	movs r3, #3
	bl sub_08001F50
	ldrb r2, [r6]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	mov r1, r8
_08008DD6:
	movs r3, #3
	bl sub_08001F50
	b _08008DFA
_08008DDE:
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0xf
	movs r3, #3
	bl sub_08001EA4
	ldrb r2, [r6]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	mov r1, r8
	movs r3, #3
	bl sub_08001EA4
_08008DFA:
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008E08
sub_08008E08: @ 0x08008E08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov sb, r6
	ldr r4, _08008E74 @ =gUnknown_02016028
	ldr r1, _08008E78 @ =0x00011D16
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08008E44
	ldr r0, _08008E7C @ =0x00011CA4
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0x60
	bl sub_08001B18
_08008E44:
	adds r0, r5, #0
	adds r0, #0xc2
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008EC0
	adds r1, r5, #0
	adds r1, #0xc0
	ldrh r0, [r1]
	cmp r0, r6
	bne _08008E80
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r5, #0
	adds r0, #0x60
	mov r1, r8
	movs r2, #0x60
	bl sub_08001B18
	b _08008EC0
	.align 2, 0
_08008E74: .4byte gUnknown_02016028
_08008E78: .4byte 0x00011D16
_08008E7C: .4byte 0x00011CA4
_08008E80:
	ldrh r1, [r1]
	adds r0, r1, #1
	cmp r0, r6
	bne _08008EA2
	adds r0, r5, #0
	adds r0, #0x20
	adds r1, r7, #0
	movs r2, #0x40
	bl sub_08001B18
	adds r0, r5, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0x40
	bl sub_08001B18
	b _08008EC0
_08008EA2:
	adds r0, r1, #2
	cmp r0, sb
	bne _08008EC0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r7, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r5, #0
	adds r0, #0xa0
	mov r1, r8
	movs r2, #0x20
	bl sub_08001B18
_08008EC0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008ECC
sub_08008ECC: @ 0x08008ECC
	push {r4, r5, lr}
	adds r4, r2, #0
	subs r5, r1, r0
	adds r0, r5, #0
	movs r1, #4
	bl sub_08002FC0
	adds r5, r0, #0
	movs r1, #0x22
	bl sub_08002FD4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r4]
	adds r0, r5, #0
	movs r1, #0x22
	bl sub_08002FC0
	ldr r1, _08008F04 @ =gUnknown_02016028
	ldr r2, _08008F08 @ =0x00011C89
	adds r1, r1, r2
	ldrb r1, [r1]
	muls r0, r1, r0
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F04: .4byte gUnknown_02016028
_08008F08: .4byte 0x00011C89

	thumb_func_start sub_08008F0C
sub_08008F0C: @ 0x08008F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r2, _08008F70 @ =0x0000C515
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r0, _08008F74 @ =0x0000C517
	adds r2, r3, r0
	movs r0, #0x28
	strb r0, [r2]
	ldr r0, _08008F78 @ =gUnknown_02016028
	ldr r1, _08008F7C @ =0x0000566C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008F4C
	ldr r3, [sp, #8]
	ldr r1, _08008F80 @ =0x0000C51A
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08008F50
_08008F4C:
	movs r0, #0x50
	strb r0, [r2]
_08008F50:
	ldr r2, [sp, #8]
	ldr r3, _08008F84 @ =0x0000C204
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r1, [r0, #4]
	mov sb, r1
	ldr r3, _08008F88 @ =0x00009610
	adds r7, r2, r3
	ldr r1, _08008F8C @ =0x06015800
	str r1, [sp, #0xc]
	movs r2, #0xb0
	lsls r2, r2, #2
	str r2, [sp, #0x1c]
	movs r4, #0
	b _08009236
	.align 2, 0
_08008F70: .4byte 0x0000C515
_08008F74: .4byte 0x0000C517
_08008F78: .4byte gUnknown_02016028
_08008F7C: .4byte 0x0000566C
_08008F80: .4byte 0x0000C51A
_08008F84: .4byte 0x0000C204
_08008F88: .4byte 0x00009610
_08008F8C: .4byte 0x06015800
_08008F90:
	mov r3, sb
	ldrb r1, [r3, #0xe]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08008FA6
	ldr r0, [sp, #8]
	movs r1, #1
	bl sub_0800A0A4
	b _08008FB6
_08008FA6:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008FB6
	ldr r0, [sp, #8]
	movs r1, #2
	bl sub_0800A0A4
_08008FB6:
	mov r0, sb
	ldrh r2, [r0, #8]
	ldr r1, _08009044 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sb
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #0x10
	ldr r3, _08009048 @ =0x0000FFFF
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldr r0, [r2]
	str r0, [sp]
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r4, #1
	str r4, [sp, #0x2c]
	mov r1, sb
	adds r1, #0x10
	str r1, [sp, #0x30]
	ldr r2, [sp, #0x14]
	cmp r0, r2
	blo _08008FFA
	b _08009210
_08008FFA:
	adds r3, r7, #0
	adds r3, #0x88
	str r3, [sp, #0x34]
	adds r0, r7, #0
	adds r0, #0x86
	str r0, [sp, #0x38]
	adds r1, r7, #0
	adds r1, #0x85
	str r1, [sp, #0x3c]
	adds r5, r7, #0
	adds r5, #0x84
	adds r2, r7, #0
	adds r2, #0x87
	str r2, [sp, #0x40]
	ldr r0, _0800904C @ =0x0000C515
	ldr r3, [sp, #8]
	adds r0, r3, r0
	str r0, [sp, #0x20]
_0800901E:
	ldr r0, [sp]
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _08009050 @ =0x0000FEFF
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bls _08009054
	ldrb r0, [r5, #3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #3]
	ldr r0, [sp, #8]
	mov r1, sb
	mov r2, sp
	add r3, sp, #4
	bl sub_08009B98
	b _080091F6
	.align 2, 0
_08009044: .4byte 0xFFFF0000
_08009048: .4byte 0x0000FFFF
_0800904C: .4byte 0x0000C515
_08009050: .4byte 0x0000FEFF
_08009054:
	ldr r3, _0800910C @ =gUnknown_020281DA
	ldrh r2, [r3]
	lsls r2, r2, #3
	ldr r0, _08009110 @ =gUnknown_03003CF0
	adds r2, r2, r0
	add r4, sp, #4
	ldrh r1, [r4, #2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r4]
	ldr r3, _08009114 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r1, r0, #0
	ldr r0, [sp, #0x1c]
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_08032DF4
	ldr r1, _08009118 @ =0x00000FFF
	adds r0, r1, #0
	ldr r2, [sp, #0x18]
	ands r2, r0
	ldrh r0, [r5]
	ldr r3, _0800911C @ =0xFFFFF000
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	mov r0, sb
	ldrb r1, [r0, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r0, [r5, #3]
	movs r2, #9
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #3]
	ldr r3, _08009120 @ =0x000003FF
	adds r0, r3, #0
	ldr r2, [sp, #0x1c]
	ands r2, r0
	ldrh r0, [r5, #2]
	ldr r3, _08009124 @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #2]
	ldrh r0, [r5]
	ldrh r2, [r5, #4]
	ldr r1, _08009128 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08009128 @ =0x0000FFFF
	ands r0, r2
	ldr r6, [sp, #0x40]
	mov sl, r5
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x24]
	ldr r3, [sp, #0x38]
	str r3, [sp, #0x28]
	ldr r4, [sp, #0x34]
	movs r2, #0x8a
	adds r2, r2, r7
	mov r8, r2
	cmp r1, r0
	bne _0800912C
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r3, [sp, #0x1c]
	cmp r3, r0
	bne _0800912C
	ldrb r0, [r5, #3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #3]
	b _08009156
	.align 2, 0
_0800910C: .4byte gUnknown_020281DA
_08009110: .4byte gUnknown_03003CF0
_08009114: .4byte 0x000001FF
_08009118: .4byte 0x00000FFF
_0800911C: .4byte 0xFFFFF000
_08009120: .4byte 0x000003FF
_08009124: .4byte 0xFFFFFC00
_08009128: .4byte 0x0000FFFF
_0800912C:
	adds r0, r7, #4
	movs r1, #0x40
	bl sub_08001ACC
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0x40
	bl sub_08001ACC
	ldr r0, [sp, #0xc]
	str r0, [r7]
	ldrb r0, [r6]
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	bl sub_08009264
_08009156:
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrh r0, [r4]
	ldr r3, _08009250 @ =0xFFFFF000
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	mov r3, r8
	ldrh r0, [r3]
	ldr r3, _08009254 @ =0xFFFFFC00
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r3, [sp, #0x34]
	adds r3, #0x8c
	str r3, [sp, #0x34]
	ldr r0, [sp, #0x38]
	adds r0, #0x8c
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	adds r1, #0x8c
	str r1, [sp, #0x3c]
	adds r5, #0x8c
	ldr r2, [sp, #0x40]
	adds r2, #0x8c
	str r2, [sp, #0x40]
	adds r7, #0x8c
	ldr r0, [sp, #0x1c]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r3, [sp, #0xc]
	adds r3, #0x80
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_08009DDC
	mov r1, sp
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	add r1, sp, #4
	strh r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r0, [r2]
	cmp r0, #0x28
	bne _080091F6
	ldr r3, _08009258 @ =gUnknown_0201B694
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080091F6
	movs r0, #0xb0
	lsls r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, _0800925C @ =0x06012C00
	str r1, [sp, #0xc]
_080091F6:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #2
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	cmp r2, r3
	bhs _08009210
	b _0800901E
_08009210:
	mov r0, sb
	ldrb r1, [r0, #0xe]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08009224
	ldr r0, [sp, #8]
	movs r1, #0
	bl sub_0800A0A4
_08009224:
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	ldr r2, [sp, #0x30]
	mov sb, r2
	ldr r3, [sp, #8]
	ldr r1, _08009260 @ =0x0000C204
	adds r0, r3, r1
	ldr r0, [r0]
_08009236:
	ldrb r0, [r0, #9]
	cmp r4, r0
	bhs _0800923E
	b _08008F90
_0800923E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009250: .4byte 0xFFFFF000
_08009254: .4byte 0xFFFFFC00
_08009258: .4byte gUnknown_0201B694
_0800925C: .4byte 0x06012C00
_08009260: .4byte 0x0000C204

	thumb_func_start sub_08009264
sub_08009264: @ 0x08009264
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08009288 @ =gUnknown_02016028
	ldr r3, _0800928C @ =0x00011C92
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _0800929E
	cmp r0, #1
	bgt _08009290
	cmp r0, #0
	beq _08009296
	b _080092AC
	.align 2, 0
_08009288: .4byte gUnknown_02016028
_0800928C: .4byte 0x00011C92
_08009290:
	cmp r0, #2
	beq _080092A6
	b _080092AC
_08009296:
	adds r0, r2, #0
	bl sub_080092B0
	b _080092AC
_0800929E:
	adds r0, r2, #0
	bl sub_0800932C
	b _080092AC
_080092A6:
	adds r0, r2, #0
	bl sub_08009394
_080092AC:
	pop {r0}
	bx r0

	thumb_func_start sub_080092B0
sub_080092B0: @ 0x080092B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	adds r4, r0, #0
	movs r0, #0x10
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	add r5, sp, #0x18
_080092CA:
	mov r1, sp
	adds r2, r1, r3
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #8
	mov r7, sp
	adds r2, r7, r0
	ldrb r0, [r1, #1]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _080092CA
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r5]
	ldrb r0, [r1, #1]
	strb r0, [r5, #8]
	adds r0, r6, #4
	adds r4, r6, #0
	adds r4, #0x85
	ldrb r2, [r4]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r0, r6, #0
	adds r0, #0x44
	ldrb r2, [r4]
	lsrs r2, r2, #4
	adds r1, r5, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800932C
sub_0800932C: @ 0x0800932C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	adds r3, r0, #0
	movs r2, #0
	add r6, sp, #0x18
	movs r4, #0
_08009342:
	mov r0, sp
	adds r1, r0, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #8
	add r0, sp
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _08009342
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	adds r0, r5, #4
	adds r4, r5, #0
	adds r4, #0x85
	ldrb r2, [r4]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r0, r5, #0
	adds r0, #0x44
	ldrb r2, [r4]
	lsrs r2, r2, #4
	adds r1, r6, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009394
sub_08009394: @ 0x08009394
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	ldr r1, [r0]
	str r1, [sp]
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	ldr r1, [r0, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	add r5, sp, #0x18
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x24]
	adds r0, r4, #4
	adds r6, r4, #0
	adds r6, #0x85
	ldrb r2, [r6]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r4, #0x44
	ldrb r2, [r6]
	lsrs r2, r2, #4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080093F0
sub_080093F0: @ 0x080093F0
	push {r4, lr}
	ldr r0, _08009404 @ =gScript
	ldrb r0, [r0]
	cmp r0, #4
	beq _0800941C
	cmp r0, #4
	bgt _08009408
	cmp r0, #3
	beq _0800940E
	b _0800942E
	.align 2, 0
_08009404: .4byte gScript
_08009408:
	cmp r0, #5
	beq _08009428
	b _0800942E
_0800940E:
	ldr r0, _08009418 @ =gUnknown_0201B7A0
	bl sub_0800946C
	b _0800942E
	.align 2, 0
_08009418: .4byte gUnknown_0201B7A0
_0800941C:
	ldr r0, _08009424 @ =gUnknown_0201B7A0
	bl sub_08009568
	b _0800942E
	.align 2, 0
_08009424: .4byte gUnknown_0201B7A0
_08009428:
	ldr r0, _08009458 @ =gUnknown_0201B7A0
	bl sub_080096EC
_0800942E:
	ldr r4, _0800945C @ =gUnknown_02016028
	ldr r1, _08009460 @ =0x00011C8C
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r2, _08009464 @ =0x00011C8B
	adds r1, r4, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08009452
	ldr r0, _08009468 @ =0x00005778
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08009828
	adds r0, r4, #0
	bl sub_08009A48
_08009452:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009458: .4byte gUnknown_0201B7A0
_0800945C: .4byte gUnknown_02016028
_08009460: .4byte 0x00011C8C
_08009464: .4byte 0x00011C8B
_08009468: .4byte 0x00005778

	thumb_func_start sub_0800946C
sub_0800946C: @ 0x0800946C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _080094E8 @ =0x0000C516
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009550
	ldr r2, _080094EC @ =0x0000C1E8
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r5, [r0, #4]
	ldrh r0, [r5, #8]
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	ldrh r0, [r4]
	movs r1, #0
	bl sub_08009C4C
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	movs r3, #0xc
	ldrsh r1, [r5, r3]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	mov sb, r4
	cmp r6, r8
	bhs _08009550
	ldr r0, _080094F0 @ =0xFFFFF000
	adds r4, r0, #0
_080094B8:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	adds r3, r0, #0
	ldr r0, _080094F4 @ =0x0000FEFF
	cmp r3, r0
	bls _080094F8
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ands r0, r4
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	mov r1, sb
	str r1, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08009AF4
	b _08009540
	.align 2, 0
_080094E8: .4byte 0x0000C516
_080094EC: .4byte 0x0000C1E8
_080094F0: .4byte 0xFFFFF000
_080094F4: .4byte 0x0000FEFF
_080094F8:
	ldr r2, [sp, #4]
	ldr r0, [r2]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _0800950C
	ldr r0, _08009560 @ =0x0000C514
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800950C:
	ldr r1, _08009564 @ =0x00000FFF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2]
	ands r0, r4
	orrs r0, r3
	strh r0, [r2]
	ldr r3, [sp, #4]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
_08009540:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	cmp r6, r8
	blo _080094B8
_08009550:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009560: .4byte 0x0000C514
_08009564: .4byte 0x00000FFF

	thumb_func_start sub_08009568
sub_08009568: @ 0x08009568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	ldr r1, _080095FC @ =0x0000C1E8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0]
	movs r5, #0
	ldrb r0, [r0, #9]
	cmp r5, r0
	blo _08009588
	b _080096D2
_08009588:
	add r2, sp, #0xc
	mov sl, r2
_0800958C:
	lsls r0, r5, #0x10
	ldrh r1, [r4, #8]
	orrs r1, r0
	str r1, [sp, #0xc]
	mov r3, sl
	ldrh r0, [r3]
	lsrs r1, r1, #0x10
	bl sub_08009C68
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r7, #0xc
	ldrsh r1, [r4, r7]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r6, #0
	adds r5, #1
	str r5, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x10
	str r0, [sp, #0x14]
	cmp r6, sb
	bhs _080096BA
	ldr r1, [sp, #0x18]
	ldr r2, _08009600 @ =0x0000C514
	adds r5, r1, r2
	ldr r3, _08009604 @ =0xFFFFF000
	mov r8, r3
_080095CC:
	ldr r0, [sp, #8]
	ldrh r2, [r0]
	adds r3, r2, #0
	ldr r0, _08009608 @ =0x0000FEFF
	cmp r2, r0
	bls _0800960C
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	mov r7, r8
	ands r0, r7
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	mov r0, sl
	str r0, [sp]
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08009AF4
	b _080096AA
	.align 2, 0
_080095FC: .4byte 0x0000C1E8
_08009600: .4byte 0x0000C514
_08009604: .4byte 0xFFFFF000
_08009608: .4byte 0x0000FEFF
_0800960C:
	movs r0, #0xfe
	lsls r0, r0, #4
	cmp r2, r0
	bne _08009664
	ldr r1, [sp, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08009624
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08009624:
	ldrh r0, [r1]
	mov r3, r8
	ands r0, r3
	orrs r0, r2
	strh r0, [r1]
	ldr r3, [sp, #4]
	ldr r0, [sp, #8]
	ldrb r2, [r0, #2]
	lsls r2, r2, #2
	ldrh r0, [r3, #2]
	ldr r7, _08009660 @ =0xFFFFFC03
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	b _080096AA
	.align 2, 0
_08009660: .4byte 0xFFFFFC03
_08009664:
	ldr r1, [sp, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08009674
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08009674:
	ldr r7, _080096E4 @ =0x00000FFF
	adds r0, r7, #0
	ands r3, r0
	ldrh r0, [r1]
	mov r2, r8
	ands r0, r2
	orrs r0, r3
	strh r0, [r1]
	ldr r3, [sp, #4]
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
_080096AA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	cmp r6, sb
	blo _080095CC
_080096BA:
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, _080096E8 @ =0x0000C1E8
	adds r0, r1, r2
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r5, r0
	bhs _080096D2
	b _0800958C
_080096D2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080096E4: .4byte 0x00000FFF
_080096E8: .4byte 0x0000C1E8

	thumb_func_start sub_080096EC
sub_080096EC: @ 0x080096EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r1, _0800978C @ =0x0000C1E8
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r4, [r0]
	movs r7, #0
	ldrb r0, [r0, #9]
	cmp r7, r0
	blo _0800970C
	b _0800980C
_0800970C:
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x10]
_08009712:
	ldrh r2, [r4, #8]
	ldr r1, _08009790 @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0xa]
	lsls r2, r2, #0x10
	ldr r1, _08009794 @ =0x0000FFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	lsrs r1, r1, #0x10
	bl sub_08009C68
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r5, #0
	adds r7, #1
	mov sb, r7
	movs r3, #0x10
	adds r3, r3, r4
	mov sl, r3
	cmp r5, r8
	bhs _080097F8
	ldr r0, _08009798 @ =0xFFFFF000
	adds r7, r0, #0
_0800975C:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	adds r3, r0, #0
	ldr r0, _0800979C @ =0x0000FEFF
	cmp r3, r0
	bls _080097A0
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ands r0, r7
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, [sp, #0x10]
	str r1, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08009AF4
	b _080097E8
	.align 2, 0
_0800978C: .4byte 0x0000C1E8
_08009790: .4byte 0xFFFF0000
_08009794: .4byte 0x0000FFFF
_08009798: .4byte 0xFFFFF000
_0800979C: .4byte 0x0000FEFF
_080097A0:
	ldr r2, [sp, #4]
	ldr r0, [r2]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _080097B4
	ldr r0, _0800981C @ =0x0000C514
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080097B4:
	ldr r1, _08009820 @ =0x00000FFF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2]
	ands r0, r7
	orrs r0, r3
	strh r0, [r2]
	ldr r3, [sp, #4]
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
_080097E8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	cmp r5, r8
	blo _0800975C
_080097F8:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r4, sl
	ldr r2, _08009824 @ =0x0000C1E8
	adds r0, r6, r2
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r7, r0
	blo _08009712
_0800980C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800981C: .4byte 0x0000C514
_08009820: .4byte 0x00000FFF
_08009824: .4byte 0x0000C1E8

	thumb_func_start sub_08009828
sub_08009828: @ 0x08009828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	ldr r0, _08009854 @ =0x0000322C
	add r0, r8
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009858 @ =gScript
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08009864
	cmp r0, #4
	blt _08009864
	ldr r5, _0800985C @ =0x00003230
	add r5, r8
	ldr r7, _08009860 @ =0x00003670
	add r7, r8
	b _0800986C
	.align 2, 0
_08009854: .4byte 0x0000322C
_08009858: .4byte gScript
_0800985C: .4byte 0x00003230
_08009860: .4byte 0x00003670
_08009864:
	mov r5, r8
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r7, r5, r0
_0800986C:
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, _080098CC @ =0x0000C513
	add r0, r8
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _0800987E
	b _08009A10
_0800987E:
	mov sb, sp
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x14]
	adds r6, r7, #0
	adds r6, #0xc8
_0800988A:
	ldr r0, [r5]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x14
	cmp r1, #0
	bne _08009896
	b _08009A00
_08009896:
	movs r0, #0xfe
	lsls r0, r0, #4
	cmp r1, r0
	bne _080098DC
	ldrh r0, [r5]
	ldr r2, _080098D0 @ =0xFFFFF000
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	ldr r1, _080098D4 @ =0x0000C518
	add r1, r8
	movs r2, #0
	strh r0, [r1]
	adds r6, #0xcc
	adds r7, #0xcc
	ldr r0, _080098D8 @ =0x0000322C
	add r0, r8
	str r2, [r0]
	b _08009A08
	.align 2, 0
_080098CC: .4byte 0x0000C513
_080098D0: .4byte 0xFFFFF000
_080098D4: .4byte 0x0000C518
_080098D8: .4byte 0x0000322C
_080098DC:
	ldr r3, _08009A20 @ =0x0000322C
	add r3, r8
	str r3, [sp, #0x10]
	ldr r0, [r3]
	adds r0, #4
	cmp r5, r0
	beq _08009904
	ldr r0, [sp, #8]
	adds r1, r5, #0
	mov r2, sp
	bl sub_08008ECC
	ldr r0, _08009A24 @ =0x0000C518
	add r0, r8
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
_08009904:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08009910
	adds r0, #7
_08009910:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _08009A28 @ =0xFFFF0000
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0800992A
	adds r0, #7
_0800992A:
	asrs r0, r0, #3
	ldr r1, [sp, #0x14]
	strh r0, [r1, #2]
	ldr r2, _08009A2C @ =gUnknown_02016028
	ldr r3, _08009A30 @ =0x000053B0
	adds r0, r2, r3
	ldr r4, [r0]
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #5
	ldr r2, [sp, #0x14]
	movs r3, #2
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	adds r4, r4, r1
	ldr r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldrb r1, [r6]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	str r4, [r7]
	ldr r0, [sp, #0x14]
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	ldr r0, _08009A2C @ =gUnknown_02016028
	adds r0, #0x50
	movs r1, #0
	bl sub_08001378
	str r0, [r7, #4]
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x16
	lsls r4, r4, #7
	ldr r0, [r6]
	ldr r1, _08009A34 @ =0xFFFE007F
	ands r0, r1
	orrs r0, r4
	str r0, [r6]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #7
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #8
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	adds r0, r7, #0
	bl sub_08008C28
	ldr r0, [r5]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	bl sub_08009DDC
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08009A38 @ =0x0000322A
	add r2, r8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	ldr r1, _08009A3C @ =0x00003228
	add r1, r8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08009A40 @ =0x00003168
	add r1, r8
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r7, #0
	adds r0, #0x68
	ldr r1, _08009A44 @ =0x000031C8
	add r1, r8
	movs r2, #0x60
	bl sub_08001B18
	adds r6, #0xcc
	adds r7, #0xcc
	ldr r3, [sp, #0x10]
	str r5, [r3]
_08009A00:
	adds r5, #4
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bhs _08009A10
_08009A08:
	mov r1, sl
	cmp r1, #0
	beq _08009A10
	b _0800988A
_08009A10:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009A20: .4byte 0x0000322C
_08009A24: .4byte 0x0000C518
_08009A28: .4byte 0xFFFF0000
_08009A2C: .4byte gUnknown_02016028
_08009A30: .4byte 0x000053B0
_08009A34: .4byte 0xFFFE007F
_08009A38: .4byte 0x0000322A
_08009A3C: .4byte 0x00003228
_08009A40: .4byte 0x00003168
_08009A44: .4byte 0x000031C8

	thumb_func_start sub_08009A48
sub_08009A48: @ 0x08009A48
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #8
	ldr r0, _08009A64 @ =gScript
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08009A6C
	cmp r0, #4
	blt _08009A6C
	ldr r0, _08009A68 @ =0x00003670
	adds r4, r7, r0
	b _08009A72
	.align 2, 0
_08009A64: .4byte gScript
_08009A68: .4byte 0x00003670
_08009A6C:
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r4, r7, r1
_08009A72:
	movs r6, #0
	ldr r0, _08009AF0 @ =0x0000C513
	mov ip, r0
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08009AEA
	adds r2, r4, #0
	adds r2, #0xc8
_08009A84:
	ldr r3, [r4, #4]
	ldr r1, [r2]
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x16
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #1
	orrs r0, r5
	strh r0, [r3, #2]
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #2
	orrs r0, r5
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x40
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x20
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x21
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x22
	orrs r0, r5
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, #0xcc
	adds r4, #0xcc
	mov r1, ip
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _08009A84
_08009AEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009AF0: .4byte 0x0000C513

	thumb_func_start sub_08009AF4
sub_08009AF4: @ 0x08009AF4
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [sp, #0x14]
	ldr r0, [r7]
	ldrh r5, [r0]
	adds r2, r0, #2
	ldr r0, _08009B14 @ =0x0000FF01
	cmp r5, r0
	beq _08009B18
	adds r0, #4
	cmp r5, r0
	beq _08009B2C
	b _08009B82
	.align 2, 0
_08009B14: .4byte 0x0000FF01
_08009B18:
	ldrh r0, [r4, #8]
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_08009C4C
	b _08009B80
_08009B2C:
	adds r0, r2, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08009B58
	cmp r0, #2
	bgt _08009B46
	cmp r0, #1
	beq _08009B4C
	b _08009B74
_08009B46:
	cmp r0, #3
	beq _08009B64
	b _08009B74
_08009B4C:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	b _08009B6E
_08009B58:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _08009B6E
_08009B64:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
_08009B6E:
	orrs r1, r0
	strb r1, [r4, #0xe]
	b _08009B7C
_08009B74:
	ldrb r0, [r4, #0xe]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0xe]
_08009B7C:
	ldr r0, [r6]
	adds r0, #4
_08009B80:
	str r0, [r6]
_08009B82:
	adds r0, r5, #0
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009B98
sub_08009B98: @ 0x08009B98
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r0, [r7]
	ldrh r5, [r0]
	adds r1, r0, #2
	ldr r0, _08009BBC @ =0x0000FF04
	cmp r5, r0
	bgt _08009BC0
	subs r0, #1
	cmp r5, r0
	bge _08009C34
	subs r0, #2
	cmp r5, r0
	beq _08009BCC
	b _08009C34
	.align 2, 0
_08009BBC: .4byte 0x0000FF04
_08009BC0:
	ldr r0, _08009BC8 @ =0x0000FF05
	cmp r5, r0
	beq _08009BE4
	b _08009C34
	.align 2, 0
_08009BC8: .4byte 0x0000FF05
_08009BCC:
	ldrh r0, [r4, #8]
	strh r0, [r3]
	ldr r0, _08009BE0 @ =0x0000C511
	adds r1, r6, r0
	ldrh r0, [r3, #2]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #2]
	b _08009C34
	.align 2, 0
_08009BE0: .4byte 0x0000C511
_08009BE4:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08009C10
	cmp r0, #2
	bgt _08009BFE
	cmp r0, #1
	beq _08009C04
	b _08009C2C
_08009BFE:
	cmp r0, #3
	beq _08009C1C
	b _08009C2C
_08009C04:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	b _08009C26
_08009C10:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _08009C26
_08009C1C:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
_08009C26:
	orrs r1, r0
	strb r1, [r4, #0xe]
	b _08009C34
_08009C2C:
	ldrb r0, [r4, #0xe]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0xe]
_08009C34:
	adds r0, r5, #0
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009C4C
sub_08009C4C: @ 0x08009C4C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08009C64 @ =gUnknown_0201B7A0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08009C64: .4byte gUnknown_0201B7A0

	thumb_func_start sub_08009C68
sub_08009C68: @ 0x08009C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08009C80 @ =gUnknown_0201E9D0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08009C80: .4byte gUnknown_0201E9D0

	thumb_func_start sub_08009C84
sub_08009C84: @ 0x08009C84
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08009CB0 @ =gUnknown_02016028
	ldr r2, _08009CB4 @ =0x00011D16
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08009CA4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08009CA4:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08009CBC
	ldr r2, _08009CB8 @ =0x00011D0C
	b _08009CBE
	.align 2, 0
_08009CB0: .4byte gUnknown_02016028
_08009CB4: .4byte 0x00011D16
_08009CB8: .4byte 0x00011D0C
_08009CBC:
	ldr r2, _08009CD4 @ =0x00011D90
_08009CBE:
	adds r0, r3, r2
	ldr r2, [r0]
	lsls r0, r4, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r2, r2, r0
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009CD4: .4byte 0x00011D90

	thumb_func_start sub_08009CD8
sub_08009CD8: @ 0x08009CD8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08009D28 @ =gUnknown_02016028
	ldr r3, _08009D2C @ =0x00011D16
	adds r0, r2, r3
	ldrb r3, [r0]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08009CFA
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08009CFA:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08009D34
	adds r6, r2, #0
	adds r6, #0x50
	lsls r0, r3, #0x1b
	lsrs r4, r0, #0x1e
	ldr r3, _08009D30 @ =0x00011C96
	adds r0, r2, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08009D18
	adds r0, #7
_08009D18:
	asrs r3, r0, #3
	adds r3, r1, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	b _08009D5E
	.align 2, 0
_08009D28: .4byte gUnknown_02016028
_08009D2C: .4byte 0x00011D16
_08009D30: .4byte 0x00011C96
_08009D34:
	adds r5, r2, #0
	adds r5, #0x50
	ldr r3, _08009D68 @ =0x00011D9A
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1e
	subs r3, #0x80
	adds r0, r2, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08009D50
	adds r0, #7
_08009D50:
	asrs r3, r0, #3
	adds r3, r1, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
_08009D5E:
	bl sub_08001378
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08009D68: .4byte 0x00011D9A

	thumb_func_start sub_08009D6C
sub_08009D6C: @ 0x08009D6C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08009D8C @ =gUnknown_02016028
	ldr r1, _08009D90 @ =0x00011C92
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08009DAC
	cmp r0, #1
	bgt _08009D94
	cmp r0, #0
	beq _08009D9A
	b _08009DD4
	.align 2, 0
_08009D8C: .4byte gUnknown_02016028
_08009D90: .4byte 0x00011C92
_08009D94:
	cmp r0, #2
	beq _08009DC4
	b _08009DD4
_08009D9A:
	ldr r0, _08009DA8 @ =0x00011C84
	adds r2, r2, r0
	movs r0, #0x16
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	b _08009DB8
	.align 2, 0
_08009DA8: .4byte 0x00011C84
_08009DAC:
	ldr r1, _08009DC0 @ =0x00011C84
	adds r0, r2, r1
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r0, [r0]
_08009DB8:
	adds r0, r0, r1
	adds r0, #2
	b _08009DD6
	.align 2, 0
_08009DC0: .4byte 0x00011C84
_08009DC4:
	ldr r1, _08009DD0 @ =0x00011C84
	adds r0, r2, r1
	lsls r1, r3, #5
	ldr r0, [r0]
	adds r0, r0, r1
	b _08009DD6
	.align 2, 0
_08009DD0: .4byte 0x00011C84
_08009DD4:
	movs r0, #0
_08009DD6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009DDC
sub_08009DDC: @ 0x08009DDC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _08009E00 @ =gUnknown_02016028
	ldr r2, _08009E04 @ =0x00011C92
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08009E08
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1d
	bl sub_08002254
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08009E0E
	.align 2, 0
_08009E00: .4byte gUnknown_02016028
_08009E04: .4byte 0x00011C92
_08009E08:
	ldr r1, _08009E14 @ =0x00011C88
	adds r0, r3, r1
	ldrb r0, [r0]
_08009E0E:
	pop {r1}
	bx r1
	.align 2, 0
_08009E14: .4byte 0x00011C88

	thumb_func_start sub_08009E18
sub_08009E18: @ 0x08009E18
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0800A0A4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009E38
	adds r0, r4, #0
	bl sub_08009F70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009E38
sub_08009E38: @ 0x08009E38
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08009EB4 @ =0x0000C513
	adds r0, r5, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08009EB8 @ =0x0000C51A
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08009EBC @ =0x0000322A
	adds r2, r5, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08009EC0 @ =0x0000C518
	adds r0, r5, r2
	movs r1, #0
	strh r3, [r0]
	subs r2, #4
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009ED0
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080019DC
	adds r4, r5, r4
	ldr r1, _08009EC4 @ =0x00002FD0
	adds r0, r4, #0
	bl sub_080019DC
	ldr r1, _08009EC8 @ =0x00003168
	adds r0, r5, r1
	movs r1, #0x60
	bl sub_080019DC
	ldr r2, _08009ECC @ =0x000031C8
	adds r0, r5, r2
	movs r1, #0x60
	bl sub_080019DC
	b _08009EFA
	.align 2, 0
_08009EB4: .4byte 0x0000C513
_08009EB8: .4byte 0x0000C51A
_08009EBC: .4byte 0x0000322A
_08009EC0: .4byte 0x0000C518
_08009EC4: .4byte 0x00002FD0
_08009EC8: .4byte 0x00003168
_08009ECC: .4byte 0x000031C8
_08009ED0:
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001ACC
	adds r4, r5, r4
	ldr r1, _08009F04 @ =0x00002FD0
	adds r0, r4, #0
	bl sub_08001ACC
	ldr r1, _08009F08 @ =0x00003168
	adds r0, r5, r1
	movs r1, #0x60
	bl sub_08001ACC
	ldr r2, _08009F0C @ =0x000031C8
	adds r0, r5, r2
	movs r1, #0x60
	bl sub_08001ACC
_08009EFA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009F04: .4byte 0x00002FD0
_08009F08: .4byte 0x00003168
_08009F0C: .4byte 0x000031C8

	thumb_func_start sub_08009F10
sub_08009F10: @ 0x08009F10
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009F44
	ldr r1, _08009F38 @ =0x00003230
	adds r0, r4, r1
	movs r1, #0x88
	lsls r1, r1, #3
	bl sub_080019DC
	ldr r1, _08009F3C @ =0x00003670
	adds r0, r4, r1
	ldr r1, _08009F40 @ =0x00005FA0
	bl sub_080019DC
	b _08009F5A
	.align 2, 0
_08009F38: .4byte 0x00003230
_08009F3C: .4byte 0x00003670
_08009F40: .4byte 0x00005FA0
_08009F44:
	ldr r1, _08009F64 @ =0x00003230
	adds r0, r4, r1
	movs r1, #0x88
	lsls r1, r1, #3
	bl sub_08001ACC
	ldr r1, _08009F68 @ =0x00003670
	adds r0, r4, r1
	ldr r1, _08009F6C @ =0x00005FA0
	bl sub_08001ACC
_08009F5A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009F64: .4byte 0x00003230
_08009F68: .4byte 0x00003670
_08009F6C: .4byte 0x00005FA0

	thumb_func_start sub_08009F70
sub_08009F70: @ 0x08009F70
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08009FC0 @ =0xFFFFF000
_08009F78:
	movs r0, #0x8c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r2, r5, r2
	ldr r0, _08009FC4 @ =0x0000969A
	adds r3, r2, r0
	ldrh r0, [r3]
	ldr r7, _08009FC8 @ =0x000003FF
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08009FCC @ =0x00009699
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0xf0
	orrs r0, r1
	strb r0, [r3]
	ldr r7, _08009FD0 @ =0x00009698
	adds r2, r2, r7
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x27
	bls _08009F78
	adds r0, r5, #0
	bl sub_08009FD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009FC0: .4byte 0xFFFFF000
_08009FC4: .4byte 0x0000969A
_08009FC8: .4byte 0x000003FF
_08009FCC: .4byte 0x00009699
_08009FD0: .4byte 0x00009698

	thumb_func_start sub_08009FD4
sub_08009FD4: @ 0x08009FD4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800A05C @ =0x0000C1D8
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r3, _0800A060 @ =0x0000C1E4
	adds r1, r0, r3
	movs r3, #1
	strb r3, [r1]
	ldr r4, _0800A064 @ =0x0000C1F4
	adds r1, r0, r4
	strb r2, [r1]
	movs r7, #0xc2
	lsls r7, r7, #8
	adds r1, r0, r7
	strb r3, [r1]
	ldr r3, _0800A068 @ =0x0000C1D9
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r2, [r1]
	subs r7, #0x1b
	adds r1, r0, r7
	strb r2, [r1]
	adds r3, #0x28
	adds r1, r0, r3
	strb r2, [r1]
	subs r4, #0x25
	adds r6, r0, r4
	adds r7, #0x23
	adds r4, r0, r7
	str r4, [r6]
	ldr r1, _0800A06C @ =0x0000C1EC
	adds r5, r0, r1
	ldr r3, _0800A070 @ =0x0000C408
	adds r2, r0, r3
	str r2, [r5]
	subs r7, #0x34
	adds r1, r0, r7
	adds r7, #0x54
	adds r3, r0, r7
	str r3, [r1]
	subs r7, #0x38
	adds r1, r0, r7
	str r2, [r1]
	subs r7, #0x14
	adds r1, r0, r7
	str r3, [r1]
	ldr r3, _0800A074 @ =0x0000C1F8
	adds r1, r0, r3
	str r2, [r1]
	adds r7, #4
	adds r1, r0, r7
	str r4, [r1]
	adds r3, #4
	adds r1, r0, r3
	str r2, [r1]
	ldr r4, _0800A078 @ =0x0000C1E8
	adds r1, r0, r4
	str r6, [r1]
	adds r7, #0x24
	adds r0, r0, r7
	str r5, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A05C: .4byte 0x0000C1D8
_0800A060: .4byte 0x0000C1E4
_0800A064: .4byte 0x0000C1F4
_0800A068: .4byte 0x0000C1D9
_0800A06C: .4byte 0x0000C1EC
_0800A070: .4byte 0x0000C408
_0800A074: .4byte 0x0000C1F8
_0800A078: .4byte 0x0000C1E8

	thumb_func_start sub_0800A07C
sub_0800A07C: @ 0x0800A07C
	push {lr}
	ldr r0, _0800A08C @ =gUnknown_0201B7A0
	movs r1, #0xcc
	lsls r1, r1, #1
	bl sub_08001ACC
	pop {r0}
	bx r0
	.align 2, 0
_0800A08C: .4byte gUnknown_0201B7A0

	thumb_func_start sub_0800A090
sub_0800A090: @ 0x0800A090
	push {lr}
	movs r0, #0
	movs r1, #1
	bl sub_08009C4C
	movs r1, #0x88
	bl sub_08001ACC
	pop {r0}
	bx r0

	thumb_func_start sub_0800A0A4
sub_0800A0A4: @ 0x0800A0A4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r0, _0800A0D4 @ =0x0000C51A
	adds r5, r3, r0
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r5]
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	cmp r4, #1
	beq _0800A124
	cmp r4, #1
	bgt _0800A0D8
	cmp r4, #0
	beq _0800A0DE
	b _0800A1A2
	.align 2, 0
_0800A0D4: .4byte 0x0000C51A
_0800A0D8:
	cmp r6, #2
	beq _0800A16C
	b _0800A1A2
_0800A0DE:
	movs r0, #1
	orrs r2, r0
	strb r2, [r5]
	ldr r0, _0800A10C @ =0x0000C50C
	adds r1, r3, r0
	ldr r0, _0800A110 @ =gUnknown_08CE39F8
	str r0, [r1]
	ldr r0, _0800A114 @ =0x0000C510
	adds r1, r3, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0800A118 @ =0x0000C511
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0800A11C @ =0x0000C512
	adds r1, r3, r0
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, _0800A120 @ =0x0000C508
	adds r1, r3, r0
	movs r0, #0xcb
	b _0800A1A0
	.align 2, 0
_0800A10C: .4byte 0x0000C50C
_0800A110: .4byte gUnknown_08CE39F8
_0800A114: .4byte 0x0000C510
_0800A118: .4byte 0x0000C511
_0800A11C: .4byte 0x0000C512
_0800A120: .4byte 0x0000C508
_0800A124:
	movs r0, #1
	orrs r2, r0
	strb r2, [r5]
	ldr r0, _0800A154 @ =0x0000C50C
	adds r1, r3, r0
	ldr r0, _0800A158 @ =gUnknown_08D0B010
	str r0, [r1]
	ldr r0, _0800A15C @ =0x0000C510
	adds r1, r3, r0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _0800A160 @ =0x0000C511
	adds r1, r3, r0
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _0800A164 @ =0x0000C512
	adds r1, r3, r0
	movs r0, #0x1b
	strb r0, [r1]
	ldr r0, _0800A168 @ =0x0000C508
	adds r1, r3, r0
	movs r0, #0xcb
	b _0800A1A0
	.align 2, 0
_0800A154: .4byte 0x0000C50C
_0800A158: .4byte gUnknown_08D0B010
_0800A15C: .4byte 0x0000C510
_0800A160: .4byte 0x0000C511
_0800A164: .4byte 0x0000C512
_0800A168: .4byte 0x0000C508
_0800A16C:
	ldr r1, _0800A1A8 @ =gUnknown_03004B08
	movs r0, #1
	strh r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r5]
	ldr r0, _0800A1AC @ =0x0000C50C
	adds r1, r3, r0
	ldr r0, _0800A1B0 @ =gUnknown_08D1CE78
	str r0, [r1]
	ldr r0, _0800A1B4 @ =0x0000C510
	adds r1, r3, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0800A1B8 @ =0x0000C511
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0800A1BC @ =0x0000C512
	adds r1, r3, r0
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _0800A1C0 @ =0x0000C508
	adds r1, r3, r0
	movs r0, #0x5a
_0800A1A0:
	strh r0, [r1]
_0800A1A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A1A8: .4byte gUnknown_03004B08
_0800A1AC: .4byte 0x0000C50C
_0800A1B0: .4byte gUnknown_08D1CE78
_0800A1B4: .4byte 0x0000C510
_0800A1B8: .4byte 0x0000C511
_0800A1BC: .4byte 0x0000C512
_0800A1C0: .4byte 0x0000C508

	thumb_func_start sub_0800A1C4
sub_0800A1C4: @ 0x0800A1C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08005BFC
	ldr r5, _0800A22C @ =gUnknown_02016028
	ldr r0, _0800A230 @ =0x000121B9
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A234 @ =0x00011D16
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r2]
	ldr r4, _0800A238 @ =gUnknown_080C2008
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A4C8
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A678
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A8DC
	ldr r0, _0800A23C @ =0x00011C94
	adds r5, r5, r0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800AB74
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A22C: .4byte gUnknown_02016028
_0800A230: .4byte 0x000121B9
_0800A234: .4byte 0x00011D16
_0800A238: .4byte gUnknown_080C2008
_0800A23C: .4byte 0x00011C94

	thumb_func_start sub_0800A240
sub_0800A240: @ 0x0800A240
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0800A2B0 @ =gScript
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800A266
	ldr r2, _0800A2B4 @ =0x0000595B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _0800A266
	ldr r2, _0800A2B8 @ =0x000067AC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x1f
	beq _0800A278
	cmp r0, #0x23
	beq _0800A278
_0800A266:
	bl sub_08005BFC
	ldr r0, _0800A2BC @ =gUnknown_02016028
	ldr r1, _0800A2C0 @ =0x000121BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0800A278:
	ldr r4, _0800A2BC @ =gUnknown_02016028
	ldr r0, _0800A2C4 @ =0x00011D16
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	bl sub_0800A9E0
	ldr r1, _0800A2C8 @ =0x00011C94
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0800AB74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2B0: .4byte gScript
_0800A2B4: .4byte 0x0000595B
_0800A2B8: .4byte 0x000067AC
_0800A2BC: .4byte gUnknown_02016028
_0800A2C0: .4byte 0x000121BA
_0800A2C4: .4byte 0x00011D16
_0800A2C8: .4byte 0x00011C94

	thumb_func_start sub_0800A2CC
sub_0800A2CC: @ 0x0800A2CC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_08005BFC
	ldr r3, _0800A31C @ =gUnknown_02016028
	ldr r0, _0800A320 @ =0x000121B9
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A324 @ =0x00011D16
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0800A328 @ =0x00011D14
	adds r1, r3, r2
	strb r4, [r1]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A32C
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	adds r2, #1
	adds r1, r3, r2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	bl sub_0800A9E0
	b _0800A344
	.align 2, 0
_0800A31C: .4byte gUnknown_02016028
_0800A320: .4byte 0x000121B9
_0800A324: .4byte 0x00011D16
_0800A328: .4byte 0x00011D14
_0800A32C:
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	subs r0, #2
	ldr r2, _0800A34C @ =0x00011D15
	adds r1, r3, r2
	strb r0, [r1]
	ldr r1, _0800A350 @ =gUnknown_080C2008
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A8DC
_0800A344:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A34C: .4byte 0x00011D15
_0800A350: .4byte gUnknown_080C2008

	thumb_func_start sub_0800A354
sub_0800A354: @ 0x0800A354
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005BFC
	ldr r0, _0800A3A4 @ =gUnknown_02016028
	ldr r1, _0800A3A8 @ =0x000121B9
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _0800A3AC @ =0x00011D16
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #2
	ands r1, r2
	strb r1, [r3]
	ldr r1, _0800A3B0 @ =0x0001ED10
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x50
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A3A4: .4byte gUnknown_02016028
_0800A3A8: .4byte 0x000121B9
_0800A3AC: .4byte 0x00011D16
_0800A3B0: .4byte 0x0001ED10

	thumb_func_start sub_0800A3B4
sub_0800A3B4: @ 0x0800A3B4
	ldr r2, _0800A3E0 @ =gUnknown_02016028
	ldr r0, _0800A3E4 @ =0x00011D16
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r3]
	ldr r0, _0800A3E8 @ =0x0001ED10
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0800A3E0: .4byte gUnknown_02016028
_0800A3E4: .4byte 0x00011D16
_0800A3E8: .4byte 0x0001ED10

	thumb_func_start sub_0800A3EC
sub_0800A3EC: @ 0x0800A3EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0800A468 @ =gUnknown_02016028
	ldr r0, _0800A46C @ =0x000121BA
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A470 @ =0x00011D9A
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800A474 @ =0x00011D16
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	ldr r4, _0800A478 @ =gUnknown_080C2008
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A4C8
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A678
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A8DC
	ldr r0, _0800A47C @ =0x00011D18
	adds r5, r5, r0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800AB74
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A468: .4byte gUnknown_02016028
_0800A46C: .4byte 0x000121BA
_0800A470: .4byte 0x00011D9A
_0800A474: .4byte 0x00011D16
_0800A478: .4byte gUnknown_080C2008
_0800A47C: .4byte 0x00011D18

	thumb_func_start sub_0800A480
sub_0800A480: @ 0x0800A480
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005BFC
	ldr r0, _0800A4BC @ =gUnknown_02016028
	ldr r1, _0800A4C0 @ =0x000121BA
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #8
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _0800A4C4 @ =0x00011D9A
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x50
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A4BC: .4byte gUnknown_02016028
_0800A4C0: .4byte 0x000121BA
_0800A4C4: .4byte 0x00011D9A

	thumb_func_start sub_0800A4C8
sub_0800A4C8: @ 0x0800A4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800A4EE
	adds r0, #7
_0800A4EE:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800A66C @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0800A506
	adds r0, #7
_0800A506:
	asrs r0, r0, #3
	mov r4, sp
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	ldr r0, _0800A670 @ =gUnknown_02016078
	mov sl, r0
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r4, #2]
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	bl sub_0800AB64
	ldrh r1, [r6, #2]
	orrs r0, r1
	mov r1, r8
	lsls r1, r1, #0xc
	mov r8, r1
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	ldrh r2, [r6]
	bl sub_0800AAC8
	mov r0, sp
	ldrh r2, [r0]
	ldr r5, _0800A674 @ =0x0000FFFF
	adds r2, r2, r5
	ldrh r0, [r4, #4]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	bl sub_0800AB64
	ldrh r1, [r6, #0xa]
	orrs r0, r1
	mov r2, r8
	orrs r0, r2
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r6, #8]
	bl sub_0800AAC8
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r4, #2]
	adds r3, r3, r5
	ldrh r0, [r4, #6]
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r2, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800AB64
	ldrh r1, [r6, #0x1a]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r2, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r6, #0x18]
	bl sub_0800AAC8
	mov r0, sp
	ldrh r2, [r0]
	adds r2, r2, r5
	ldrh r0, [r4, #4]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	adds r3, r3, r5
	ldrh r1, [r4, #6]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r2, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800AB64
	ldrh r1, [r6, #0x22]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r4, [r4, #6]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r6, #0x20]
	bl sub_0800AAC8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A66C: .4byte 0xFFFF0000
_0800A670: .4byte gUnknown_02016078
_0800A674: .4byte 0x0000FFFF

	thumb_func_start sub_0800A678
sub_0800A678: @ 0x0800A678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800A69E
	adds r0, #7
_0800A69E:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800A724 @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0800A6B6
	adds r0, #7
_0800A6B6:
	asrs r0, r0, #3
	mov r4, sp
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r4, #2]
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0800A728 @ =gUnknown_02016078
	ldr r1, [sp, #8]
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r4, #4]
	subs r0, #2
	cmp r6, r0
	bge _0800A756
	mov r1, r8
	lsls r4, r1, #0x10
_0800A700:
	mov r2, sl
	ldrh r0, [r2, #6]
	adds r1, r7, #0
	orrs r1, r0
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0xc
	orrs r1, r0
	strh r1, [r5]
	cmp r6, #0
	bne _0800A72C
	mov r0, sl
	ldrh r2, [r0, #0x24]
	lsrs r0, r4, #0x10
	mov r1, sb
	bl sub_0800AAC8
	b _0800A73E
	.align 2, 0
_0800A724: .4byte 0xFFFF0000
_0800A728: .4byte gUnknown_02016078
_0800A72C:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ldrh r2, [r1, #4]
	mov r1, sb
	bl sub_0800AAC8
_0800A73E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
	subs r0, #2
	cmp r6, r0
	blt _0800A700
_0800A756:
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r4, sp
	ldrh r0, [r4, #2]
	ldr r2, _0800A794 @ =0x0000FFFF
	adds r0, r0, r2
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0800A798 @ =gUnknown_02016078
	ldr r1, [sp, #8]
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r4, #4]
	b _0800A7D0
	.align 2, 0
_0800A794: .4byte 0x0000FFFF
_0800A798: .4byte gUnknown_02016078
_0800A79C:
	mov r2, sl
	ldrh r1, [r2, #0x1e]
	adds r0, r7, #0
	orrs r0, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ldrh r2, [r1, #0x1c]
	mov r1, sb
	bl sub_0800AAC8
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
_0800A7D0:
	subs r0, #2
	cmp r6, r0
	blt _0800A79C
	mov r0, sp
	ldrh r0, [r0]
	mov r8, r0
	mov r4, sp
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
	ldrh r0, [r4, #6]
	b _0800A83E
_0800A7FA:
	mov r2, sb
	adds r4, r2, r6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800A874 @ =gUnknown_02016078
	ldr r1, [sp, #8]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08001378
	adds r5, r0, #0
	mov r0, sl
	ldrh r1, [r0, #0xe]
	adds r0, r7, #0
	orrs r0, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r0, sl
	ldrh r2, [r0, #0xc]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800AAC8
	adds r0, r7, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #6]
_0800A83E:
	subs r0, #2
	cmp r6, r0
	blt _0800A7FA
	mov r0, sp
	ldrh r0, [r0]
	mov r4, sp
	ldr r1, _0800A878 @ =0x0000FFFF
	adds r0, r0, r1
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
	ldrh r0, [r4, #6]
	b _0800A8C0
	.align 2, 0
_0800A874: .4byte gUnknown_02016078
_0800A878: .4byte 0x0000FFFF
_0800A87C:
	mov r0, sb
	adds r4, r0, r6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800A8D8 @ =gUnknown_02016078
	ldr r1, [sp, #8]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08001378
	adds r5, r0, #0
	mov r2, sl
	ldrh r1, [r2, #0x16]
	adds r0, r7, #0
	orrs r0, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r0, sl
	ldrh r2, [r0, #0x14]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800AAC8
	adds r0, r7, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #6]
_0800A8C0:
	subs r0, #2
	cmp r6, r0
	blt _0800A87C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A8D8: .4byte gUnknown_02016078

	thumb_func_start sub_0800A8DC
sub_0800A8DC: @ 0x0800A8DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x10]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800A902
	adds r0, #7
_0800A902:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800A938 @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0800A91A
	adds r0, #7
_0800A91A:
	asrs r0, r0, #3
	mov r1, sp
	mov r7, sp
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	lsrs r0, r0, #3
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	lsrs r0, r0, #3
	strh r0, [r1, #6]
	movs r0, #0
	mov sl, r0
	ldrh r0, [r1, #6]
	b _0800A9C6
	.align 2, 0
_0800A938: .4byte 0xFFFF0000
_0800A93C:
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r1, [r7, #2]
	adds r1, #1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0800A9DC @ =gUnknown_02016078
	ldr r1, [sp, #0xc]
	mov r2, sb
	mov r3, r8
	bl sub_08001378
	adds r5, r0, #0
	movs r4, #0
	ldrh r0, [r7, #4]
	subs r0, #2
	mov r7, sl
	adds r7, #1
	cmp r4, r0
	bge _0800A9BC
_0800A982:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	adds r0, r6, #0
	orrs r0, r1
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r1, sb
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	ldrh r2, [r1, #0x10]
	mov r1, r8
	bl sub_0800AAC8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
	subs r0, #2
	cmp r4, r0
	blt _0800A982
_0800A9BC:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r7, sp
	ldrh r0, [r7, #6]
_0800A9C6:
	subs r0, #2
	cmp sl, r0
	blt _0800A93C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A9DC: .4byte gUnknown_02016078

	thumb_func_start sub_0800A9E0
sub_0800A9E0: @ 0x0800A9E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0800AA04
	adds r0, #7
_0800AA04:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800AABC @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0800AA1C
	adds r0, #7
_0800AA1C:
	asrs r0, r0, #3
	mov r1, sp
	mov r7, sp
	strh r0, [r1, #2]
	ldrh r0, [r3, #4]
	lsrs r0, r0, #3
	strh r0, [r1, #4]
	ldrh r0, [r3, #6]
	lsrs r0, r0, #3
	strh r0, [r1, #6]
	movs r1, #0
	mov sl, r1
	cmp sl, r0
	bhs _0800AAAC
_0800AA38:
	mov r0, sp
	ldrh r0, [r0]
	mov sb, r0
	ldrh r0, [r7, #2]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0800AAC0 @ =gUnknown_02016078
	ldr r1, [sp, #8]
	mov r2, sb
	mov r3, r8
	bl sub_08001378
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	add sl, r0
	ldrh r7, [r7, #4]
	cmp r4, r7
	bhs _0800AA9C
_0800AA6E:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0xc
	orrs r0, r6
	strh r0, [r5]
	mov r1, sb
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ldr r2, _0800AAC4 @ =0x0000FFFF
	bl sub_0800AAC8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _0800AA6E
_0800AA9C:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r7, sp
	ldrh r0, [r7, #6]
	cmp sl, r0
	blo _0800AA38
_0800AAAC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AABC: .4byte 0xFFFF0000
_0800AAC0: .4byte gUnknown_02016078
_0800AAC4: .4byte 0x0000FFFF

	thumb_func_start sub_0800AAC8
sub_0800AAC8: @ 0x0800AAC8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r5, _0800AB18 @ =gUnknown_02016028
	ldr r1, _0800AB1C @ =0x00011D16
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800AB28
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0800AB20 @ =0x00014F10
	adds r3, r5, r0
	lsls r1, r7, #5
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r3, r1, r3
	ldr r1, _0800AB24 @ =0x77777777
	adds r0, r3, #0
	stm r0!, {r1}
	str r1, [r3, #4]
	adds r0, #4
	stm r0!, {r1}
	stm r0!, {r1}
	stm r0!, {r1}
	stm r0!, {r1}
	stm r0!, {r1}
	str r1, [r0]
	b _0800AB54
	.align 2, 0
_0800AB18: .4byte gUnknown_02016028
_0800AB1C: .4byte 0x00011D16
_0800AB20: .4byte 0x00014F10
_0800AB24: .4byte 0x77777777
_0800AB28:
	adds r0, r4, #0
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0800AB5C @ =0x09AF3790
	movs r1, #0
	bl sub_0800289C
	lsls r1, r6, #5
	adds r0, r0, r1
	ldr r1, _0800AB60 @ =0x00014F10
	adds r3, r5, r1
	lsls r2, r7, #5
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #6
	adds r2, r2, r1
	adds r3, r2, r3
	adds r1, r3, #0
	movs r2, #0x20
	bl sub_08001B18
_0800AB54:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB5C: .4byte 0x09AF3790
_0800AB60: .4byte 0x00014F10

	thumb_func_start sub_0800AB64
sub_0800AB64: @ 0x0800AB64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xb
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_0800AB74
sub_0800AB74: @ 0x0800AB74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	adds r3, r5, #0
	adds r3, #0x82
	movs r0, #3
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r7, _0800AC4C @ =gUnknown_0202AF38
	str r7, [r5, #0x70]
	ldr r0, _0800AC50 @ =0xFFFEB140
	adds r1, r7, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0800ABAA
	adds r0, #7
_0800ABAA:
	lsls r0, r0, #0xd
	lsrs r2, r0, #0x10
	movs r0, #2
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _0800ABB8
	adds r3, #7
_0800ABB8:
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x10
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_08001378
	str r0, [r5, #0x74]
	ldr r1, _0800AC54 @ =0x06008000
	str r1, [r5, #0x78]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0800ABD4
	adds r0, #7
_0800ABD4:
	asrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x78]
	ldr r2, _0800AC58 @ =0x06006000
	str r2, [r5, #0x7c]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0800ABEA
	adds r0, #7
_0800ABEA:
	asrs r1, r0, #3
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0800ABF6
	adds r0, #7
_0800ABF6:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r2
	str r0, [r5, #0x7c]
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrh r0, [r4, #6]
	strh r0, [r5, #6]
	movs r0, #8
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	movs r0, #0xdc
	strh r0, [r5, #0xc]
	movs r0, #0x18
	strh r0, [r5, #0xe]
	ldr r1, _0800AC5C @ =0xFFFFCE06
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800AC64
	movs r4, #0
_0800AC30:
	lsls r0, r4, #5
	adds r0, #0x10
	adds r0, r5, r0
	movs r1, #0x20
	ldr r2, _0800AC60 @ =0x77777777
	bl sub_08001B54
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0800AC30
	b _0800AC90
	.align 2, 0
_0800AC4C: .4byte gUnknown_0202AF38
_0800AC50: .4byte 0xFFFEB140
_0800AC54: .4byte 0x06008000
_0800AC58: .4byte 0x06006000
_0800AC5C: .4byte 0xFFFFCE06
_0800AC60: .4byte 0x77777777
_0800AC64:
	ldr r0, _0800AC98 @ =0x09AF3790
	movs r1, #0
	bl sub_0800289C
	adds r6, r0, #0
	ldr r0, _0800AC9C @ =gUnknown_080C2008
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #5
	adds r6, r6, r0
	movs r4, #0
_0800AC78:
	lsls r1, r4, #5
	adds r1, #0x10
	adds r1, r5, r1
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0800AC78
_0800AC90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC98: .4byte 0x09AF3790
_0800AC9C: .4byte gUnknown_080C2008

	thumb_func_start sub_0800ACA0
sub_0800ACA0: @ 0x0800ACA0
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	ldr r3, _0800ACF4 @ =gScript
	cmp r0, #0
	beq _0800AD14
	ldr r1, _0800ACF8 @ =0x00009484
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _0800ACFC @ =0x0003FF00
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	cmp r1, r0
	beq _0800AD4C
	ldr r1, _0800AD00 @ =0x00008496
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800AD14
	ldr r0, _0800AD04 @ =0x00009486
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800AD08 @ =gUnknown_03004B04
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0800AD0C @ =gUnknown_03004B06
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800AD10 @ =gUnknown_03004B08
	strh r2, [r0]
	b _0800AD4C
	.align 2, 0
_0800ACF4: .4byte gScript
_0800ACF8: .4byte 0x00009484
_0800ACFC: .4byte 0x0003FF00
_0800AD00: .4byte 0x00008496
_0800AD04: .4byte 0x00009486
_0800AD08: .4byte gUnknown_03004B04
_0800AD0C: .4byte gUnknown_03004B06
_0800AD10: .4byte gUnknown_03004B08
_0800AD14:
	ldr r1, _0800AD54 @ =0x00009486
	adds r2, r3, r1
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800AD58 @ =0x00009484
	adds r0, r3, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r1, _0800AD5C @ =gUnknown_03004B04
	movs r0, #9
	strh r0, [r1]
	ldr r1, _0800AD60 @ =gUnknown_03004B06
	movs r0, #0xd0
	strh r0, [r1]
	ldr r0, _0800AD64 @ =gUnknown_03004B08
	strh r2, [r0]
	ldr r1, _0800AD68 @ =gUnknown_02016028
	ldrh r0, [r1, #0x1a]
	movs r0, #9
	strh r0, [r1, #0x1a]
_0800AD4C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800AD54: .4byte 0x00009486
_0800AD58: .4byte 0x00009484
_0800AD5C: .4byte gUnknown_03004B04
_0800AD60: .4byte gUnknown_03004B06
_0800AD64: .4byte gUnknown_03004B08
_0800AD68: .4byte gUnknown_02016028

	thumb_func_start sub_0800AD6C
sub_0800AD6C: @ 0x0800AD6C
	ldr r2, _0800ADA0 @ =gScript
	ldr r0, _0800ADA4 @ =0x00009486
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _0800ADA8 @ =0x00009484
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0800ADAC @ =0x00009485
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _0800ADB0 @ =gUnknown_03004B04
	strh r3, [r0]
	ldr r1, _0800ADB4 @ =gUnknown_03004B06
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800ADB8 @ =gUnknown_03004B08
	strh r3, [r0]
	bx lr
	.align 2, 0
_0800ADA0: .4byte gScript
_0800ADA4: .4byte 0x00009486
_0800ADA8: .4byte 0x00009484
_0800ADAC: .4byte 0x00009485
_0800ADB0: .4byte gUnknown_03004B04
_0800ADB4: .4byte gUnknown_03004B06
_0800ADB8: .4byte gUnknown_03004B08

	thumb_func_start sub_0800ADBC
sub_0800ADBC: @ 0x0800ADBC
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r2, _0800AE0C @ =gScript
	ldr r0, _0800AE10 @ =0x00009486
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800AE14 @ =gUnknown_03004B04
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0800AE18 @ =gUnknown_03004B06
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800AE1C @ =gUnknown_03004B08
	strh r2, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800AE06
	ldr r0, _0800AE20 @ =gUnknown_080C1FF0
	bl sub_0800A3B4
	ldr r1, _0800AE24 @ =gUnknown_02016028
	ldr r0, _0800AE28 @ =0x000121BB
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
_0800AE06:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800AE0C: .4byte gScript
_0800AE10: .4byte 0x00009486
_0800AE14: .4byte gUnknown_03004B04
_0800AE18: .4byte gUnknown_03004B06
_0800AE1C: .4byte gUnknown_03004B08
_0800AE20: .4byte gUnknown_080C1FF0
_0800AE24: .4byte gUnknown_02016028
_0800AE28: .4byte 0x000121BB

	thumb_func_start sub_0800AE2C
sub_0800AE2C: @ 0x0800AE2C
	push {r4, r5, r6, lr}
	ldr r4, _0800AE54 @ =gScript
	ldr r1, _0800AE58 @ =0x00009486
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AE68
	ldr r0, _0800AE5C @ =gUnknown_03004B04
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0800AE60 @ =gUnknown_03004B06
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800AE64 @ =gUnknown_03004B08
	strh r2, [r0]
	movs r0, #1
	b _0800AF1A
	.align 2, 0
_0800AE54: .4byte gScript
_0800AE58: .4byte 0x00009486
_0800AE5C: .4byte gUnknown_03004B04
_0800AE60: .4byte gUnknown_03004B06
_0800AE64: .4byte gUnknown_03004B08
_0800AE68:
	movs r6, #1
	ldr r1, _0800AE7C @ =0x00009485
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AE80
	cmp r0, #1
	beq _0800AEAC
	b _0800AED2
	.align 2, 0
_0800AE7C: .4byte 0x00009485
_0800AE80:
	movs r6, #9
	ldr r5, _0800AEA0 @ =gUnknown_03004B04
	ldr r0, _0800AEA4 @ =0x00009484
	adds r4, r4, r0
	ldrb r2, [r4]
	movs r0, #9
	movs r1, #0
	movs r3, #9
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _0800AEA8 @ =gUnknown_03004B06
	ldrb r2, [r4]
	movs r0, #0xd0
	movs r1, #0xf4
	b _0800AECA
	.align 2, 0
_0800AEA0: .4byte gUnknown_03004B04
_0800AEA4: .4byte 0x00009484
_0800AEA8: .4byte gUnknown_03004B06
_0800AEAC:
	movs r6, #9
	ldr r5, _0800AF20 @ =gUnknown_03004B04
	ldr r1, _0800AF24 @ =0x00009484
	adds r4, r4, r1
	ldrb r2, [r4]
	movs r0, #0
	movs r1, #9
	movs r3, #9
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _0800AF28 @ =gUnknown_03004B06
	ldrb r2, [r4]
	movs r0, #0xf4
	movs r1, #0xd0
_0800AECA:
	movs r3, #9
	bl sub_08002E60
	strh r0, [r5]
_0800AED2:
	ldr r3, _0800AF2C @ =gScript
	ldr r1, _0800AF24 @ =0x00009484
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, r6
	blo _0800AF0E
	ldr r0, _0800AF30 @ =0x00009486
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0800AF34 @ =0x00009485
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AF0E
	ldr r0, _0800AF38 @ =gUnknown_080C1FF0
	bl sub_0800A3B4
	ldr r1, _0800AF3C @ =gUnknown_02016028
	ldr r0, _0800AF40 @ =0x000121BB
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
_0800AF0E:
	ldr r0, _0800AF2C @ =gScript
	ldr r1, _0800AF30 @ =0x00009486
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
_0800AF1A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800AF20: .4byte gUnknown_03004B04
_0800AF24: .4byte 0x00009484
_0800AF28: .4byte gUnknown_03004B06
_0800AF2C: .4byte gScript
_0800AF30: .4byte 0x00009486
_0800AF34: .4byte 0x00009485
_0800AF38: .4byte gUnknown_080C1FF0
_0800AF3C: .4byte gUnknown_02016028
_0800AF40: .4byte 0x000121BB

	thumb_func_start sub_0800AF44
sub_0800AF44: @ 0x0800AF44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #0x14
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	str r0, [r5, #0x70]
	str r0, [r5, #0x78]
	str r0, [r5, #0x74]
	str r0, [r5, #0x7c]
	strh r0, [r5]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, _0800AFB8 @ =0x09AF3790
	movs r1, #0
	bl sub_0800289C
	adds r6, r0, #0
	ldr r0, _0800AFBC @ =gUnknown_080C2008
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #5
	adds r6, r6, r0
	movs r4, #0
_0800AF98:
	lsls r1, r4, #5
	adds r1, #0x10
	adds r1, r5, r1
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0800AF98
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFB8: .4byte 0x09AF3790
_0800AFBC: .4byte gUnknown_080C2008

	thumb_func_start sub_0800AFC0
sub_0800AFC0: @ 0x0800AFC0
	push {lr}
	adds r3, r0, #0
	ldr r0, _0800AFF8 @ =gScript
	ldr r1, _0800AFFC @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r2, r0, #0x1f
	cmp r2, #0
	bne _0800AFF2
	ldrb r1, [r3, #2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3, #2]
	ldr r0, _0800B000 @ =gUnknown_03004B04
	strh r2, [r0]
	ldr r1, _0800B004 @ =gUnknown_03004B06
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800B008 @ =gUnknown_03004B08
	strh r2, [r0]
_0800AFF2:
	pop {r0}
	bx r0
	.align 2, 0
_0800AFF8: .4byte gScript
_0800AFFC: .4byte 0x00008494
_0800B000: .4byte gUnknown_03004B04
_0800B004: .4byte gUnknown_03004B06
_0800B008: .4byte gUnknown_03004B08

	thumb_func_start sub_0800B00C
sub_0800B00C: @ 0x0800B00C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	bl sub_08036BD8
	mov sb, r0
	mov r2, sb
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0800B1CC @ =gUnknown_02016028
	ldr r0, _0800B1D0 @ =0x0001ED10
	adds r2, r2, r0
	mov ip, r2
	ldrb r0, [r2]
	movs r5, #2
	rsbs r5, r5, #0
	ands r5, r0
	movs r2, #3
	rsbs r2, r2, #0
	ands r5, r2
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	mov r2, sl
	ands r5, r2
	mov r0, ip
	strb r5, [r0]
	ldr r3, _0800B1D4 @ =gScript
	ldr r0, _0800B1D8 @ =0x000082B7
	adds r2, r3, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x7f
	ands r1, r0
	strb r1, [r2]
	mov r2, r8
	ldrb r1, [r2, #0xe]
	movs r7, #1
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800B0FA
	ldr r1, _0800B1DC @ =0x0000848C
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800B0FA
	ldrh r4, [r2]
	lsls r3, r4, #0x10
	lsrs r0, r3, #0x13
	ands r0, r6
	ands r0, r7
	adds r2, r5, #0
	movs r1, #2
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	lsrs r0, r3, #0x12
	ands r0, r6
	ands r0, r7
	lsls r0, r0, #1
	subs r1, #1
	ands r2, r1
	orrs r2, r0
	ldr r1, _0800B1E0 @ =0x00000201
	ands r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ands r0, r7
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	lsrs r3, r3, #0x18
	ands r3, r6
	ands r3, r7
	lsls r3, r3, #3
	mov r0, sl
	ands r2, r0
	orrs r2, r3
	mov r1, ip
	strb r2, [r1]
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r0, #0xf2
	ands r0, r1
	cmp r0, #0
	beq _0800B0FA
	ldr r1, _0800B1CC @ =gUnknown_02016028
	ldr r2, _0800B1E4 @ =0x000035B6
	adds r0, r1, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800B0FA
	bl sub_0803793C
_0800B0FA:
	bl sub_0802B53C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B1BE
	bl sub_0802B57C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B1BE
	ldr r0, _0800B1D4 @ =gScript
	ldr r1, _0800B1E8 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0xe8
	bne _0800B130
	ldr r2, _0800B1CC @ =gUnknown_02016028
	ldr r0, _0800B1D0 @ =0x0001ED10
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_0800B130:
	ldr r0, _0800B1EC @ =0x000002DE
	bl sub_08002970
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B156
	ldr r2, _0800B1CC @ =gUnknown_02016028
	ldr r1, _0800B1D0 @ =0x0001ED10
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #6
	ands r0, r1
	strb r0, [r2]
_0800B156:
	mov r1, sb
	adds r1, #0xca
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	adds r4, r1, #0
	cmp r0, #0
	beq _0800B180
	subs r1, #0x28
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B180
	ldrb r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4]
_0800B180:
	ldr r5, _0800B1D4 @ =gScript
	ldr r2, _0800B1DC @ =0x0000848C
	adds r1, r5, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800B190
	subs r0, #1
	strh r0, [r1]
_0800B190:
	ldr r1, _0800B1F0 @ =gUnknown_08D2D2E8
	ldr r2, _0800B1F4 @ =0x0000829B
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, r8
	bl _call_via_r1
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _0800B1F8 @ =0x00008494
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B1BE
	bl sub_0802B5D8
_0800B1BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1CC: .4byte gUnknown_02016028
_0800B1D0: .4byte 0x0001ED10
_0800B1D4: .4byte gScript
_0800B1D8: .4byte 0x000082B7
_0800B1DC: .4byte 0x0000848C
_0800B1E0: .4byte 0x00000201
_0800B1E4: .4byte 0x000035B6
_0800B1E8: .4byte 0x000067AC
_0800B1EC: .4byte 0x000002DE
_0800B1F0: .4byte gUnknown_08D2D2E8
_0800B1F4: .4byte 0x0000829B
_0800B1F8: .4byte 0x00008494

	thumb_func_start sub_0800B1FC
sub_0800B1FC: @ 0x0800B1FC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036BD8
	adds r6, r0, #0
	ldr r0, _0800B22C @ =gUnknown_02016028
	ldr r1, _0800B230 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800B234
	movs r0, #0xdf
	bl sub_0800399C
	bl sub_08037958
	bl sub_08039B5C
	bl sub_08037708
	b _0800B346
	.align 2, 0
_0800B22C: .4byte gUnknown_02016028
_0800B230: .4byte 0x0001ED10
_0800B234:
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0800B24A
	movs r0, #0
	bl sub_080379C0
	bl sub_08035414
	bl sub_080354CC
	b _0800B346
_0800B24A:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B264
	bl sub_08019FE4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B346
	bl sub_08037958
	bl sub_08004E64
	b _0800B346
_0800B264:
	ldr r0, _0800B284 @ =gScript
	ldr r2, _0800B288 @ =0x000082A4
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _0800B27E
	ldr r7, _0800B28C @ =0x000082B7
	adds r2, r5, r7
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B290
_0800B27E:
	movs r2, #0
	b _0800B2A8
	.align 2, 0
_0800B284: .4byte gScript
_0800B288: .4byte 0x000082A4
_0800B28C: .4byte 0x000082B7
_0800B290:
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0800B29E
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0800B29E:
	ldrh r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800B2A8:
	adds r3, r5, #0
	ldr r1, _0800B2FC @ =0x000082B8
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	orrs r1, r0
	ldr r7, _0800B300 @ =0x000082B9
	adds r0, r3, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	cmp r1, #0
	beq _0800B2CC
	movs r2, #0
_0800B2CC:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B308
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0800B30E
	ldr r0, _0800B304 @ =0x0000829E
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0800B30E
	bl sub_08033E70
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B346
	b _0800B30E
	.align 2, 0
_0800B2FC: .4byte 0x000082B8
_0800B300: .4byte 0x000082B9
_0800B304: .4byte 0x0000829E
_0800B308:
	ldr r2, _0800B34C @ =0x0000829E
	adds r0, r5, r2
	strh r1, [r0]
_0800B30E:
	ldrh r0, [r4, #2]
	bl sub_0802706C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_0800B7AC
	ldr r0, _0800B350 @ =gScript
	ldr r7, _0800B354 @ =0x00008494
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B346
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0800B346
	adds r0, r4, #0
	bl sub_08033CFC
_0800B346:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B34C: .4byte 0x0000829E
_0800B350: .4byte gScript
_0800B354: .4byte 0x00008494

	thumb_func_start sub_0800B358
sub_0800B358: @ 0x0800B358
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r1, _0800B3E4 @ =gUnknown_08D2D304
	ldr r7, _0800B3E8 @ =gScript
	ldr r2, _0800B3EC @ =0x00008299
	adds r0, r7, r2
	ldrb r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B458
	adds r2, #5
	adds r1, r7, r2
	ldrh r0, [r1]
	cmp r0, r5
	blo _0800B3C6
	adds r1, r5, #0
	bl sub_08091AE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	cmp r4, r6
	bhs _0800B3C6
	adds r0, r4, #0
	bl sub_08036BD8
	adds r1, r0, #0
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800B3C0
	ldr r1, _0800B3F0 @ =0x000082B6
	adds r0, r7, r1
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1c
	adds r0, r4, #0
	movs r1, #4
	bl sub_080332AC
_0800B3C0:
	mov r0, r8
	bl sub_08033484
_0800B3C6:
	ldr r2, _0800B3E8 @ =gScript
	ldr r0, _0800B3F4 @ =0x0000829E
	adds r4, r2, r0
	ldrh r3, [r4]
	ldr r1, _0800B3EC @ =0x00008299
	adds r0, r2, r1
	ldrb r0, [r0]
	muls r0, r5, r0
	cmp r3, r0
	blt _0800B3FC
	ldr r0, _0800B3F8 @ =0x0000829B
	adds r1, r2, r0
	movs r0, #2
	strb r0, [r1]
	b _0800B462
	.align 2, 0
_0800B3E4: .4byte gUnknown_08D2D304
_0800B3E8: .4byte gScript
_0800B3EC: .4byte 0x00008299
_0800B3F0: .4byte 0x000082B6
_0800B3F4: .4byte 0x0000829E
_0800B3F8: .4byte 0x0000829B
_0800B3FC:
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800B41C
	ldr r0, _0800B418 @ =0x0000829B
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	bl sub_08033C44
	b _0800B462
	.align 2, 0
_0800B418: .4byte 0x0000829B
_0800B41C:
	adds r0, r3, #1
	strh r0, [r4]
	movs r0, #0
_0800B422:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036BD8
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800B44E
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800B44E
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_0800B44E:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0800B422
	b _0800B462
_0800B458:
	ldr r2, _0800B470 @ =0x0000829B
	adds r0, r7, r2
	strb r1, [r0]
	bl sub_08033C44
_0800B462:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B470: .4byte 0x0000829B

	thumb_func_start sub_0800B474
sub_0800B474: @ 0x0800B474
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036BD8
	adds r1, r0, #0
	ldrh r2, [r4, #2]
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _0800B4A4
	ldr r0, _0800B49C @ =gScript
	ldr r1, _0800B4A0 @ =0x0000829B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bl sub_08033C44
	b _0800B4FC
	.align 2, 0
_0800B49C: .4byte gScript
_0800B4A0: .4byte 0x0000829B
_0800B4A4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0800B4C6
	adds r0, r1, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #3
	bl sub_080332AC
	movs r0, #1
	bl sub_08033DA8
	b _0800B4FC
_0800B4C6:
	movs r0, #0
_0800B4C8:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036BD8
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800B4F4
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800B4F4
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_0800B4F4:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0800B4C8
_0800B4FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B504
sub_0800B504: @ 0x0800B504
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036BD8
	adds r6, r0, #0
	ldr r0, _0800B534 @ =gUnknown_02016028
	ldr r1, _0800B538 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800B53C
	movs r0, #0xdf
	bl sub_0800399C
	bl sub_08037958
	bl sub_08039B5C
	bl sub_08037708
	b _0800B5F6
	.align 2, 0
_0800B534: .4byte gUnknown_02016028
_0800B538: .4byte 0x0001ED10
_0800B53C:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B556
	bl sub_08019FE4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B5F6
	bl sub_08037958
	bl sub_08004E64
	b _0800B5F6
_0800B556:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B568
	movs r0, #1
	bl sub_08033FEC
	b _0800B5F6
_0800B568:
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800B59A
	ldrh r0, [r4, #2]
	bl sub_0802706C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0800B5FC @ =gScript
	ldr r2, _0800B600 @ =0x000082B6
	adds r3, r0, r2
	ldrh r2, [r3]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _0800B59A
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _0800B604 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
_0800B59A:
	ldr r5, _0800B5FC @ =gScript
	ldr r1, _0800B600 @ =0x000082B6
	adds r0, r5, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x1c
	adds r0, r6, #0
	bl sub_08034348
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #3
	bl sub_0800B7AC
	ldr r2, _0800B608 @ =0x00009D14
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B5D8
	ldr r1, _0800B60C @ =0x0000829B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800B5D8
	movs r0, #0
	bl sub_08033DA8
_0800B5D8:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0800B5EA
	movs r0, #0
	bl sub_08033FEC
_0800B5EA:
	ldr r1, _0800B5FC @ =gScript
	ldr r2, _0800B610 @ =0x000082A0
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0800B5F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B5FC: .4byte gScript
_0800B600: .4byte 0x000082B6
_0800B604: .4byte 0xFFFFFE1F
_0800B608: .4byte 0x00009D14
_0800B60C: .4byte 0x0000829B
_0800B610: .4byte 0x000082A0

	thumb_func_start sub_0800B614
sub_0800B614: @ 0x0800B614
	push {lr}
	bl sub_08034158
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B62E
	ldr r0, _0800B634 @ =gScript
	ldr r1, _0800B638 @ =0x0000829B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bl sub_080340F8
_0800B62E:
	pop {r0}
	bx r0
	.align 2, 0
_0800B634: .4byte gScript
_0800B638: .4byte 0x0000829B

	thumb_func_start sub_0800B63C
sub_0800B63C: @ 0x0800B63C
	push {lr}
	bl sub_080345AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B652
	ldr r0, _0800B658 @ =gScript
	ldr r1, _0800B65C @ =0x0000829B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0800B652:
	pop {r0}
	bx r0
	.align 2, 0
_0800B658: .4byte gScript
_0800B65C: .4byte 0x0000829B

	thumb_func_start sub_0800B660
sub_0800B660: @ 0x0800B660
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036BD8
	adds r5, r0, #0
	ldr r0, _0800B688 @ =gUnknown_02016028
	ldr r1, _0800B68C @ =0x0001ED10
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800B690
	movs r0, #0xdf
	bl sub_0800399C
	bl sub_08037708
	b _0800B790
	.align 2, 0
_0800B688: .4byte gUnknown_02016028
_0800B68C: .4byte 0x0001ED10
_0800B690:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B6AA
	bl sub_08019FE4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B790
	bl sub_08037958
	bl sub_08004E64
	b _0800B790
_0800B6AA:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B6EE
	ldr r0, _0800B6CC @ =gScript
	ldr r1, _0800B6D0 @ =0x000082B6
	adds r2, r0, r1
	ldrh r1, [r2]
	lsls r0, r1, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800B6D8
	ldr r0, _0800B6D4 @ =0xFFFFFE1F
	ands r0, r1
	strh r0, [r2]
	b _0800B720
	.align 2, 0
_0800B6CC: .4byte gScript
_0800B6D0: .4byte 0x000082B6
_0800B6D4: .4byte 0xFFFFFE1F
_0800B6D8:
	bl sub_0801AB50
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B6E8
	bl sub_080259D4
	b _0800B790
_0800B6E8:
	bl sub_08025CB0
	b _0800B790
_0800B6EE:
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800B720
	ldrh r0, [r4, #2]
	bl sub_0802706C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0800B798 @ =gScript
	ldr r2, _0800B79C @ =0x000082B6
	adds r3, r0, r2
	ldrh r2, [r3]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _0800B720
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _0800B7A0 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
_0800B720:
	ldr r6, _0800B798 @ =gScript
	ldr r0, _0800B79C @ =0x000082B6
	adds r4, r6, r0
	ldrh r1, [r4]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	adds r0, r5, #0
	movs r2, #4
	movs r3, #1
	bl sub_0800B7AC
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _0800B74C
	ldrh r1, [r4]
	ldr r0, _0800B7A0 @ =0xFFFFFE1F
	ands r0, r1
	strh r0, [r4]
_0800B74C:
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800B77E
	ldr r1, _0800B7A4 @ =0x000082AC
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0800B77E
	subs r0, #2
	cmp r1, r0
	blt _0800B77E
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #0
	bl sub_080332AC
_0800B77E:
	ldr r0, _0800B798 @ =gScript
	ldr r1, _0800B7A8 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B790
	bl sub_08034288
_0800B790:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B798: .4byte gScript
_0800B79C: .4byte 0x000082B6
_0800B7A0: .4byte 0xFFFFFE1F
_0800B7A4: .4byte 0x000082AC
_0800B7A8: .4byte 0x00008494

	thumb_func_start sub_0800B7AC
sub_0800B7AC: @ 0x0800B7AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800B828
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	mov r8, r0
	movs r1, #0
	mov sl, r1
	adds r0, r2, #0
	bl sub_080270D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270C8
	adds r6, r0, #0
	ldr r0, _0800B820 @ =gScript
	ldr r2, _0800B824 @ =0x0000829B
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800B82C
	mov r3, sl
	strb r3, [r1]
	bl sub_08033CA0
	b _0800B82C
	.align 2, 0
_0800B820: .4byte gScript
_0800B824: .4byte 0x0000829B
_0800B828:
	mov r0, sp
	strh r2, [r0]
_0800B82C:
	ldr r3, _0800B8CC @ =gScript
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _0800B8D0 @ =0x000082B7
	adds r1, r1, r3
	mov sb, r1
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	adds r7, r3, #0
	cmp r0, #0
	beq _0800B85A
	b _0800B9F4
_0800B85A:
	cmp r6, #0
	beq _0800B860
	b _0800B9F4
_0800B860:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0800B8FE
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800B8FE
	ldr r1, _0800B8D4 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	str r0, [sp, #8]
	add r4, sp, #8
	strh r6, [r4, #2]
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r4, #0
	bl sub_080344CC
	ldr r0, [sp, #8]
	mov r8, r4
	cmp r0, #0
	bne _0800B896
	b _0800BB3C
_0800B896:
	ldr r2, _0800B8D8 @ =0x000082AA
	adds r0, r7, r2
	strh r6, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B8E4
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r2, #0x10
	bl sub_0800CCA8
	ldr r0, _0800B8DC @ =gUnknown_02016028
	ldr r3, _0800B8E0 @ =0x0001ED10
	adds r2, r0, r3
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	blt _0800B8CA
	b _0800BB3C
_0800B8CA:
	b _0800BAE8
	.align 2, 0
_0800B8CC: .4byte gScript
_0800B8D0: .4byte 0x000082B7
_0800B8D4: .4byte 0xFFFF0000
_0800B8D8: .4byte 0x000082AA
_0800B8DC: .4byte gUnknown_02016028
_0800B8E0: .4byte 0x0001ED10
_0800B8E4:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800B8F0
	b _0800BB3C
_0800B8F0:
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0800BB3C
_0800B8FE:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	add r7, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r1, r7, #0
	bl sub_080270A0
	ldr r6, _0800B964 @ =gScript
	ldr r3, _0800B968 @ =0x000082B7
	adds r2, r6, r3
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0800B926
	ldr r0, _0800B96C @ =0x0000829B
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
_0800B926:
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800B970 @ =gUnknown_02016028
	ldr r1, _0800B974 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800B94A
	adds r0, r5, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800B97C
_0800B94A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0800C10C
	ldr r2, _0800B978 @ =0x00008494
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800B960
	b _0800BB3C
_0800B960:
	b _0800B9D2
	.align 2, 0
_0800B964: .4byte gScript
_0800B968: .4byte 0x000082B7
_0800B96C: .4byte 0x0000829B
_0800B970: .4byte gUnknown_02016028
_0800B974: .4byte 0x0001ED10
_0800B978: .4byte 0x00008494
_0800B97C:
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	add r2, sp, #4
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	bl sub_0801A978
	str r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800B9D2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x88
	ldrh r1, [r1]
	adds r2, r5, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	movs r0, #1
	bl sub_08033AEC
_0800B9D2:
	ldr r0, _0800B9EC @ =gScript
	ldr r3, _0800B9F0 @ =0x0000829B
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B9E0
	b _0800BB3C
_0800B9E0:
	bl sub_08035414
	bl sub_080354CC
	b _0800BB3C
	.align 2, 0
_0800B9EC: .4byte gScript
_0800B9F0: .4byte 0x0000829B
_0800B9F4:
	ldr r0, _0800BA2C @ =0x000082B7
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r5, #0
	adds r1, #0x9e
	movs r2, #0
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800BA30
	add r0, sp, #8
	strh r2, [r0]
	strh r2, [r0, #2]
	mov r8, r0
	b _0800BA6C
	.align 2, 0
_0800BA2C: .4byte 0x000082B7
_0800BA30:
	bl sub_0802B188
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BA3C
	b _0800BB3C
_0800BA3C:
	add r4, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080270A0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080343B8
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	strh r0, [r4, #2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	strh r0, [r4]
	mov r8, r4
_0800BA6C:
	adds r0, r5, #0
	adds r0, #0x8f
	strb r6, [r0]
	ldrb r0, [r0]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r4, _0800BAF4 @ =gScript
	ldr r2, _0800BAF8 @ =0x000082AA
	adds r0, r4, r2
	mov r3, sl
	strh r3, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BB08
	ldr r0, [r4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800BAC8
	ldr r1, _0800BAFC @ =0x00009D10
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0800BAC8
	mov r2, r8
	strh r1, [r2]
	strh r1, [r2, #2]
_0800BAC8:
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	add r1, sp, #8
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #0x10
	bl sub_0800CCA8
	ldr r0, _0800BB00 @ =gUnknown_02016028
	ldr r3, _0800BB04 @ =0x0001ED10
	adds r2, r0, r3
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0800BB20
_0800BAE8:
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0800BB3C
	.align 2, 0
_0800BAF4: .4byte gScript
_0800BAF8: .4byte 0x000082AA
_0800BAFC: .4byte 0x00009D10
_0800BB00: .4byte gUnknown_02016028
_0800BB04: .4byte 0x0001ED10
_0800BB08:
	ldr r1, _0800BB4C @ =0x000082B7
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800BB20
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0800BB20:
	ldr r3, _0800BB50 @ =gScript
	mov r0, sp
	ldrh r0, [r0]
	ldr r2, _0800BB4C @ =0x000082B7
	adds r3, r3, r2
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0800BB3C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB4C: .4byte 0x000082B7
_0800BB50: .4byte gScript

	thumb_func_start sub_0800BB54
sub_0800BB54: @ 0x0800BB54
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r0, _0800BB6C @ =gScript
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800BB70
	adds r0, r1, #0
	bl sub_0800BBF4
	b _0800BBEC
	.align 2, 0
_0800BB6C: .4byte gScript
_0800BB70:
	ldr r0, _0800BBB4 @ =gUnknown_02016028
	ldr r1, _0800BBB8 @ =0x0000566C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800BBEC
	movs r0, #0
	bl sub_08036BD8
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800BBBC
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0800BBBC
	adds r0, r4, #0
	bl sub_0800BC48
	b _0800BBEC
	.align 2, 0
_0800BBB4: .4byte gUnknown_02016028
_0800BBB8: .4byte 0x0000566C
_0800BBBC:
	movs r5, #0
_0800BBBE:
	adds r0, r5, #0
	bl sub_08036BD8
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800BBE2
	adds r0, r4, #0
	bl sub_08036BA4
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0800BBE2
	adds r0, r4, #0
	bl sub_0800BE04
_0800BBE2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0800BBBE
_0800BBEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800BBF4
sub_0800BBF4: @ 0x0800BBF4
	push {lr}
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0800BC30
	movs r0, #0
	bl sub_0802610C
	movs r0, #4
	bl sub_080052E4
	ldr r2, _0800BC34 @ =gScript
	ldr r1, _0800BC38 @ =0x0000595C
	adds r0, r2, r1
	movs r1, #0x15
	strb r1, [r0]
	ldr r3, _0800BC3C @ =0x0000595B
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _0800BC40 @ =0x0000598C
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0800BC44 @ =0x00005960
	adds r2, r2, r1
	movs r0, #0x28
	strh r0, [r2]
_0800BC30:
	pop {r0}
	bx r0
	.align 2, 0
_0800BC34: .4byte gScript
_0800BC38: .4byte 0x0000595C
_0800BC3C: .4byte 0x0000595B
_0800BC40: .4byte 0x0000598C
_0800BC44: .4byte 0x00005960

	thumb_func_start sub_0800BC48
sub_0800BC48: @ 0x0800BC48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r5, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r2, [r5, #0x34]
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BCA0
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x10
	ldrh r3, [r2, #0xa]
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r5, #0
	bl sub_08002E8C
	ldr r1, _0800BC9C @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r1
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1, #2]
	b _0800BD14
	.align 2, 0
_0800BC9C: .4byte 0xFFFF0000
_0800BCA0:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1c
	mov r2, sp
	adds r2, #0xe
	add r1, sp, #0xc
	bl sub_080270A0
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800BCE4
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0800BCE4:
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800BD14
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800BD14
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, [r5, #0x34]
	movs r1, #2
	ldrsh r0, [r0, r1]
	movs r1, #1
	cmp r0, #0x10
	ble _0800BD0A
	movs r1, #3
_0800BD0A:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0800BD14:
	add r4, sp, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BDF2
	ldr r7, _0800BDA8 @ =gScript
	ldr r2, _0800BDAC @ =0x000067B8
	adds r0, r7, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0800BDDC
	ldr r0, [r5, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	cmp r2, #1
	bls _0800BD5A
	add r0, sp, #0xc
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	add r0, sp, #0xc
	strh r1, [r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	strh r0, [r4, #2]
_0800BD5A:
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	add r4, sp, #0x10
	mov r0, sp
	adds r0, #0x12
	str r0, [sp]
	add r6, sp, #0x14
	str r6, [sp, #4]
	adds r0, #4
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0800F99C
	mov r1, r8
	cmp r1, #0
	bne _0800BDB4
	ldr r2, _0800BDB0 @ =0x000067A4
	adds r3, r7, r2
	ldr r2, [r5, #0x34]
	ldrh r1, [r4]
	ldrh r0, [r2, #2]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
	strh r0, [r3]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #2]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	strh r0, [r3, #2]
	movs r7, #0
	ldrsh r0, [r6, r7]
	b _0800BDCE
	.align 2, 0
_0800BDA8: .4byte gScript
_0800BDAC: .4byte 0x000067B8
_0800BDB0: .4byte 0x000067A4
_0800BDB4:
	ldr r0, _0800BDD8 @ =0x000067A4
	adds r1, r7, r0
	ldrh r0, [r4]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldr r1, [r5, #0x34]
	movs r0, #4
	strh r0, [r1, #2]
	movs r1, #0
	ldrsh r0, [r6, r1]
_0800BDCE:
	movs r2, #2
	ldrsh r1, [r6, r2]
	bl sub_08034A8C
	b _0800BDEA
	.align 2, 0
_0800BDD8: .4byte 0x000067A4
_0800BDDC:
	add r0, sp, #0xc
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_08034A8C
_0800BDEA:
	adds r0, r5, #0
	bl sub_080360E0
	b _0800BDF8
_0800BDF2:
	adds r0, r5, #0
	bl sub_08035FE4
_0800BDF8:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800BE04
sub_0800BE04: @ 0x0800BE04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #0x14]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0800BE40
	adds r0, r4, #0
	bl sub_0800C030
	b _0800C020
_0800BE40:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BE70
	adds r0, r4, #0
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x10
	ldrh r3, [r2, #0xa]
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r4, #0
	bl sub_08002E8C
	ldr r1, _0800BE6C @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r5, [r0, #2]
	b _0800BEE4
	.align 2, 0
_0800BE6C: .4byte 0xFFFF0000
_0800BE70:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1c
	mov r2, sp
	adds r2, #0xe
	add r1, sp, #0xc
	bl sub_080270A0
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0xbc
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800BEB4
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
_0800BEB4:
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800BEE4
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800BEE4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, [r4, #0x34]
	movs r1, #2
	ldrsh r0, [r0, r1]
	movs r1, #1
	cmp r0, #0x10
	ble _0800BEDA
	movs r1, #3
_0800BEDA:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0800BEE4:
	add r5, sp, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800BEF6
	b _0800C01A
_0800BEF6:
	movs r2, #0
	ldr r1, _0800BF9C @ =0xFFFF0000
	ldr r0, [sp, #0x10]
	ands r0, r1
	str r0, [sp, #0x10]
	add r1, sp, #0x10
	strh r2, [r1, #2]
	ldr r2, _0800BFA0 @ =gScript
	mov r8, r2
	ldr r0, _0800BFA4 @ =0x000067B8
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r4, #0
	adds r2, #0x85
	adds r7, r1, #0
	ldrb r2, [r2]
	cmp r0, r2
	bne _0800BFCC
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	cmp r2, #1
	bls _0800BF44
	add r0, sp, #0xc
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	add r0, sp, #0xc
	strh r1, [r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	muls r0, r2, r0
	strh r0, [r5, #2]
_0800BF44:
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	add r5, sp, #0x14
	adds r0, #0xa
	str r0, [sp]
	add r6, sp, #0x18
	str r6, [sp, #4]
	adds r0, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0800F99C
	mov r0, sb
	cmp r0, #0
	bne _0800BFAC
	ldr r3, _0800BFA8 @ =0x000067A4
	add r3, r8
	ldr r2, [r4, #0x34]
	ldrh r1, [r5]
	mov r8, r1
	ldrh r0, [r2, #2]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	strh r0, [r3]
	ldrh r1, [r5, #2]
	ldrh r0, [r2, #2]
	adds r5, r1, #0
	muls r5, r0, r5
	adds r0, r5, #0
	strh r0, [r3, #2]
	ldrh r1, [r2, #2]
	ldrh r0, [r6]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, #0
	strh r0, [r7]
	ldrh r1, [r2, #2]
	ldrh r0, [r6, #2]
	b _0800BFE0
	.align 2, 0
_0800BF9C: .4byte 0xFFFF0000
_0800BFA0: .4byte gScript
_0800BFA4: .4byte 0x000067B8
_0800BFA8: .4byte 0x000067A4
_0800BFAC:
	ldr r1, _0800BFC8 @ =0x000067A4
	add r1, r8
	ldrh r0, [r5]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsls r0, r0, #4
	strh r0, [r7]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	b _0800BFE6
	.align 2, 0
_0800BFC8: .4byte 0x000067A4
_0800BFCC:
	ldr r2, [r4, #0x34]
	ldrh r1, [r2, #2]
	add r0, sp, #0xc
	ldrh r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, #0
	strh r0, [r7]
	ldrh r1, [r2, #2]
	ldrh r0, [r5, #2]
_0800BFE0:
	adds r5, r1, #0
	muls r5, r0, r5
	adds r0, r5, #0
_0800BFE6:
	strh r0, [r7, #2]
	ldrh r0, [r7]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800C00A
	adds r1, r4, #0
	adds r1, #0xb6
	ldrh r0, [r7, #2]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0800C012
_0800C00A:
	ldrh r0, [r7, #2]
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
_0800C012:
	adds r0, r4, #0
	bl sub_080360E0
	b _0800C020
_0800C01A:
	adds r0, r4, #0
	bl sub_08035FE4
_0800C020:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C030
sub_0800C030: @ 0x0800C030
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0xbc
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800C096
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
_0800C096:
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800C0BC
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, [r4, #0x34]
	movs r1, #2
	ldrsh r0, [r0, r1]
	movs r1, #1
	cmp r0, #0x10
	ble _0800C0B2
	movs r1, #3
_0800C0B2:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0800C0BC:
	mov r5, sp
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C0FC
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C0EE
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08034CE8
	adds r0, r4, #0
	bl sub_080360E0
	b _0800C102
_0800C0EE:
	adds r0, r4, #0
	bl sub_08034DA8
	adds r0, r4, #0
	bl sub_080361DC
	b _0800C102
_0800C0FC:
	adds r0, r4, #0
	bl sub_08035FE4
_0800C102:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C10C
sub_0800C10C: @ 0x0800C10C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	adds r6, r1, #0
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	adds r5, r7, #0
	adds r5, #0x85
	ldrb r0, [r5]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0xbd
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r2]
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r7, #0x18]
	adds r2, r7, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x18]
	ldr r2, [r0]
	lsls r0, r2, #0x18
	mov r8, r4
	cmp r0, #0
	bge _0800C1CC
	ldr r0, _0800C1C4 @ =gScript
	ldr r1, _0800C1C8 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800C18A
	movs r0, #5
	bl sub_08003BA8
_0800C18A:
	adds r0, r7, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	bge _0800C198
	b _0800C2D8
_0800C198:
	ldrb r4, [r5]
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	movs r0, #1
	bl sub_08033AEC
	b _0800C2D8
	.align 2, 0
_0800C1C4: .4byte gScript
_0800C1C8: .4byte 0x0000829B
_0800C1CC:
	ldr r0, _0800C208 @ =gScript
	ldr r3, _0800C20C @ =0x000082AA
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800C2D8
	lsls r0, r2, #0x17
	cmp r0, #0
	bge _0800C23C
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldrh r1, [r6]
	cmp r0, #0
	bge _0800C210
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0800C210
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0800C2A2
	.align 2, 0
_0800C208: .4byte gScript
_0800C20C: .4byte 0x000082AA
_0800C210:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _0800C294
	movs r3, #2
	ldrsh r1, [r6, r3]
	cmp r1, #0
	blt _0800C294
	cmp r0, #0
	blt _0800C22C
	adds r2, r7, #0
	adds r2, #0xbc
	cmp r1, #0
	ble _0800C2A6
_0800C22C:
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0800C2A2
_0800C23C:
	lsls r0, r2, #0x16
	adds r2, r7, #0
	adds r2, #0xbc
	cmp r0, #0
	bge _0800C2A6
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldrh r1, [r6]
	cmp r0, #0
	ble _0800C268
	movs r3, #2
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0800C268
	ldrb r0, [r2]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
	b _0800C2A6
_0800C268:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0800C278
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r1, #0
	bge _0800C288
_0800C278:
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0800C2A2
_0800C288:
	cmp r0, #0
	bgt _0800C294
	adds r2, r7, #0
	adds r2, #0xbc
	cmp r1, #0
	ble _0800C2A6
_0800C294:
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
_0800C2A2:
	orrs r0, r1
	strb r0, [r2]
_0800C2A6:
	adds r0, r7, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldr r4, _0800C354 @ =gScript
	ldr r3, _0800C358 @ =0x000082AA
	adds r5, r4, r3
	ldrh r1, [r5]
	ldrb r2, [r2]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_080332AC
	ldr r0, [r4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800C2D8
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _0800C2D8
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08033AEC
_0800C2D8:
	ldr r0, _0800C354 @ =gScript
	ldr r3, _0800C358 @ =0x000082AA
	adds r2, r0, r3
	ldr r1, _0800C35C @ =0x0000FFFF
	strh r1, [r2]
	ldr r1, _0800C360 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800C2F0
	b _0800C67C
_0800C2F0:
	ldr r0, [r7, #0x18]
	mov r1, r8
	adds r2, r6, #0
	bl sub_0800F314
	add r3, sp, #4
	ldrh r1, [r3]
	ldr r2, _0800C364 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r1, r8
	ldrh r0, [r1, #2]
	add r5, sp, #8
	strh r0, [r5, #2]
	ldrh r1, [r6]
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrh r2, [r6, #2]
	add r4, sp, #0xc
	strh r2, [r4, #2]
	ldrh r0, [r3]
	adds r1, r1, r0
	strh r1, [r3]
	mov r1, r8
	ldrh r0, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	movs r2, #0
	ldrsh r0, [r3, r2]
	mov sb, r5
	mov sl, r4
	cmp r0, #0
	blt _0800C370
	movs r3, #0
	ldrsh r4, [r1, r3]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C368
	mov r1, r8
	ldrh r0, [r1]
	b _0800C372
	.align 2, 0
_0800C354: .4byte gScript
_0800C358: .4byte 0x000082AA
_0800C35C: .4byte 0x0000FFFF
_0800C360: .4byte 0x00008494
_0800C364: .4byte 0xFFFF0000
_0800C368:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C372
_0800C370:
	movs r0, #0
_0800C372:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C39E
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C396
	ldrh r0, [r5, #2]
	b _0800C3A0
_0800C396:
	bl sub_0801A604
	subs r0, #1
	b _0800C3A0
_0800C39E:
	movs r0, #0
_0800C3A0:
	mov r1, r8
	strh r0, [r1, #2]
	ldrh r1, [r6]
	lsls r1, r1, #4
	ldrh r2, [r7]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp, #0x10]
	ldr r1, _0800C3D4 @ =gScript
	ldr r2, _0800C3D8 @ =0x0000829B
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #6
	bne _0800C3DC
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	b _0800C3F2
	.align 2, 0
_0800C3D4: .4byte gScript
_0800C3D8: .4byte 0x0000829B
_0800C3DC:
	mov r2, sp
	ldrb r1, [r4, #8]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	ldr r3, _0800C458 @ =0x000082B7
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	strh r1, [r2]
_0800C3F2:
	adds r1, r4, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800C3FC
	b _0800C520
_0800C3FC:
	ldr r2, _0800C45C @ =0x0000829B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800C40C
	cmp r0, #6
	beq _0800C40C
	b _0800C520
_0800C40C:
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C422
	b _0800C52A
_0800C422:
	ldr r3, _0800C460 @ =0x00008494
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800C430
	b _0800C680
_0800C430:
	mov r1, sb
	ldrh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	add r0, sp, #8
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
	mov r3, sl
	ldrh r4, [r3]
	strh r4, [r6]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r6, #2]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bne _0800C464
	movs r0, #1
	b _0800C472
	.align 2, 0
_0800C458: .4byte 0x000082B7
_0800C45C: .4byte 0x0000829B
_0800C460: .4byte 0x00008494
_0800C464:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C474
	ldr r1, _0800C484 @ =0x0000FFFF
	adds r0, r1, #0
	orrs r0, r4
_0800C472:
	strh r0, [r6]
_0800C474:
	ldrh r2, [r6, #2]
	movs r3, #2
	ldrsh r1, [r6, r3]
	cmp r1, #2
	bne _0800C488
	movs r0, #1
	b _0800C496
	.align 2, 0
_0800C484: .4byte 0x0000FFFF
_0800C488:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C498
	ldr r1, _0800C4CC @ =0x0000FFFF
	adds r0, r1, #0
	orrs r0, r2
_0800C496:
	strh r0, [r6, #2]
_0800C498:
	ldrh r3, [r6]
	mov r2, r8
	ldrh r2, [r2]
	adds r3, r3, r2
	add r2, sp, #4
	strh r3, [r2]
	ldrh r0, [r2, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	lsls r3, r3, #0x10
	cmp r3, #0
	blt _0800C4D8
	mov r3, r8
	movs r0, #0
	ldrsh r4, [r3, r0]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C4D0
	mov r1, r8
	ldrh r0, [r1]
	b _0800C4DA
	.align 2, 0
_0800C4CC: .4byte 0x0000FFFF
_0800C4D0:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C4DA
_0800C4D8:
	movs r0, #0
_0800C4DA:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C506
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C4FE
	ldrh r0, [r5, #2]
	b _0800C508
_0800C4FE:
	bl sub_0801A604
	subs r0, #1
	b _0800C508
_0800C506:
	movs r0, #0
_0800C508:
	mov r1, r8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r7, #0
_0800C512:
	adds r2, r6, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C52A
	b _0800C680
_0800C520:
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r7, #0
	mov r1, r8
	b _0800C512
_0800C52A:
	ldrh r0, [r6]
	lsls r0, r0, #4
	ldrh r2, [r7]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #4
	ldrh r3, [r7, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r2, _0800C598 @ =0x0000FFFF
	mov r8, r2
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r5, _0800C59C @ =gScript
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800C600
	ldr r3, _0800C5A0 @ =0x0000829B
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800C55E
	cmp r0, #6
	bne _0800C600
_0800C55E:
	ldr r1, _0800C5A4 @ =0x000082B7
	adds r0, r5, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800C600
	add r4, sp, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C57C
	b _0800C670
_0800C57C:
	ldr r2, _0800C5A8 @ =0x00008494
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800C58A
	b _0800C680
_0800C58A:
	ldrh r2, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	cmp r1, #2
	bne _0800C5AC
	movs r0, #1
	b _0800C5B8
	.align 2, 0
_0800C598: .4byte 0x0000FFFF
_0800C59C: .4byte gScript
_0800C5A0: .4byte 0x0000829B
_0800C5A4: .4byte 0x000082B7
_0800C5A8: .4byte 0x00008494
_0800C5AC:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C5BA
	mov r0, r8
	orrs r0, r2
_0800C5B8:
	strh r0, [r6]
_0800C5BA:
	ldrh r2, [r6, #2]
	movs r3, #2
	ldrsh r1, [r6, r3]
	cmp r1, #2
	bne _0800C5C8
	movs r0, #1
	b _0800C5D6
_0800C5C8:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C5D8
	ldr r1, _0800C5FC @ =0x0000FFFF
	adds r0, r1, #0
	orrs r0, r2
_0800C5D6:
	strh r0, [r6, #2]
_0800C5D8:
	ldrh r0, [r6]
	lsls r0, r0, #4
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	add r1, sp, #0x10
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C670
	b _0800C680
	.align 2, 0
_0800C5FC: .4byte 0x0000FFFF
_0800C600:
	mov r5, sp
	adds r5, #2
	movs r0, #0
	strh r0, [r5]
	add r4, sp, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C648
	ldr r0, _0800C640 @ =gScript
	ldr r1, _0800C644 @ =0x000082B7
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	strh r0, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800EA38
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C648
_0800C632:
	adds r0, r7, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _0800C680
	.align 2, 0
_0800C640: .4byte gScript
_0800C644: .4byte 0x000082B7
_0800C648:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800C670
	ldrh r0, [r6]
	lsls r0, r0, #4
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	add r1, sp, #0x10
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C632
_0800C670:
	adds r0, r6, #0
	bl sub_0802B370
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C680
_0800C67C:
	movs r0, #1
	b _0800C682
_0800C680:
	movs r0, #0
_0800C682:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C694
sub_0800C694: @ 0x0800C694
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	adds r7, r1, #0
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	movs r0, #0x85
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r6, #0
	adds r5, #0xbd
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r5]
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r5]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r6, #0x18]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x96
	ldrh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0800C724 @ =gScript
	ldr r1, _0800C728 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	mov sl, r4
	cmp r0, #0
	beq _0800C72C
	ldr r0, [r6, #0x34]
	cmp r0, #0
	bne _0800C718
	b _0800CBCC
_0800C718:
	adds r0, r6, #0
	mov r1, sl
	bl sub_0800F580
	b _0800CBCC
	.align 2, 0
_0800C724: .4byte gScript
_0800C728: .4byte 0x00008494
_0800C72C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sl
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800C780
	mov r1, sp
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800C786
	adds r0, r2, #0
	bl sub_080270D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270C8
	adds r1, r6, #0
	adds r1, #0x8f
	strb r0, [r1]
	mov r2, r8
	ldrb r4, [r2]
	ldrb r0, [r1]
	bl sub_080270B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	b _0800C786
_0800C780:
	mov r0, sp
	adds r0, #2
	strh r2, [r0]
_0800C786:
	ldr r2, _0800C7FC @ =gScript
	mov r1, sp
	ldrh r0, [r1, #2]
	ldr r1, _0800C800 @ =0x00008382
	adds r2, r2, r1
	movs r1, #1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	mov r2, sp
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _0800C7AE
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
_0800C7AE:
	ldr r0, [r6, #0x18]
	mov r1, sl
	adds r2, r7, #0
	bl sub_0800F314
	add r3, sp, #4
	ldrh r1, [r3]
	ldr r2, _0800C804 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r1, sl
	ldrh r0, [r1, #2]
	add r5, sp, #8
	strh r0, [r5, #2]
	ldrh r1, [r7]
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrh r2, [r7, #2]
	add r4, sp, #0xc
	strh r2, [r4, #2]
	ldrh r0, [r3]
	adds r1, r1, r0
	strh r1, [r3]
	mov r1, sl
	ldrh r0, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_08035B78
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C808
	movs r0, #0
	b _0800CBCE
	.align 2, 0
_0800C7FC: .4byte gScript
_0800C800: .4byte 0x00008382
_0800C804: .4byte 0xFFFF0000
_0800C808:
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0800C830
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C828
	mov r1, sl
	ldrh r0, [r1]
	b _0800C832
_0800C828:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C832
_0800C830:
	movs r0, #0
_0800C832:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C85E
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C856
	ldrh r0, [r5, #2]
	b _0800C860
_0800C856:
	bl sub_0801A604
	subs r0, #1
	b _0800C860
_0800C85E:
	movs r0, #0
_0800C860:
	mov r1, sl
	strh r0, [r1, #2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r1]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C888
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #8
	b _0800C8B2
_0800C888:
	ldrh r0, [r7]
	lsls r0, r0, #4
	ldrh r2, [r6]
	adds r0, r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	ldrh r2, [r6, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C8D2
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x10
_0800C8B2:
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	b _0800CBCE
_0800C8BA:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #8
	b _0800C8CC
_0800C8C4:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x10
_0800C8CC:
	orrs r0, r1
	strb r0, [r2]
	b _0800CA28
_0800C8D2:
	ldr r0, _0800C988 @ =gScript
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _0800C8DE
	b _0800CA4A
_0800C8DE:
	ldr r2, [r6, #0x34]
	cmp r2, #0
	beq _0800C8E6
	b _0800CA4A
_0800C8E6:
	adds r0, r6, #0
	adds r0, #0x96
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x10
	bhi _0800C8F6
	b _0800CA4A
_0800C8F6:
	lsrs r1, r1, #0x12
	str r1, [sp, #0x14]
	adds r0, r6, #0
	adds r0, #0x98
	strh r2, [r0]
	movs r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x20]
	add r2, sp, #4
	mov sb, r2
	mov r8, r0
	mov r0, sl
	str r0, [sp, #0x18]
_0800C910:
	mov r1, sp
	ldrh r0, [r1, #8]
	mov r2, sl
	strh r0, [r2]
	add r0, sp, #8
	ldrh r0, [r0, #2]
	mov r1, sb
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #0xc]
	strh r0, [r7]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	strh r0, [r1]
	ldrh r1, [r1]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	mov r2, sb
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08035B78
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CA28
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800C994
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C98C
	mov r1, sl
	ldrh r0, [r1]
	b _0800C996
	.align 2, 0
_0800C988: .4byte gScript
_0800C98C:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C996
_0800C994:
	movs r0, #0
_0800C996:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C9C2
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C9BA
	ldrh r0, [r5, #2]
	b _0800C9C4
_0800C9BA:
	bl sub_0801A604
	subs r0, #1
	b _0800C9C4
_0800C9C2:
	movs r0, #0
_0800C9C4:
	ldr r1, [sp, #0x18]
	strh r0, [r1, #2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r1]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C9E4
	b _0800C8BA
_0800C9E4:
	mov r2, r8
	ldrh r1, [r2]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sl
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CA18
	b _0800C8C4
_0800CA18:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #3
	bhi _0800CA28
	b _0800C910
_0800CA28:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0800CA30
	b _0800CBA0
_0800CA30:
	b _0800CBA8
_0800CA32:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #8
	b _0800CA44
_0800CA3C:
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x10
_0800CA44:
	orrs r0, r1
	strb r0, [r2]
	b _0800CB9A
_0800CA4A:
	ldrb r0, [r3]
	cmp r0, #9
	beq _0800CA52
	b _0800CBCC
_0800CA52:
	ldr r0, [r6, #0x34]
	cmp r0, #0
	bne _0800CA5A
	b _0800CBCC
_0800CA5A:
	ldrh r0, [r0, #2]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x10
	bgt _0800CA66
	b _0800CBCC
_0800CA66:
	asrs r0, r1, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r1, r6, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	add r1, sp, #4
	mov sb, r1
	ldr r2, [sp, #0x20]
	mov r8, r2
	mov r0, sl
	str r0, [sp, #0x1c]
_0800CA86:
	mov r1, sp
	ldrh r0, [r1, #8]
	mov r2, sl
	strh r0, [r2]
	add r0, sp, #8
	ldrh r0, [r0, #2]
	mov r1, sb
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #0xc]
	strh r0, [r7]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	adds r0, r2, r0
	strh r0, [r1]
	ldrh r1, [r1]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	mov r2, sb
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08035B78
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CB9A
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800CB06
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CAFE
	mov r1, sl
	ldrh r0, [r1]
	b _0800CB08
_0800CAFE:
	bl sub_0801A5EC
	subs r0, #1
	b _0800CB08
_0800CB06:
	movs r0, #0
_0800CB08:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800CB34
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CB2C
	ldrh r0, [r5, #2]
	b _0800CB36
_0800CB2C:
	bl sub_0801A604
	subs r0, #1
	b _0800CB36
_0800CB34:
	movs r0, #0
_0800CB36:
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r1]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CB56
	b _0800CA32
_0800CB56:
	mov r2, r8
	ldrh r1, [r2]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2, #2]
	adds r0, r6, #0
	mov r1, sl
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CB8A
	b _0800CA3C
_0800CB8A:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #3
	bhi _0800CB9A
	b _0800CA86
_0800CB9A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0800CBA8
_0800CBA0:
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	movs r0, #0
	b _0800CBCE
_0800CBA8:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _0800CBC0
	ldr r2, [sp, #0x20]
	ldrh r0, [r2]
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	strh r0, [r2]
_0800CBC0:
	mov r2, sp
	ldrh r0, [r2, #0xc]
	strh r0, [r7]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
_0800CBCC:
	movs r0, #1
_0800CBCE:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800CBE0
sub_0800CBE0: @ 0x0800CBE0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	mov r1, sp
	bl sub_08036BEC
	movs r2, #1
	ldr r1, _0800CC30 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	add r4, sp, #4
	strh r2, [r4, #2]
	adds r0, r6, #0
	mov r1, sp
	bl sub_08035B78
	lsls r0, r0, #0x10
	adds r7, r4, #0
	cmp r0, #0
	beq _0800CC9E
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0800CC3C
	mov r0, sp
	movs r1, #0
	ldrsh r4, [r0, r1]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CC34
	mov r0, sp
	ldrh r1, [r0]
	b _0800CC3E
	.align 2, 0
_0800CC30: .4byte 0xFFFF0000
_0800CC34:
	bl sub_0801A5EC
	subs r1, r0, #1
	b _0800CC3E
_0800CC3C:
	movs r1, #0
_0800CC3E:
	mov r0, sp
	strh r1, [r0]
	mov r5, sp
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800CC6A
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CC62
	ldrh r0, [r5, #2]
	b _0800CC6C
_0800CC62:
	bl sub_0801A604
	subs r0, #1
	b _0800CC6C
_0800CC6A:
	movs r0, #0
_0800CC6C:
	mov r4, sp
	strh r0, [r4, #2]
	adds r0, r6, #0
	mov r1, sp
	adds r2, r7, #0
	movs r3, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CC9E
	ldrh r1, [r6]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	adds r0, r6, #0
	mov r1, sp
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CC9E
	movs r0, #1
	b _0800CCA0
_0800CC9E:
	movs r0, #0
_0800CCA0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CCA8
sub_0800CCA8: @ 0x0800CCA8
	push {r4, r5, r6, lr}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _0800CCEC @ =gScript
	ldr r1, _0800CCF0 @ =0x000067B8
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0800CCF4
	movs r0, #0
	bl sub_08036BD8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	mov r3, sp
	adds r3, #0xe
	str r3, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	adds r3, #4
	str r3, [sp, #8]
	add r3, sp, #0xc
	bl sub_0800F99C
	b _0800CD04
	.align 2, 0
_0800CCEC: .4byte gScript
_0800CCF0: .4byte 0x000067B8
_0800CCF4:
	movs r1, #0
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r0, sp, #0x10
	strh r4, [r0]
	strh r5, [r0, #2]
	adds r4, r0, #0
_0800CD04:
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r1, sp, #0x10
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_0800F454
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CD36
	movs r0, #1
	bl sub_0803788C
	bl sub_08037A0C
	ldr r0, _0800CD58 @ =gUnknown_02016028
	ldr r1, _0800CD5C @ =0x000121B9
	adds r2, r0, r1
	ldrb r1, [r2]
	lsls r0, r1, #0x1d
	cmp r0, #0
	blt _0800CD36
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0800CD36:
	movs r2, #0
	ldrsh r0, [r4, r2]
	add r5, sp, #0x10
	movs r2, #2
	ldrsh r1, [r5, r2]
	bl sub_0800F5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0800CDC2
	cmp r0, #1
	bgt _0800CD60
	cmp r0, #0
	beq _0800CD66
	b _0800CDC2
	.align 2, 0
_0800CD58: .4byte gUnknown_02016028
_0800CD5C: .4byte 0x000121B9
_0800CD60:
	cmp r0, #2
	beq _0800CDA0
	b _0800CDC2
_0800CD66:
	ldr r0, _0800CD90 @ =gScript
	ldr r1, _0800CD94 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800CD78
	movs r0, #5
	bl sub_08003BA8
_0800CD78:
	movs r0, #1
	bl sub_08004660
	ldr r0, _0800CD98 @ =gUnknown_02016028
	ldr r2, _0800CD9C @ =0x0001ED10
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _0800CDC2
	.align 2, 0
_0800CD90: .4byte gScript
_0800CD94: .4byte 0x0000829B
_0800CD98: .4byte gUnknown_02016028
_0800CD9C: .4byte 0x0001ED10
_0800CDA0:
	ldr r1, _0800CDCC @ =gUnknown_0200C3A4
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r6, r0
	strh r0, [r1]
	add r0, sp, #0xc
	movs r2, #2
	ldrsh r0, [r0, r2]
	muls r0, r6, r0
	strh r0, [r1, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	bl sub_08034A8C
_0800CDC2:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800CDCC: .4byte gUnknown_0200C3A4

	thumb_func_start sub_0800CDD0
sub_0800CDD0: @ 0x0800CDD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	mov sl, r1
	mov r8, r2
	add r0, sp, #8
	strh r3, [r0]
	mov r0, sb
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r5, r0, #0x1f
	cmp r5, #0
	beq _0800CDF8
	movs r0, #1
	b _0800D0DE
_0800CDF8:
	mov r0, sl
	ldrh r3, [r0]
	ldr r2, _0800CE94 @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0xc]
	mov r0, sl
	ldrh r1, [r0, #2]
	add r4, sp, #0xc
	strh r1, [r4, #2]
	ldr r0, [sp, #0x10]
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x10]
	add r2, sp, #0x10
	strh r1, [r2, #2]
	mov r1, sp
	adds r1, #0xa
	strh r5, [r1]
	mov r0, sb
	adds r0, #0x85
	ldrb r3, [r0]
	adds r6, r4, #0
	adds r7, r2, #0
	adds r5, r1, #0
	str r0, [sp, #0x18]
	cmp r3, #0
	bne _0800CE5E
	ldr r0, _0800CE98 @ =gUnknown_02016028
	ldr r1, _0800CE9C @ =0x0001ED10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800CE5E
	ldr r1, _0800CEA0 @ =gScript
	ldr r2, _0800CEA4 @ =0x0000829B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800CE5E
	ldr r3, _0800CEA8 @ =0x000082B6
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800CE5E
	movs r0, #1
	strh r0, [r5]
_0800CE5E:
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldrh r4, [r1, #2]
	cmp r0, #0
	bge _0800CEAC
	movs r3, #2
	ldrsh r0, [r6, r3]
	adds r0, #1
	movs r2, #0xf
	ands r0, r2
	cmp r0, #7
	bgt _0800CE7E
	ldrh r0, [r6, #2]
	subs r0, #7
	strh r0, [r6, #2]
_0800CE7E:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800CEC6
	ldrh r1, [r6, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0xa
	bgt _0800CEC6
	adds r0, r1, #0
	subs r0, #0xa
	b _0800CEC4
	.align 2, 0
_0800CE94: .4byte 0xFFFF0000
_0800CE98: .4byte gUnknown_02016028
_0800CE9C: .4byte 0x0001ED10
_0800CEA0: .4byte gScript
_0800CEA4: .4byte 0x0000829B
_0800CEA8: .4byte 0x000082B6
_0800CEAC:
	cmp r0, #0
	ble _0800CEC6
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800CEC6
	ldrh r1, [r6, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	ble _0800CEC6
	adds r0, r1, #0
	adds r0, #8
_0800CEC4:
	strh r0, [r6, #2]
_0800CEC6:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldrh r2, [r1]
	cmp r0, #0
	bge _0800CF00
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r0, #1
	movs r3, #0xf
	ands r0, r3
	cmp r0, #7
	bgt _0800CEE8
	ldrh r0, [r6]
	subs r0, #7
	add r1, sp, #0xc
	strh r0, [r1]
_0800CEE8:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800CF1A
	ldrh r1, [r6]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #7
	bgt _0800CF1A
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6]
	b _0800CF1A
_0800CF00:
	cmp r0, #0
	ble _0800CF1A
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	ble _0800CF1A
	ldrh r0, [r6]
	adds r0, #7
	add r1, sp, #0xc
	strh r0, [r1]
_0800CF1A:
	cmp r2, #0
	bne _0800CF78
	ldrh r0, [r7]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #6
	bhi _0800CF70
	subs r0, #8
	strh r0, [r7]
	cmp r4, #0
	beq _0800CF84
	ldrh r2, [r6]
	ldr r1, _0800CF6C @ =0xFFFF0000
	ldr r0, [sp, #0x14]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x14]
	add r5, sp, #0xc
	ldrh r0, [r5, #2]
	add r4, sp, #0x14
	strh r0, [r4, #2]
	ldrh r0, [r4]
	subs r0, #7
	strh r0, [r4]
	mov r0, sb
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CF78
	ldrh r0, [r4]
	strh r0, [r6]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	b _0800CF78
	.align 2, 0
_0800CF6C: .4byte 0xFFFF0000
_0800CF70:
	cmp r1, #8
	bls _0800CF78
	adds r0, #8
	strh r0, [r7]
_0800CF78:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r4, [r2, #2]
	cmp r0, #0
	bne _0800CFA0
_0800CF84:
	ldrh r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bhi _0800CF94
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r7, #2]
_0800CF94:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800CFA0
	ldrh r0, [r6]
	strh r0, [r7]
_0800CFA0:
	ldr r1, _0800CFE0 @ =gScript
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800D000
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	cmp r0, #4
	bls _0800D000
	ldr r3, _0800CFE4 @ =0x00008382
	adds r0, r1, r3
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0800D000
	ldrh r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bhi _0800D000
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldrh r2, [r2]
	cmp r0, #0
	ble _0800CFE8
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _0800CFE8
	adds r0, r1, #0
	b _0800CFFC
	.align 2, 0
_0800CFE0: .4byte gScript
_0800CFE4: .4byte 0x00008382
_0800CFE8:
	lsls r0, r2, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bge _0800D000
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _0800D000
	ldrh r0, [r7, #2]
_0800CFFC:
	subs r0, #8
	strh r0, [r7, #2]
_0800D000:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _0800D024
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D01C
	ldrh r0, [r6]
	b _0800D026
_0800D01C:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D026
_0800D024:
	movs r0, #0
_0800D026:
	strh r0, [r6]
	add r5, sp, #0xc
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D050
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D048
	ldrh r0, [r5, #2]
	b _0800D052
_0800D048:
	bl sub_0801A604
	subs r0, #1
	b _0800D052
_0800D050:
	movs r0, #0
_0800D052:
	strh r0, [r6, #2]
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _0800D078
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D070
	ldrh r0, [r7]
	b _0800D07A
_0800D070:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D07A
_0800D078:
	movs r0, #0
_0800D07A:
	strh r0, [r7]
	add r5, sp, #0x10
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D0A4
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D09C
	ldrh r0, [r5, #2]
	b _0800D0A6
_0800D09C:
	bl sub_0801A604
	subs r0, #1
	b _0800D0A6
_0800D0A4:
	movs r0, #0
_0800D0A6:
	strh r0, [r7, #2]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D0C6
	str r7, [sp]
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r6, #0
	bl sub_0800D6F0
	b _0800D0DA
_0800D0C6:
	str r7, [sp]
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r6, #0
	bl sub_0800D0F0
_0800D0DA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0800D0DE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800D0F0
sub_0800D0F0: @ 0x0800D0F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, [sp, #0x4c]
	mov r0, sp
	strh r1, [r0]
	add r4, sp, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08036BEC
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_08002970
	lsls r0, r0, #0x10
	mov r8, r4
	cmp r0, #0
	beq _0800D194
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBA0
	mov sl, r0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBA0
	adds r4, r0, #0
	ldr r0, _0800D18C @ =gScript
	ldr r1, _0800D190 @ =0x0000848C
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D14A
	movs r2, #0
	mov sl, r2
	movs r4, #0
_0800D14A:
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x1c]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D15C
	b _0800D6DE
_0800D15C:
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x48]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D16E
	b _0800D6DE
_0800D16E:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBF8
	str r0, [sp, #0x20]
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBF8
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0xbd
	str r0, [sp, #0x24]
	b _0800D3BE
	.align 2, 0
_0800D18C: .4byte gScript
_0800D190: .4byte 0x0000848C
_0800D194:
	adds r4, r6, #0
	adds r4, #0xbd
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #8
	ldr r2, [sp, #0x1c]
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	str r4, [sp, #0x24]
	cmp r0, #0
	bne _0800D1C2
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #8
	ldr r2, [sp, #0x48]
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D21C
_0800D1C2:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBA0
	mov sl, r0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBA0
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x1c]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D1E8
	b _0800D6DE
_0800D1E8:
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x48]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D1FA
	b _0800D6DE
_0800D1FA:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBF8
	str r0, [sp, #0x20]
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBF8
	mov sb, r0
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	b _0800D3BE
_0800D21C:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	ble _0800D22E
	mov r2, r8
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	b _0800D23A
_0800D22E:
	cmp r0, #0
	bge _0800D23A
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
_0800D23A:
	movs r2, #2
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bgt _0800D24E
	cmp r0, #0
	bge _0800D24E
	mov r1, r8
	ldrh r0, [r1, #2]
	subs r0, #0x10
	strh r0, [r1, #2]
_0800D24E:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D280
	adds r0, r6, #0
	mov r1, r8
	bl sub_08036BEC
	ldrh r0, [r7]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	add r1, sp, #4
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #2]
	ldrh r1, [r7, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
_0800D280:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800D2A8
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D2A0
	mov r1, r8
	ldrh r0, [r1]
	b _0800D2AA
_0800D2A0:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D2AA
_0800D2A8:
	movs r0, #0
_0800D2AA:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D2D6
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D2CE
	ldrh r0, [r5, #2]
	b _0800D2D8
_0800D2CE:
	bl sub_0801A604
	subs r0, #1
	b _0800D2D8
_0800D2D6:
	movs r0, #0
_0800D2D8:
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0800EBA0
	adds r4, r0, #0
	mov sl, r4
	cmp r4, #0
	beq _0800D39E
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800D2FE
	cmp r4, #0
	beq _0800D39E
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800D39E
_0800D2FE:
	adds r0, r6, #0
	mov r1, r8
	bl sub_08036BEC
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D338
	adds r0, r6, #0
	mov r1, r8
	bl sub_08036BEC
	ldrh r0, [r7]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	add r1, sp, #4
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #2]
	ldrh r1, [r7, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
_0800D338:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800D360
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D358
	mov r1, r8
	ldrh r0, [r1]
	b _0800D362
_0800D358:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D362
_0800D360:
	movs r0, #0
_0800D362:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D38E
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D386
	ldrh r0, [r5, #2]
	b _0800D390
_0800D386:
	bl sub_0801A604
	subs r0, #1
	b _0800D390
_0800D38E:
	movs r0, #0
_0800D390:
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0800EBA0
	adds r4, r0, #0
	mov sl, r4
_0800D39E:
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D3B0
	b _0800D6DE
_0800D3B0:
	adds r0, r6, #0
	mov r1, r8
	bl sub_0800EBF8
	mov sb, r0
	mov r2, sb
	str r2, [sp, #0x20]
_0800D3BE:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0800D3CA
	mov r1, sb
	cmp r1, #0
	beq _0800D3D2
_0800D3CA:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	b _0800D422
_0800D3D2:
	mov r2, sl
	cmp r2, #0
	beq _0800D400
	ldr r0, [r2]
	ldr r1, _0800D3FC @ =0x01000040
	ands r0, r1
	cmp r0, #0
	beq _0800D422
	mov r0, sl
	adds r0, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D422
	mov r0, sp
	mov r1, sb
	strh r1, [r0]
	b _0800D422
	.align 2, 0
_0800D3FC: .4byte 0x01000040
_0800D400:
	cmp r4, #0
	beq _0800D422
	ldr r0, [r4]
	ldr r1, _0800D494 @ =0x01000040
	ands r0, r1
	cmp r0, #0
	beq _0800D422
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D422
	mov r0, sp
	mov r2, sb
	strh r2, [r0]
_0800D422:
	ldr r0, [sp, #0x1c]
	ldr r1, [r0]
	ldr r2, [sp, #0x48]
	ldr r0, [r2]
	cmp r1, r0
	beq _0800D430
	b _0800D546
_0800D430:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D448
	b _0800D572
_0800D448:
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	bl sub_0800EDCC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D45A
	b _0800D6DE
_0800D45A:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D498
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x20]
	mov r3, r8
	bl sub_0800ECC8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D482
	b _0800D6DE
_0800D482:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D48C
	b _0800D6D0
_0800D48C:
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	b _0800D6C8
	.align 2, 0
_0800D494: .4byte 0x01000040
_0800D498:
	movs r0, #0
	ldrsh r5, [r7, r0]
	cmp r5, #0
	bne _0800D4A2
	b _0800D6D4
_0800D4A2:
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0800D4AC
	b _0800D6D4
_0800D4AC:
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0800D4E8 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r2, [r6, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	add r3, sp, #8
	strh r2, [r3, #2]
	ldr r0, [sp, #0xc]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r2, [r0, #2]
	adds r2, r3, #0
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bgt _0800D4EC
	ldrh r0, [r4]
	subs r0, #8
	b _0800D4F0
	.align 2, 0
_0800D4E8: .4byte 0xFFFF0000
_0800D4EC:
	ldrh r0, [r4]
	adds r0, #8
_0800D4F0:
	strh r0, [r4]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D51E
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D51A
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0800D814
	b _0800D51E
_0800D51A:
	strh r0, [r7]
	strh r0, [r7, #2]
_0800D51E:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D536
	b _0800D6D4
_0800D536:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D540
	b _0800D6D0
_0800D540:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	b _0800D6C8
_0800D546:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D572
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x48]
	adds r2, r7, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D57A
_0800D572:
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
	b _0800D6E0
_0800D57A:
	mov r5, r8
	adds r0, r6, #0
	mov r1, sl
	adds r2, r5, #0
	bl sub_0800EDCC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D58E
	b _0800D6DE
_0800D58E:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EDCC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D5A0
	b _0800D6DE
_0800D5A0:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D5D8
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x20]
	adds r3, r5, #0
	bl sub_0800ECC8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D5C8
	b _0800D6DE
_0800D5C8:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D5D2
	b _0800D6D0
_0800D5D2:
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	b _0800D6C8
_0800D5D8:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x48]
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D61E
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sb
	mov r3, r8
	bl sub_0800ECC8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D6DE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D6D0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	adds r2, r7, #0
	bl sub_0800D814
	ldr r1, [sp, #0x48]
	ldrh r0, [r1]
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	b _0800D6D4
_0800D61E:
	movs r0, #0
	ldrsh r5, [r7, r0]
	cmp r5, #0
	beq _0800D6D4
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _0800D6D4
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0800D670 @ =0xFFFF0000
	ldr r0, [sp, #0x10]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x10]
	ldrh r2, [r6, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	add r3, sp, #0x10
	strh r2, [r3, #2]
	ldr r0, [sp, #0x14]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	strh r2, [r1, #2]
	ldrh r0, [r3, #2]
	subs r0, #8
	strh r0, [r3, #2]
	adds r2, r3, #0
	adds r4, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bgt _0800D674
	ldrh r0, [r4]
	subs r0, #8
	b _0800D678
	.align 2, 0
_0800D670: .4byte 0xFFFF0000
_0800D674:
	ldrh r0, [r4]
	adds r0, #8
_0800D678:
	strh r0, [r4]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D6A6
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D6A2
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl sub_0800D814
	b _0800D6A6
_0800D6A2:
	strh r0, [r7]
	strh r0, [r7, #2]
_0800D6A6:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D6D4
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D6D0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
_0800D6C8:
	adds r2, r7, #0
	bl sub_0800D814
	b _0800D6D4
_0800D6D0:
	strh r0, [r7]
	strh r0, [r7, #2]
_0800D6D4:
	ldr r0, [r7]
	cmp r0, #0
	beq _0800D6DE
	movs r0, #1
	b _0800D6E0
_0800D6DE:
	movs r0, #0
_0800D6E0:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D6F0
sub_0800D6F0: @ 0x0800D6F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	mov sb, r2
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	mov r8, r0
	ldr r1, [sp, #0x24]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	adds r6, r0, #0
	cmp r6, #0
	beq _0800D7B8
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	cmp r1, r0
	bne _0800D74E
	adds r6, r7, #0
	adds r6, #0xbd
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D77A
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D7FA
	adds r0, r7, #0
	mov r1, sb
	b _0800D7B0
_0800D74E:
	adds r6, r7, #0
	adds r6, #0xbd
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D77A
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	adds r2, r4, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D782
_0800D77A:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	b _0800D806
_0800D782:
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D79A
	adds r0, r7, #0
	mov r1, sb
	b _0800D7B0
_0800D79A:
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D7FA
	adds r0, r7, #0
	mov r1, r8
_0800D7B0:
	adds r2, r4, #0
	bl sub_0800D814
	b _0800D7FA
_0800D7B8:
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	cmp r1, r0
	bne _0800D7D0
	adds r0, r7, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	b _0800D7EC
_0800D7D0:
	adds r7, #0xbd
	ldrb r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D7F6
	ldrb r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
_0800D7EC:
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D7FA
_0800D7F6:
	strh r6, [r4]
	strh r6, [r4, #2]
_0800D7FA:
	ldr r0, [r4]
	cmp r0, #0
	beq _0800D804
	movs r0, #1
	b _0800D806
_0800D804:
	movs r0, #0
_0800D806:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D814
sub_0800D814: @ 0x0800D814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r0, r1
	mov r8, r4
	cmp r0, #0
	beq _0800D846
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0800E338
	b _0800DA7E
_0800D846:
	ldr r2, _0800D85C @ =gScript
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800D864
	mov r1, sp
	ldr r3, _0800D860 @ =0x00008382
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	b _0800D86E
	.align 2, 0
_0800D85C: .4byte gScript
_0800D860: .4byte 0x00008382
_0800D864:
	mov r1, sp
	ldr r3, _0800D888 @ =0x000082B7
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
_0800D86E:
	lsrs r0, r0, #0x1f
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D88C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0800DA8C
	b _0800DA7E
	.align 2, 0
_0800D888: .4byte 0x000082B7
_0800D88C:
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, _0800D8F4 @ =0xFFFF0000
	ldrh r1, [r7]
	cmp r0, #0
	bge _0800D90A
	movs r3, #2
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bne _0800D90A
	ldrh r0, [r6]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	add r4, sp, #8
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D8CC
	b _0800DA78
_0800D8CC:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D8F8
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E4A0
	b _0800DA72
	.align 2, 0
_0800D8F4: .4byte 0xFFFF0000
_0800D8F8:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E450
	b _0800DA72
_0800D90A:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800D976
	movs r2, #2
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bne _0800D976
	ldrh r0, [r6]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	mov r8, r4
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D93C
	b _0800DA78
_0800D93C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #0xe
	mov r2, r8
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D964
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_0800E4A0
	b _0800DA72
_0800D964:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E450
	b _0800DA72
_0800D976:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0800DA78
	ldrh r2, [r7, #2]
	movs r3, #2
	ldrsh r0, [r7, r3]
	adds r1, r2, #0
	cmp r0, #0
	bge _0800D9E8
	ldrh r0, [r6]
	add r4, sp, #8
	strh r0, [r4]
	ldrh r2, [r6, #2]
	adds r0, r1, r2
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DA78
	mov r3, r8
	ldrh r0, [r3]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	ands r2, r0
	cmp r1, #7
	bhi _0800DA4C
	cmp r2, #0xf
	bne _0800DA4C
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E500
	b _0800DA72
_0800D9E8:
	cmp r0, #0
	ble _0800DA78
	ldrh r0, [r6]
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DA78
	mov r1, r8
	ldrh r0, [r1]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	ands r2, r0
	cmp r1, #7
	bhi _0800DA4C
	cmp r2, #0
	bne _0800DA4C
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E500
	b _0800DA72
_0800DA4C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E550
_0800DA72:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
_0800DA78:
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
_0800DA7E:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DA8C
sub_0800DA8C: @ 0x0800DA8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r2, [r0]
	mov sl, r4
	cmp r2, #0
	bne _0800DB18
	movs r0, #1
	strh r0, [r1]
	ldrh r0, [r4]
	movs r7, #0xf
	ands r7, r0
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800DAFC
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800DAFC
	cmp r7, #5
	bhi _0800DB18
	mov r0, sp
	strh r2, [r0]
	b _0800DB18
_0800DAFC:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0800DB18
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0800DB18
	cmp r7, #0xb
	bls _0800DB18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_0800DB18:
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, _0800DB8C @ =0xFFFF0000
	str r2, [sp, #0x18]
	ldrh r1, [r4]
	cmp r0, #0
	blt _0800DB2A
	b _0800DC3A
_0800DB2A:
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0800DB34
	b _0800DC3A
_0800DB34:
	mov r4, sb
	ldrh r4, [r4]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r1, sb
	ldrh r0, [r1, #2]
	add r4, sp, #8
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DB66
	b _0800E320
_0800DB66:
	mov r2, sl
	ldrh r0, [r2, #2]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x18]
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0xc]
	cmp r7, #7
	bls _0800DB90
	mov r4, sl
	ldrh r0, [r4, #2]
	b _0800DB96
	.align 2, 0
_0800DB8C: .4byte 0xFFFF0000
_0800DB90:
	mov r1, sl
	ldrh r0, [r1, #2]
	subs r0, #0x10
_0800DB96:
	lsls r0, r0, #0x10
	ldr r1, _0800DC00 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	orrs r0, r1
	str r0, [sp, #0x10]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r4, sp, #0xc
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	adds r6, r4, #0
	add r4, sp, #0x10
	cmp r0, #0
	bne _0800DBF4
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DBF4
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DBF4
	b _0800E328
_0800DBF4:
	cmp r7, #7
	bhi _0800DC04
	mov r3, sl
	ldrh r0, [r3, #2]
	b _0800DC0A
	.align 2, 0
_0800DC00: .4byte 0x0000FFFF
_0800DC04:
	mov r1, sl
	ldrh r0, [r1, #2]
	adds r0, #0x10
_0800DC0A:
	strh r0, [r6, #2]
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DC2E
	b _0800E320
_0800DC2E:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	b _0800E300
_0800DC3A:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800DD20
	mov r3, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _0800DD20
	mov r2, sb
	ldrh r0, [r2]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DC70
	b _0800E320
_0800DC70:
	mov r3, sl
	ldrh r0, [r3, #2]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	adds r6, r1, #0
	cmp r7, #7
	bls _0800DC8C
	ldrh r0, [r3, #2]
	b _0800DC92
_0800DC8C:
	mov r4, sl
	ldrh r0, [r4, #2]
	subs r0, #0x10
_0800DC92:
	strh r0, [r6, #2]
	mov r1, sl
	ldrh r0, [r1]
	add r4, sp, #0x10
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DCE0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DCE0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DCE0
	b _0800E328
_0800DCE0:
	cmp r7, #7
	bhi _0800DCEA
	mov r2, sl
	ldrh r0, [r2, #2]
	b _0800DCF0
_0800DCEA:
	mov r3, sl
	ldrh r0, [r3, #2]
	adds r0, #0x10
_0800DCF0:
	strh r0, [r6, #2]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DD14
	b _0800E320
_0800DD14:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	b _0800E300
_0800DD20:
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0800DD28
	b _0800DF98
_0800DD28:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r2, [r2, #2]
	cmp r0, #0
	blt _0800DD36
	b _0800DE64
_0800DD36:
	mov r4, sb
	ldrh r0, [r4]
	add r4, sp, #8
	strh r0, [r4]
	mov r1, sb
	ldrh r1, [r1, #2]
	adds r0, r2, r1
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DD5E
	b _0800E320
_0800DD5E:
	mov r2, sl
	ldrh r0, [r2]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	subs r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1, #2]
	adds r6, r1, #0
	cmp r7, #7
	bls _0800DD7A
	ldrh r0, [r2]
	b _0800DD80
_0800DD7A:
	mov r3, sl
	ldrh r0, [r3]
	subs r0, #0x10
_0800DD80:
	strh r0, [r6]
	ldr r0, _0800DDF0 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DD9A
	movs r4, #0
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _0800DD9A
	ldr r0, [sp, #0x14]
	subs r0, #0x10
	strh r0, [r6]
_0800DD9A:
	ldrh r0, [r6]
	add r4, sp, #0x10
	strh r0, [r4]
	mov r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DDE6
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DDE6
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DDE6
	b _0800E328
_0800DDE6:
	cmp r7, #7
	bhi _0800DDF4
	mov r2, sl
	ldrh r0, [r2]
	b _0800DDFA
	.align 2, 0
_0800DDF0: .4byte gScript
_0800DDF4:
	mov r3, sl
	ldrh r0, [r3]
	adds r0, #0x10
_0800DDFA:
	strh r0, [r6]
	ldr r0, _0800DE60 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DE14
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r1, [sp, #0x14]
	bl sub_08002FD4
	add r1, sp, #0xc
	strh r0, [r1]
_0800DE14:
	ldrh r0, [r6]
	strh r0, [r4]
	mov r2, sl
	ldrh r0, [r2, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DE36
	b _0800E320
_0800DE36:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DE4C
	b _0800E320
_0800DE4C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	b _0800E31A
	.align 2, 0
_0800DE60: .4byte gScript
_0800DE64:
	cmp r0, #0
	bgt _0800DE6A
	b _0800DF98
_0800DE6A:
	mov r3, sb
	ldrh r0, [r3]
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DE90
	b _0800E320
_0800DE90:
	mov r4, sl
	ldrh r0, [r4]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1, #2]
	adds r6, r1, #0
	cmp r7, #7
	bls _0800DEAC
	ldrh r0, [r4]
	b _0800DEB2
_0800DEAC:
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #0x10
_0800DEB2:
	strh r0, [r6]
	ldr r0, _0800DF24 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DECC
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0800DECC
	ldr r0, [sp, #0x14]
	subs r0, #0x10
	strh r0, [r6]
_0800DECC:
	ldrh r0, [r6]
	add r4, sp, #0x10
	strh r0, [r4]
	mov r3, sl
	ldrh r0, [r3, #2]
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF18
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF18
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DF18
	b _0800E328
_0800DF18:
	cmp r7, #7
	bhi _0800DF28
	mov r1, sl
	ldrh r0, [r1]
	b _0800DF2E
	.align 2, 0
_0800DF24: .4byte gScript
_0800DF28:
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #0x10
_0800DF2E:
	strh r0, [r6]
	ldr r0, _0800DF94 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DF48
	movs r3, #0
	ldrsh r0, [r6, r3]
	ldr r1, [sp, #0x14]
	bl sub_08002FD4
	add r1, sp, #0xc
	strh r0, [r1]
_0800DF48:
	ldrh r0, [r6]
	strh r0, [r4]
	mov r4, sl
	ldrh r0, [r4, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DF6A
	b _0800E320
_0800DF6A:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DF80
	b _0800E320
_0800DF80:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	b _0800E31A
	.align 2, 0
_0800DF94: .4byte gScript
_0800DF98:
	lsls r0, r1, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, #0
	bge _0800E07E
	mov r2, r8
	movs r4, #2
	ldrsh r0, [r2, r4]
	ldrh r2, [r2, #2]
	cmp r0, r3
	bgt _0800E07E
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E034
	mov r4, sl
	ldrh r0, [r4]
	subs r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E008
	ldrh r2, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #4
	bhi _0800E008
	cmp r1, #4
	bhi _0800E008
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r6, #2]
_0800E008:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E034
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E034
	b _0800E328
_0800E034:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E048
	b _0800E320
_0800E048:
	mov r1, sl
	ldrh r0, [r1]
	add r2, sp, #0xc
	strh r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	subs r0, #0x10
	strh r0, [r2, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E06C
	b _0800E320
_0800E06C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	b _0800E31A
_0800E07E:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800E162
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r2, [r2, #2]
	cmp r0, #0
	bge _0800E162
	mov r4, sb
	ldrh r0, [r4]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	mov r1, sb
	ldrh r0, [r1, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E118
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E0EC
	ldrh r2, [r2]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #0xb
	bls _0800E0EC
	cmp r1, #4
	bhi _0800E0EC
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r6, #2]
_0800E0EC:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E118
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E118
	b _0800E328
_0800E118:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E12C
	b _0800E320
_0800E12C:
	mov r3, sl
	ldrh r0, [r3]
	add r2, sp, #0xc
	strh r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	subs r0, #0x10
	strh r0, [r2, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E150
	b _0800E320
_0800E150:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	b _0800E31A
_0800E162:
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0800E23E
	mov r4, r8
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, #0
	ble _0800E23E
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E1FA
	mov r4, sl
	ldrh r0, [r4]
	subs r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E1CE
	ldrh r2, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #4
	bhi _0800E1CE
	cmp r1, #0xb
	bls _0800E1CE
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r6, #2]
_0800E1CE:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E1FA
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E1FA
	b _0800E328
_0800E1FA:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E20E
	b _0800E320
_0800E20E:
	mov r1, sl
	ldrh r0, [r1]
	add r4, sp, #0xc
	strh r0, [r4]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E320
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	adds r2, r4, #0
	b _0800E300
_0800E23E:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800E320
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r2, [r2, #2]
	cmp r0, #0
	ble _0800E320
	mov r4, sb
	ldrh r0, [r4]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	mov r1, sb
	ldrh r0, [r1, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E2D6
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E2AC
	ldrh r2, [r2]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #0xb
	bls _0800E2AC
	cmp r1, #0xb
	bls _0800E2AC
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r6, #2]
_0800E2AC:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E2D6
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E328
_0800E2D6:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E320
	mov r3, sl
	ldrh r0, [r3]
	add r2, sp, #0xc
	strh r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r0, #0x10
	strh r0, [r2, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
_0800E300:
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E320
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E4A0
_0800E31A:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E328
_0800E320:
	movs r0, #0
	mov r4, r8
	strh r0, [r4]
	strh r0, [r4, #2]
_0800E328:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E338
sub_0800E338: @ 0x0800E338
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0800E38C
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r3, _0800E388 @ =0xFFFF0000
	ldrh r2, [r4, #2]
	cmp r0, #0
	bge _0800E38C
	ldrh r0, [r5]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp]
	ands r1, r3
	orrs r1, r0
	str r1, [sp]
	ldrh r0, [r5, #2]
	adds r1, r2, r0
	mov r0, sp
	strh r1, [r0, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E450
	b _0800E3C4
	.align 2, 0
_0800E388: .4byte 0xFFFF0000
_0800E38C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldrh r1, [r4]
	cmp r0, #0
	bge _0800E408
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, #0
	ble _0800E3CA
	ldrh r0, [r5]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r5, #2]
	subs r0, r0, r2
	mov r1, sp
	strh r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E4A0
_0800E3C4:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E446
_0800E3CA:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #1
	rsbs r3, r3, #0
	ldrh r1, [r4]
	cmp r0, r3
	bgt _0800E408
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, r3
	bgt _0800E408
	ldrh r0, [r5]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r5, #2]
	adds r1, r2, r0
	mov r0, sp
	strh r1, [r0, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E450
	b _0800E43A
_0800E408:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800E440
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, #0
	ble _0800E440
	ldrh r0, [r5]
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	ldrh r0, [r5, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E4A0
_0800E43A:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E446
_0800E440:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
_0800E446:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E450
sub_0800E450: @ 0x0800E450
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r2, #2]
	movs r6, #2
	ldrsh r0, [r2, r6]
	cmp r0, #0x10
	ble _0800E46A
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #2]
_0800E46A:
	adds r0, r3, #0
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800E47E
	movs r0, #0
	b _0800E494
_0800E47E:
	ldrh r0, [r4]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	strh r2, [r5]
	ldr r0, _0800E49C @ =0x0000FFFF
	strh r0, [r5, #2]
	movs r0, #1
_0800E494:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800E49C: .4byte 0x0000FFFF

	thumb_func_start sub_0800E4A0
sub_0800E4A0: @ 0x0800E4A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsh r4, [r5, r0]
	adds r4, #0x10
	mov r0, r8
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E4CC
	ldrh r0, [r5, #2]
	adds r0, #0x10
	strh r0, [r5, #2]
_0800E4CC:
	mov r0, r8
	movs r1, #1
	adds r2, r5, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800E4E2
	movs r0, #0
	b _0800E4F6
_0800E4E2:
	ldrh r0, [r6]
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r6]
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	strh r2, [r7]
	movs r0, #1
	strh r0, [r7, #2]
_0800E4F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E500
sub_0800E500: @ 0x0800E500
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0x10
	ble _0800E51A
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2]
_0800E51A:
	adds r0, r3, #0
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800E52E
	movs r0, #0
	b _0800E544
_0800E52E:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	ldr r0, _0800E54C @ =0x0000FFFF
	strh r0, [r5]
	strh r2, [r5, #2]
	movs r0, #1
_0800E544:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800E54C: .4byte 0x0000FFFF

	thumb_func_start sub_0800E550
sub_0800E550: @ 0x0800E550
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, #0x10
	mov r0, r8
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E57C
	ldrh r0, [r5]
	adds r0, #0x10
	strh r0, [r5]
_0800E57C:
	mov r0, r8
	movs r1, #1
	adds r2, r5, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800E592
	movs r0, #0
	b _0800E5A6
_0800E592:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	ldrh r0, [r6, #2]
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
	movs r0, #1
	strh r0, [r7]
	strh r2, [r7, #2]
_0800E5A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E5B0
sub_0800E5B0: @ 0x0800E5B0
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r3, [r1]
	ldr r2, _0800E5F8 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r1, [r1, #2]
	mov r2, sp
	strh r1, [r2, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0800E5D8
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #2]
_0800E5D8:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E5EC
	movs r1, #1
_0800E5EC:
	adds r0, r1, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E5F8: .4byte 0xFFFF0000

	thumb_func_start sub_0800E5FC
sub_0800E5FC: @ 0x0800E5FC
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	ldrh r3, [r1]
	ldr r2, _0800E650 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r5, sp
	strh r0, [r5, #2]
	movs r0, #2
	ldrsh r4, [r5, r0]
	adds r4, #0x10
	adds r0, r6, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E632
	ldrh r0, [r5, #2]
	adds r0, #0x10
	strh r0, [r5, #2]
_0800E632:
	adds r0, r6, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E646
	movs r1, #1
_0800E646:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800E650: .4byte 0xFFFF0000

	thumb_func_start sub_0800E654
sub_0800E654: @ 0x0800E654
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r3, [r1]
	ldr r2, _0800E69C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r1, [r1, #2]
	mov r0, sp
	strh r1, [r0, #2]
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x10
	ble _0800E67E
	subs r1, #0x10
	mov r0, sp
	strh r1, [r0]
_0800E67E:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E692
	movs r1, #1
_0800E692:
	adds r0, r1, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E69C: .4byte 0xFFFF0000

	thumb_func_start sub_0800E6A0
sub_0800E6A0: @ 0x0800E6A0
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldrh r3, [r1]
	ldr r2, _0800E6F8 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r1, [r1, #2]
	mov r0, sp
	strh r1, [r0, #2]
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r4, #0x10
	adds r0, r5, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E6DA
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #0x10
	mov r1, sp
	strh r0, [r1]
_0800E6DA:
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E6EE
	movs r1, #1
_0800E6EE:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800E6F8: .4byte 0xFFFF0000

	thumb_func_start sub_0800E6FC
sub_0800E6FC: @ 0x0800E6FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sl, r1
	ldr r6, _0800E7F4 @ =gScript
	ldrb r1, [r6, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800E71A
	b _0800E838
_0800E71A:
	mov r0, r8
	adds r0, #0xbc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800E728
	b _0800E838
_0800E728:
	mov r0, r8
	adds r0, #0xaa
	ldrh r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0xac
	ldrh r0, [r0]
	mov sb, r0
	lsrs r1, r0, #1
	mov r2, sl
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #5
	bl sub_08036BD8
	adds r4, r0, #0
	movs r7, #0
	ldr r3, _0800E7F8 @ =0x00008370
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0800E828
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r5, r4, #0
	adds r5, #0xac
_0800E762:
	ldrb r1, [r5, #0x10]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0800E812
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800E812
	mov r0, r8
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800E788
	ldrb r0, [r5, #0x1f]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800E812
_0800E788:
	ldrb r0, [r5, #0x1c]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800E812
	mov r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800E7A2
	rsbs r1, r1, #0
_0800E7A2:
	adds r0, r4, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	ldr r2, [sp]
	adds r0, r2, r0
	cmp r1, r0
	bge _0800E812
	movs r3, #2
	ldrsh r1, [r4, r3]
	ldrh r0, [r5]
	lsrs r2, r0, #1
	subs r1, r1, r2
	ldr r0, [sp, #4]
	subs r1, r0, r1
	cmp r1, #0
	bge _0800E7C4
	rsbs r1, r1, #0
_0800E7C4:
	mov r3, sb
	lsrs r0, r3, #1
	adds r0, r0, r2
	cmp r1, r0
	bge _0800E812
	ldr r6, _0800E7F4 @ =gScript
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800E848
	ldr r0, _0800E7FC @ =gUnknown_02016028
	ldr r1, _0800E800 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800E80C
	adds r0, r4, #0
	bl sub_0800F040
	ldr r2, _0800E804 @ =0x00008456
	adds r1, r6, r2
	ldr r0, _0800E808 @ =0x0000FFFF
	strh r0, [r1]
	b _0800E848
	.align 2, 0
_0800E7F4: .4byte gScript
_0800E7F8: .4byte 0x00008370
_0800E7FC: .4byte gUnknown_02016028
_0800E800: .4byte 0x0001ED10
_0800E804: .4byte 0x00008456
_0800E808: .4byte 0x0000FFFF
_0800E80C:
	adds r0, r4, #0
	bl sub_0800EE50
_0800E812:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0xd0
	adds r4, #0xd0
	ldr r0, _0800E83C @ =gScript
	ldr r3, _0800E840 @ =0x00008370
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r7, r0
	blo _0800E762
_0800E828:
	bl sub_0800EED0
	ldr r0, _0800E83C @ =gScript
	ldr r1, _0800E844 @ =0x0000844E
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800E848
_0800E838:
	movs r0, #1
	b _0800E84A
	.align 2, 0
_0800E83C: .4byte gScript
_0800E840: .4byte 0x00008370
_0800E844: .4byte 0x0000844E
_0800E848:
	movs r0, #0
_0800E84A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_64
nullsub_64: @ 0x0800E85C
	bx lr
	.align 2, 0

	thumb_func_start sub_0800E860
sub_0800E860: @ 0x0800E860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov sb, r1
	adds r0, #0x85
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xac
	ldrh r0, [r0]
	mov r8, r0
	lsrs r1, r0, #1
	mov r2, sb
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800E8AE
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800E992
	b _0800EA1E
_0800E8AE:
	ldr r2, _0800E978 @ =gScript
	ldrb r1, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E992
	ldr r3, _0800E97C @ =0x0000829B
	adds r0, r2, r3
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800E992
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800E992
	adds r0, r6, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800E992
	movs r0, #0
	bl sub_08036BD8
	str r0, [sp]
	movs r0, #0
	bl sub_08036BD8
	adds r5, r0, #0
	movs r7, #0
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	adds r3, r5, #0
	adds r3, #0xaa
_0800E900:
	ldrb r1, [r3, #0x12]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0800E984
	ldr r0, [sp]
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800E922
	adds r0, r6, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800E984
_0800E922:
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0
	ldrsh r0, [r5, r4]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800E934
	rsbs r1, r1, #0
_0800E934:
	ldrh r0, [r3]
	add r0, sl
	cmp r1, r0
	bge _0800E984
	movs r0, #2
	ldrsh r1, [r5, r0]
	ldrh r0, [r3, #2]
	lsrs r2, r0, #1
	subs r1, r1, r2
	mov r4, ip
	subs r1, r4, r1
	cmp r1, #0
	bge _0800E950
	rsbs r1, r1, #0
_0800E950:
	mov r4, r8
	lsrs r0, r4, #1
	adds r0, r0, r2
	cmp r1, r0
	bge _0800E984
	ldr r4, _0800E978 @ =gScript
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800E974
	adds r0, r6, #0
	bl sub_0800F040
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	ldr r2, _0800E980 @ =0x00008456
	adds r0, r4, r2
	strh r1, [r0]
_0800E974:
	movs r0, #0
	b _0800EA20
	.align 2, 0
_0800E978: .4byte gScript
_0800E97C: .4byte 0x0000829B
_0800E980: .4byte 0x00008456
_0800E984:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r3, #0xd0
	adds r5, #0xd0
	cmp r7, #4
	bls _0800E900
_0800E992:
	movs r0, #5
	bl sub_08036BD8
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _0800EA30 @ =gScript
	ldr r3, _0800EA34 @ =0x00008370
	adds r0, r0, r3
	ldrb r1, [r0]
	cmp r7, r1
	bhs _0800EA1E
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, r8
	lsrs r6, r3, #1
	adds r5, r1, #0
	adds r2, r4, #0
	adds r2, #0xaa
_0800E9BA:
	adds r0, r7, #5
	adds r3, r4, #0
	adds r3, #0xac
	ldr r1, [sp, #4]
	cmp r1, r0
	beq _0800EA10
	ldrb r1, [r2, #0x12]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800EA10
	lsrs r0, r1, #7
	cmp r0, #0
	beq _0800E9DC
	ldrb r0, [r3, #0x1e]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800EA10
_0800E9DC:
	mov r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800E9EE
	rsbs r1, r1, #0
_0800E9EE:
	ldrh r0, [r2]
	add r0, sl
	cmp r1, r0
	bge _0800EA10
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldrh r0, [r2, #2]
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov r3, ip
	subs r1, r3, r1
	cmp r1, #0
	bge _0800EA0A
	rsbs r1, r1, #0
_0800EA0A:
	adds r0, r6, r0
	cmp r1, r0
	blt _0800E974
_0800EA10:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, #0xd0
	adds r4, #0xd0
	cmp r7, r5
	blo _0800E9BA
_0800EA1E:
	movs r0, #1
_0800EA20:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA30: .4byte gScript
_0800EA34: .4byte 0x00008370

	thumb_func_start sub_0800EA38
sub_0800EA38: @ 0x0800EA38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r3, _0800EAB8 @ =gScript
	ldr r0, _0800EABC @ =0x000082B7
	adds r2, r3, r0
	ldrb r1, [r2]
	lsrs r0, r1, #7
	cmp r0, #0
	bne _0800EA4E
	b _0800EB98
_0800EA4E:
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800EAC0 @ =0x000082B8
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_08036BD8
	adds r5, r0, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0800EAC4 @ =0x000001E9
	cmp r1, r0
	bne _0800EA78
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0800EA78
	b _0800EB98
_0800EA78:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EA88
	b _0800EB98
_0800EA88:
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800EA94
	rsbs r0, r1, #0
_0800EA94:
	cmp r0, #1
	ble _0800EACC
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r2, _0800EAC8 @ =0x0000FFFF
	cmp r0, #0
	ble _0800EAA4
	movs r2, #1
_0800EAA4:
	adds r0, r1, #0
	cmp r0, #0
	bge _0800EAAC
	rsbs r0, r0, #0
_0800EAAC:
	asrs r0, r0, #1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	b _0800EADE
	.align 2, 0
_0800EAB8: .4byte gScript
_0800EABC: .4byte 0x000082B7
_0800EAC0: .4byte 0x000082B8
_0800EAC4: .4byte 0x000001E9
_0800EAC8: .4byte 0x0000FFFF
_0800EACC:
	ldr r0, _0800EB10 @ =gScript
	ldr r2, _0800EB14 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EAE0
	movs r0, #0
_0800EADE:
	strh r0, [r4]
_0800EAE0:
	movs r0, #2
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800EAEC
	rsbs r0, r1, #0
_0800EAEC:
	cmp r0, #1
	ble _0800EB1C
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r2, _0800EB18 @ =0x0000FFFF
	cmp r0, #0
	ble _0800EAFC
	movs r2, #1
_0800EAFC:
	adds r0, r1, #0
	cmp r0, #0
	bge _0800EB04
	rsbs r0, r0, #0
_0800EB04:
	asrs r0, r0, #1
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	b _0800EB2E
	.align 2, 0
_0800EB10: .4byte gScript
_0800EB14: .4byte 0x00009D10
_0800EB18: .4byte 0x0000FFFF
_0800EB1C:
	ldr r0, _0800EB90 @ =gScript
	ldr r2, _0800EB94 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EB30
	movs r0, #0
_0800EB2E:
	strh r0, [r4, #2]
_0800EB30:
	adds r2, r5, #0
	adds r2, #0xcc
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r3]
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	movs r0, #1
	b _0800EB9A
	.align 2, 0
_0800EB90: .4byte gScript
_0800EB94: .4byte 0x00009D10
_0800EB98:
	movs r0, #0
_0800EB9A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800EBA0
sub_0800EBA0: @ 0x0800EBA0
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _0800EBC8 @ =gScript
	ldr r1, _0800EBCC @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EBD0
	adds r0, r2, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	bl sub_0801AF00
	b _0800EBD2
	.align 2, 0
_0800EBC8: .4byte gScript
_0800EBCC: .4byte 0x00008494
_0800EBD0:
	movs r0, #0
_0800EBD2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EBD8
sub_0800EBD8: @ 0x0800EBD8
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	ldrh r4, [r2]
	ldrh r3, [r2, #2]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0801AFA4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EBF8
sub_0800EBF8: @ 0x0800EBF8
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _0800EC20 @ =gScript
	ldr r1, _0800EC24 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EC28
	adds r0, r2, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	bl sub_0801B040
	b _0800EC2A
	.align 2, 0
_0800EC20: .4byte gScript
_0800EC24: .4byte 0x00008494
_0800EC28:
	movs r0, #0
_0800EC2A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EC30
sub_0800EC30: @ 0x0800EC30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r4, #0
	beq _0800ECBC
	ldr r0, _0800EC8C @ =gUnknown_02034D38
	mov r8, r0
	ldr r7, _0800EC90 @ =gUnknown_0200E094
_0800EC46:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, #6
	beq _0800EC5A
	ldr r0, [r4]
	ldr r1, _0800EC94 @ =0x01000040
	ands r0, r1
	cmp r0, #0
	bne _0800ECAC
_0800EC5A:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800EC70
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800ECAC
_0800EC70:
	ldrb r2, [r4]
	lsls r0, r2, #0x1a
	lsrs r1, r0, #0x1b
	cmp r1, #6
	bne _0800EC98
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800ECA8
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800ECAC
	b _0800ECA8
	.align 2, 0
_0800EC8C: .4byte gUnknown_02034D38
_0800EC90: .4byte gUnknown_0200E094
_0800EC94: .4byte 0x01000040
_0800EC98:
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	bl sub_080251F4
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800ECAC
_0800ECA8:
	movs r0, #1
	b _0800ECBE
_0800ECAC:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800EBD8
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EC46
_0800ECBC:
	movs r0, #0
_0800ECBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800ECC8
sub_0800ECC8: @ 0x0800ECC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	beq _0800ED34
	ldr r0, _0800ED58 @ =gUnknown_02034D38
	mov sb, r0
	ldr r1, _0800ED5C @ =gUnknown_0200E094
	mov r8, r1
_0800ECE4:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800ED24
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800ED24
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800ED0C
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800ED24
_0800ED0C:
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1b
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	bl sub_080251F4
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EDB8
_0800ED24:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800EBD8
	adds r4, r0, #0
	cmp r4, #0
	bne _0800ECE4
_0800ED34:
	cmp r7, #0
	beq _0800ED70
	ldr r0, _0800ED60 @ =gUnknown_02016028
	ldr r1, _0800ED64 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800ED4E
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08025718
_0800ED4E:
	ldr r0, _0800ED68 @ =gScript
	ldr r1, _0800ED6C @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0800EDA0
	.align 2, 0
_0800ED58: .4byte gUnknown_02034D38
_0800ED5C: .4byte gUnknown_0200E094
_0800ED60: .4byte gUnknown_02016028
_0800ED64: .4byte 0x0001ED10
_0800ED68: .4byte gScript
_0800ED6C: .4byte 0x00008494
_0800ED70:
	ldr r0, _0800EDA8 @ =gUnknown_02016028
	ldr r1, _0800EDAC @ =0x0001ED10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800EDBC
	ldr r0, _0800EDB0 @ =gScript
	ldr r1, _0800EDB4 @ =0x00008494
	adds r6, r0, r1
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EDBC
	cmp r4, #0
	bne _0800EDBC
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800EDBC
	bl sub_08025918
	ldrb r0, [r6]
_0800EDA0:
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800EDBE
	.align 2, 0
_0800EDA8: .4byte gUnknown_02016028
_0800EDAC: .4byte 0x0001ED10
_0800EDB0: .4byte gScript
_0800EDB4: .4byte 0x00008494
_0800EDB8:
	movs r0, #1
	b _0800EDBE
_0800EDBC:
	movs r0, #0
_0800EDBE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800EDCC
sub_0800EDCC: @ 0x0800EDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r4, #0
	bne _0800EDE2
	b _0800EE3C
_0800EDDE:
	movs r0, #1
	b _0800EE3E
_0800EDE2:
	ldr r0, _0800EE48 @ =gUnknown_02034D38
	mov r8, r0
	ldr r7, _0800EE4C @ =gUnknown_0200E094
_0800EDE8:
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800EE2C
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800EE2C
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800EE10
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800EE2C
_0800EE10:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, #6
	bne _0800EE2C
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #6
	bl sub_080251F4
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EDDE
_0800EE2C:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800EBD8
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EDE8
_0800EE3C:
	movs r0, #0
_0800EE3E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EE48: .4byte gUnknown_02034D38
_0800EE4C: .4byte gUnknown_0200E094

	thumb_func_start sub_0800EE50
sub_0800EE50: @ 0x0800EE50
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _0800EE80 @ =gScript
	ldr r1, _0800EE84 @ =0x00008494
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EE7A
	ldr r3, _0800EE88 @ =0x0000844E
	adds r1, r5, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800EE8C
_0800EE7A:
	movs r0, #0
	b _0800EEBC
	.align 2, 0
_0800EE80: .4byte gScript
_0800EE84: .4byte 0x00008494
_0800EE88: .4byte 0x0000844E
_0800EE8C:
	ldr r0, _0800EEC4 @ =0x0000844C
	adds r4, r5, r0
	ldrh r0, [r4]
	lsls r0, r0, #2
	ldr r3, _0800EEC8 @ =0x000083D4
	adds r1, r5, r3
	adds r0, r0, r1
	str r2, [r0]
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	ldrh r1, [r4]
	lsls r1, r1, #1
	ldr r3, _0800EECC @ =0x00008424
	adds r2, r5, r3
	adds r1, r1, r2
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #1
_0800EEBC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800EEC4: .4byte 0x0000844C
_0800EEC8: .4byte 0x000083D4
_0800EECC: .4byte 0x00008424

	thumb_func_start sub_0800EED0
sub_0800EED0: @ 0x0800EED0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800EF78 @ =gScript
	ldr r1, _0800EF7C @ =0x00008494
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EF94
	ldr r0, _0800EF80 @ =0x0000844C
	adds r7, r5, r0
	ldrh r0, [r7]
	cmp r0, #0
	beq _0800EF94
	movs r0, #0
	bl sub_08036BD8
	ldr r6, _0800EF84 @ =0x0000FFFF
	movs r4, #0
	movs r3, #0
	ldrh r0, [r7]
	cmp r4, r0
	bhs _0800EF26
	ldr r1, _0800EF88 @ =0x000083D4
	adds r1, r1, r5
	mov ip, r1
	ldr r1, _0800EF8C @ =0x00008424
	adds r7, r5, r1
	adds r5, r0, #0
_0800EF08:
	lsls r0, r3, #2
	add r0, ip
	ldr r2, [r0]
	lsls r0, r3, #1
	adds r1, r0, r7
	ldrh r0, [r1]
	cmp r0, r6
	bhs _0800EF1C
	adds r6, r0, #0
	adds r4, r2, #0
_0800EF1C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blo _0800EF08
_0800EF26:
	cmp r4, #0
	beq _0800EF94
	ldr r0, _0800EF78 @ =gScript
	ldr r1, _0800EF90 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	cmp r0, #6
	bne _0800EF44
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #6
	beq _0800EF94
_0800EF44:
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x17
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EF64
	movs r3, #1
_0800EF64:
	adds r0, r4, #0
	bl sub_08025340
	ldr r0, _0800EF78 @ =gScript
	ldr r1, _0800EF7C @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800EF96
	.align 2, 0
_0800EF78: .4byte gScript
_0800EF7C: .4byte 0x00008494
_0800EF80: .4byte 0x0000844C
_0800EF84: .4byte 0x0000FFFF
_0800EF88: .4byte 0x000083D4
_0800EF8C: .4byte 0x00008424
_0800EF90: .4byte 0x0000829B
_0800EF94:
	movs r0, #0
_0800EF96:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800EF9C
sub_0800EF9C: @ 0x0800EF9C
	push {r4, lr}
	mov ip, r0
	ldr r0, _0800EFE4 @ =gScript
	ldr r1, _0800EFE8 @ =0x00008494
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EFEC
	mov r0, ip
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	cmp r1, #0
	beq _0800EFEC
	mov r0, ip
	adds r0, #0xc0
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x17
	movs r3, #0
	mov r0, ip
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EFD6
	movs r3, #1
_0800EFD6:
	mov r0, ip
	bl sub_08025340
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800EFEE
	.align 2, 0
_0800EFE4: .4byte gScript
_0800EFE8: .4byte 0x00008494
_0800EFEC:
	movs r0, #0
_0800EFEE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800EFF4
sub_0800EFF4: @ 0x0800EFF4
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0800F018 @ =gScript
	ldr r1, _0800F01C @ =0x00008494
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800F014
	adds r0, r3, #0
	adds r0, #0xbe
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1c
	cmp r1, #0
	bne _0800F020
_0800F014:
	movs r0, #0
	b _0800F038
	.align 2, 0
_0800F018: .4byte gScript
_0800F01C: .4byte 0x00008494
_0800F020:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r2, [r0]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x17
	adds r0, r3, #0
	movs r3, #0
	bl sub_08025340
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
_0800F038:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F040
sub_0800F040: @ 0x0800F040
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036BD8
	adds r3, r0, #0
	ldr r1, _0800F07C @ =gScript
	ldr r2, _0800F080 @ =0x00008494
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F05C
	b _0800F30C
_0800F05C:
	ldr r2, _0800F084 @ =0x000067AC
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	beq _0800F09E
	cmp r1, r0
	bgt _0800F088
	cmp r1, #0xe
	beq _0800F09E
	cmp r1, #0x67
	beq _0800F09E
	adds r5, r4, #0
	adds r5, #0xbe
	b _0800F0BA
	.align 2, 0
_0800F07C: .4byte gScript
_0800F080: .4byte 0x00008494
_0800F084: .4byte 0x000067AC
_0800F088:
	ldr r0, _0800F0D4 @ =0x00000363
	adds r5, r4, #0
	adds r5, #0xbe
	cmp r1, r0
	blt _0800F0BA
	adds r0, #1
	cmp r1, r0
	ble _0800F09E
	adds r0, #2
	cmp r1, r0
	bne _0800F0BA
_0800F09E:
	ldr r0, _0800F0D8 @ =gScript
	ldr r1, _0800F0DC @ =0x0000848C
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r5, r4, #0
	adds r5, #0xbe
	cmp r0, #0
	beq _0800F0BA
	ldrh r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne _0800F0BA
	b _0800F30C
_0800F0BA:
	ldrh r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800F0C6
	b _0800F220
_0800F0C6:
	cmp r0, #8
	beq _0800F0E0
	cmp r0, #9
	beq _0800F0F8
	ldr r6, _0800F0D8 @ =gScript
	b _0800F1A0
	.align 2, 0
_0800F0D4: .4byte 0x00000363
_0800F0D8: .4byte gScript
_0800F0DC: .4byte 0x0000848C
_0800F0E0:
	ldr r0, _0800F0F0 @ =gScript
	ldr r2, _0800F0F4 @ =0x0000829B
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	beq _0800F1A0
	b _0800F30C
	.align 2, 0
_0800F0F0: .4byte gScript
_0800F0F4: .4byte 0x0000829B
_0800F0F8:
	ldr r1, _0800F160 @ =gScript
	ldr r2, _0800F164 @ =0x0000829B
	adds r0, r1, r2
	ldrb r2, [r0]
	adds r6, r1, #0
	cmp r2, #6
	bne _0800F112
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0800F168 @ =0x0000014D
	cmp r1, r0
	beq _0800F1A0
_0800F112:
	cmp r2, #0
	beq _0800F118
	b _0800F30C
_0800F118:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bne _0800F170
	adds r0, r3, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F13E
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F170
_0800F13E:
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800F14E
	movs r3, #1
_0800F14E:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl sub_08025340
	ldr r1, _0800F16C @ =0x00008494
	adds r0, r6, r1
	b _0800F27E
	.align 2, 0
_0800F160: .4byte gScript
_0800F164: .4byte 0x0000829B
_0800F168: .4byte 0x0000014D
_0800F16C: .4byte 0x00008494
_0800F170:
	ldr r0, _0800F198 @ =0x000082B7
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	ldr r2, _0800F19C @ =0x000082B8
	adds r3, r6, r2
	movs r0, #0x1f
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0800F30C
	.align 2, 0
_0800F198: .4byte 0x000082B7
_0800F19C: .4byte 0x000082B8
_0800F1A0:
	adds r0, r3, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F1B8
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F1E0
_0800F1B8:
	ldr r1, _0800F1DC @ =0x0000829B
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800F1CE
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F2B0
_0800F1CE:
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r3, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1f
	b _0800F26E
	.align 2, 0
_0800F1DC: .4byte 0x0000829B
_0800F1E0:
	ldr r2, _0800F21C @ =0x0000829B
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800F1EE
	cmp r0, #6
	bne _0800F1FA
_0800F1EE:
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F2B0
_0800F1FA:
	ldrh r1, [r5]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	adds r0, r4, #0
	adds r0, #0xc2
	ldrh r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x17
	subs r0, #5
	ldrb r3, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1f
	adds r0, r4, #0
	bl sub_08025340
	b _0800F278
	.align 2, 0
_0800F21C: .4byte 0x0000829B
_0800F220:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bne _0800F300
	adds r0, r3, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F246
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F294
_0800F246:
	ldr r0, _0800F288 @ =gScript
	ldr r2, _0800F28C @ =0x0000829B
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800F25E
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F2B0
_0800F25E:
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800F26E
	movs r3, #1
_0800F26E:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl sub_08025340
_0800F278:
	ldr r0, _0800F288 @ =gScript
	ldr r1, _0800F290 @ =0x00008494
	adds r0, r0, r1
_0800F27E:
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800F30E
	.align 2, 0
_0800F288: .4byte gScript
_0800F28C: .4byte 0x0000829B
_0800F290: .4byte 0x00008494
_0800F294:
	ldr r0, _0800F2F4 @ =gScript
	ldr r2, _0800F2F8 @ =0x0000829B
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800F2A4
	cmp r0, #6
	bne _0800F300
_0800F2A4:
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F300
_0800F2B0:
	ldr r0, _0800F2FC @ =0x00000646
	bl sub_0800399C
	adds r5, r4, #0
	adds r5, #0xcb
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0803476C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	ldrb r2, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r0, r4, #0
	adds r0, #0xc2
	ldrh r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x17
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_08025340
	movs r0, #1
	b _0800F30E
	.align 2, 0
_0800F2F4: .4byte gScript
_0800F2F8: .4byte 0x0000829B
_0800F2FC: .4byte 0x00000646
_0800F300:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_0800F30C:
	movs r0, #0
_0800F30E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800F314
sub_0800F314: @ 0x0800F314
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	ldr r1, _0800F350 @ =gScript
	ldr r4, _0800F354 @ =0x00008494
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F32A
	b _0800F44C
_0800F32A:
	ldrb r1, [r1, #8]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0800F338
	b _0800F44C
_0800F338:
	ldr r0, [r3]
	lsls r1, r0, #0x18
	adds r4, r0, #0
	cmp r1, #0
	bge _0800F37E
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #1
	ble _0800F358
	strh r5, [r2]
	b _0800F364
	.align 2, 0
_0800F350: .4byte gScript
_0800F354: .4byte 0x00008494
_0800F358:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800F364
	orrs r0, r3
	strh r0, [r2]
_0800F364:
	ldrh r3, [r2, #2]
	movs r0, #2
	ldrsh r1, [r2, r0]
	cmp r1, #1
	ble _0800F372
	movs r0, #1
	b _0800F37C
_0800F372:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800F37E
	orrs r0, r3
_0800F37C:
	strh r0, [r2, #2]
_0800F37E:
	lsls r0, r4, #0x17
	cmp r0, #0
	bge _0800F39C
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _0800F396
	ldrh r0, [r2, #2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _0800F3B4
_0800F396:
	rsbs r0, r1, #0
	strh r0, [r2, #2]
	b _0800F3B4
_0800F39C:
	lsls r0, r4, #0x16
	cmp r0, #0
	bge _0800F3F4
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _0800F3B2
	ldrh r0, [r2, #2]
	strh r0, [r2]
	b _0800F3B4
_0800F3B2:
	strh r1, [r2, #2]
_0800F3B4:
	lsls r0, r4, #9
	cmp r0, #0
	bge _0800F3F4
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r3, #0
	cmp r3, #0
	bge _0800F3C6
	rsbs r0, r3, #0
_0800F3C6:
	cmp r0, #1
	bgt _0800F3D4
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F3F4
_0800F3D4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _0800F400 @ =0x0000FFFF
	cmp r0, #0
	ble _0800F3E0
	movs r1, #1
_0800F3E0:
	adds r0, r3, #0
	cmp r0, #0
	bge _0800F3E8
	rsbs r0, r0, #0
_0800F3E8:
	asrs r0, r0, #1
	strh r0, [r2, #2]
	movs r3, #2
	ldrsh r0, [r2, r3]
	muls r0, r1, r0
	strh r0, [r2, #2]
_0800F3F4:
	lsls r0, r4, #6
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0800F404
	movs r3, #1
	b _0800F406
	.align 2, 0
_0800F400: .4byte 0x0000FFFF
_0800F404:
	lsls r3, r0, #1
_0800F406:
	lsls r0, r4, #0x13
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _0800F44C
	lsls r0, r0, #2
	ldr r1, _0800F418 @ =_0800F41C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F418: .4byte _0800F41C
_0800F41C: @ jump table
	.4byte _0800F44C @ case 0
	.4byte _0800F430 @ case 1
	.4byte _0800F438 @ case 2
	.4byte _0800F440 @ case 3
	.4byte _0800F446 @ case 4
_0800F430:
	ldrh r0, [r2, #2]
	subs r0, r0, r3
	strh r0, [r2, #2]
	b _0800F44C
_0800F438:
	ldrh r0, [r2, #2]
	adds r0, r3, r0
	strh r0, [r2, #2]
	b _0800F44C
_0800F440:
	ldrh r0, [r2]
	subs r0, r0, r3
	b _0800F44A
_0800F446:
	ldrh r0, [r2]
	adds r0, r3, r0
_0800F44A:
	strh r0, [r2]
_0800F44C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F454
sub_0800F454: @ 0x0800F454
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	bl sub_08036BD8
	adds r7, r0, #0
	cmp r5, #0
	bne _0800F472
	cmp r6, #0
	bne _0800F472
	b _0800F574
_0800F472:
	adds r0, r7, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F574
	ldr r0, _0800F4C8 @ =gScript
	ldr r1, _0800F4CC @ =0x000082A6
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800F574
	add r4, sp, #8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08036BEC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	ldrh r2, [r4, #2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	strh r0, [r4, #2]
	lsls r1, r1, #0x10
	adds r6, r4, #0
	cmp r1, #0
	blt _0800F4D8
	movs r1, #0
	ldrsh r4, [r6, r1]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F4D0
	ldrh r0, [r6]
	b _0800F4DA
	.align 2, 0
_0800F4C8: .4byte gScript
_0800F4CC: .4byte 0x000082A6
_0800F4D0:
	bl sub_0801A5EC
	subs r0, #1
	b _0800F4DA
_0800F4D8:
	movs r0, #0
_0800F4DA:
	strh r0, [r6]
	add r5, sp, #8
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F504
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F4FC
	ldrh r0, [r5, #2]
	b _0800F506
_0800F4FC:
	bl sub_0801A604
	subs r0, #1
	b _0800F506
_0800F504:
	movs r0, #0
_0800F506:
	strh r0, [r6, #2]
	adds r4, r7, #0
	adds r4, #0xbd
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x20
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F574
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	add r3, sp, #4
	bl sub_0801B1BC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F574
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r4]
	bl sub_08012AD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F574
	movs r0, #0xe8
	bl sub_0800399C
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl sub_0802AAEC
	ldr r0, _0800F56C @ =gScript
	ldr r1, _0800F570 @ =0x000082A6
	adds r0, r0, r1
	movs r1, #0x1e
	strh r1, [r0]
	movs r0, #0
	b _0800F576
	.align 2, 0
_0800F56C: .4byte gScript
_0800F570: .4byte 0x000082A6
_0800F574:
	movs r0, #1
_0800F576:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F580
sub_0800F580: @ 0x0800F580
	push {r4, r5, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r4, r1, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F5E0
	adds r5, r2, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x20
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F5E0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	add r3, sp, #4
	bl sub_0801B1BC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F5E0
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r4]
	bl sub_08012AD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F5E0
	movs r0, #0xe8
	bl sub_0800399C
	movs r0, #0
	b _0800F5E2
_0800F5E0:
	movs r0, #1
_0800F5E2:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F5EC
sub_0800F5EC: @ 0x0800F5EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0800F67C @ =gScript
	ldr r1, _0800F680 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F610
	b _0800F988
_0800F610:
	movs r0, #0
	bl sub_08036D00
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x10
	adds r5, r0, #0
	lsls r6, r6, #0x10
	cmp r5, #0
	bne _0800F62A
	cmp r6, #0
	bne _0800F62A
	b _0800F988
_0800F62A:
	add r4, sp, #0x1c
	movs r0, #0
	adds r1, r4, #0
	bl sub_08036C00
	asrs r1, r5, #0x10
	ldrh r2, [r4]
	adds r1, r1, r2
	strh r1, [r4]
	ldrh r2, [r4, #2]
	asrs r0, r6, #0x10
	adds r0, r0, r2
	strh r0, [r4, #2]
	lsls r1, r1, #0x10
	mov sl, r4
	cmp r1, #0
	bge _0800F684
	ldr r0, _0800F67C @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F65A
	b _0800F988
_0800F65A:
	movs r0, #2
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F670
	b _0800F984
_0800F670:
	adds r1, r2, #0
	str r4, [sp]
	movs r0, #2
	str r0, [sp, #4]
	b _0800F73E
	.align 2, 0
_0800F67C: .4byte gScript
_0800F680: .4byte 0x00008494
_0800F684:
	mov r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	blt _0800F6C8
	ldr r0, _0800F6C4 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F6A4
	b _0800F988
_0800F6A4:
	movs r0, #3
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F6BA
	b _0800F984
_0800F6BA:
	adds r1, r2, #0
	str r4, [sp]
	movs r0, #6
	str r0, [sp, #4]
	b _0800F73E
	.align 2, 0
_0800F6C4: .4byte gScript
_0800F6C8:
	mov r2, sl
	movs r0, #2
	ldrsh r4, [r2, r0]
	adds r0, r4, #0
	subs r0, #8
	cmp r0, #0
	bge _0800F708
	ldr r0, _0800F704 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F6E4
	b _0800F988
_0800F6E4:
	movs r0, #0
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F6FA
	b _0800F984
_0800F6FA:
	adds r1, r2, #0
	str r4, [sp]
	movs r0, #4
	str r0, [sp, #4]
	b _0800F73E
	.align 2, 0
_0800F704: .4byte gScript
_0800F708:
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	blt _0800F758
	ldr r0, _0800F754 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F722
	b _0800F988
_0800F722:
	movs r0, #1
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F738
	b _0800F984
_0800F738:
	adds r1, r2, #0
	str r4, [sp]
	str r4, [sp, #4]
_0800F73E:
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r0, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0801A434
	movs r0, #0
	b _0800F98A
	.align 2, 0
_0800F754: .4byte gScript
_0800F758:
	movs r0, #0
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800F78A
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F782
	mov r1, sl
	ldrh r0, [r1]
	b _0800F78C
_0800F782:
	bl sub_0801A5EC
	subs r0, #1
	b _0800F78C
_0800F78A:
	movs r0, #0
_0800F78C:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #0x1c
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F7B8
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F7B0
	ldrh r0, [r5, #2]
	b _0800F7BA
_0800F7B0:
	bl sub_0801A604
	subs r0, #1
	b _0800F7BA
_0800F7B8:
	movs r0, #0
_0800F7BA:
	mov r4, sl
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #8
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F7D0
	b _0800F988
_0800F7D0:
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	adds r0, r6, #0
	add r3, sp, #0x18
	bl sub_0801AE58
	adds r5, r0, #0
	cmp r5, #0
	bne _0800F7E4
	b _0800F988
_0800F7E4:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0800F7EC
	b _0800F984
_0800F7EC:
	adds r1, r0, #0
	ldrb r0, [r5, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800F802
	add r0, sp, #0x18
	ldrh r0, [r0]
	bl sub_0801B144
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0800F802:
	adds r0, r1, #0
	bl sub_0801B4E4
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08012590
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F8D8
	ldrb r0, [r6, #6]
	lsls r0, r0, #4
	mov sb, r0
	ldrb r0, [r6, #7]
	lsls r7, r0, #4
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #4
	mov r2, sl
	ldrh r0, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #4
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6]
	lsls r0, r1, #0x1e
	lsrs r2, r0, #0x1e
	ldrb r0, [r5]
	lsrs r3, r0, #6
	mov sl, r1
	cmp r2, r3
	ble _0800F85E
	adds r0, r2, #1
	adds r1, r3, #1
	bl sub_08091970
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	b _0800F86E
_0800F85E:
	adds r0, r3, #1
	adds r1, r2, #1
	bl sub_08091970
	adds r1, r0, #0
	mov r0, r8
	bl sub_08091970
_0800F86E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sl
	lsls r0, r2, #0x1c
	lsrs r2, r0, #0x1e
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1e
	lsrs r1, r0, #0x1e
	cmp r2, r1
	ble _0800F890
	adds r0, r2, #1
	adds r1, #1
	bl sub_08091970
	muls r0, r4, r0
	b _0800F8A0
_0800F890:
	adds r0, r1, #1
	adds r1, r2, #1
	bl sub_08091970
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08091970
_0800F8A0:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sb
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #1
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800F8C8
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_0800F8C8:
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F8F8
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0800F8F8
_0800F8D8:
	ldrb r1, [r6, #6]
	lsls r1, r1, #4
	ldrb r2, [r6]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1b
	adds r0, #8
	adds r1, r1, r0
	mov sb, r1
	ldrb r1, [r6, #7]
	lsls r1, r1, #4
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	adds r0, #1
	lsls r0, r0, #3
	adds r7, r1, r0
	mov sl, r2
_0800F8F8:
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F934
	mov r1, sl
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r4, sp, #0x20
	mov r2, sp
	adds r2, #0x22
	adds r1, r4, #0
	bl sub_080270A0
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800F934:
	ldrh r1, [r6, #4]
	ldrh r2, [r6]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x1e
	str r7, [sp]
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #4]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	str r0, [sp, #8]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #0xc]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #7
	str r0, [sp, #0x10]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #7
	str r0, [sp, #0x14]
	movs r0, #1
	mov r3, sb
	bl sub_0801A434
	ldr r0, _0800F97C @ =gScript
	add r1, sp, #0x18
	ldrh r1, [r1]
	ldr r2, _0800F980 @ =0x00005982
	adds r0, r0, r2
	strh r1, [r0]
	movs r0, #0
	b _0800F98A
	.align 2, 0
_0800F97C: .4byte gScript
_0800F980: .4byte 0x00005982
_0800F984:
	movs r0, #1
	b _0800F98A
_0800F988:
	movs r0, #2
_0800F98A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F99C
sub_0800F99C: @ 0x0800F99C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	mov sb, r3
	ldr r7, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	mov r0, sp
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0800F9D4
	movs r1, #0
_0800F9D4:
	movs r0, #0
	mov sl, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r5, #2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0800F9E6
	movs r1, #0
_0800F9E6:
	strh r1, [r5, #2]
	add r4, sp, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08036BEC
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	ldr r2, _0800FA98 @ =0xFFFF0000
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	add r6, sp, #8
	strh r0, [r6, #2]
	add r5, sp, #0xc
	adds r0, r5, #0
	bl sub_0801A5C0
	mov r1, sl
	mov r0, r8
	strh r1, [r0]
	strh r1, [r7]
	ldr r2, [sp, #0x48]
	strh r1, [r2]
	mov r0, sb
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0800FA38
	rsbs r0, r1, #0
_0800FA38:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FA9C @ =0x0000FFFF
	cmp r1, #0
	ble _0800FA44
	movs r0, #1
_0800FA44:
	adds r1, r0, #0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r6, _0800FA98 @ =0xFFFF0000
	lsrs r2, r6, #0x10
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0x10
	str r0, [sp, #0x1c]
	cmp r5, r2
	beq _0800FAFC
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	add r1, sp, #8
	mov sl, r1
	mov r4, sp
	add r6, sp, #0xc
	add r0, sp, #4
	mov ip, r0
_0800FA6A:
	cmp r3, #0
	bge _0800FAA0
	mov r1, sl
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	bgt _0800FA8E
	ldrh r1, [r4, #2]
	ldrh r0, [r6, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _0800FAC8
	ldr r1, [sp, #0x48]
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_0800FA8E:
	mov r2, r8
	ldrh r0, [r2]
	adds r0, r3, r0
	strh r0, [r2]
	b _0800FAD0
	.align 2, 0
_0800FA98: .4byte 0xFFFF0000
_0800FA9C: .4byte 0x0000FFFF
_0800FAA0:
	cmp r3, #0
	ble _0800FAD0
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r2, #2
	ldrsh r1, [r6, r2]
	ldrh r2, [r6, #6]
	adds r1, r1, r2
	cmp r0, r1
	bge _0800FAC8
	mov r2, sl
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5f
	ble _0800FAC8
	ldr r2, [sp, #0x48]
	ldrh r0, [r2]
	adds r0, r3, r0
	strh r0, [r2]
_0800FAC8:
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_0800FAD0:
	ldrh r0, [r4, #2]
	ldr r2, [sp, #0x48]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	mov r0, ip
	ldrh r1, [r0, #2]
	mov r2, r8
	ldrh r0, [r2]
	adds r1, r1, r0
	mov r0, ip
	strh r1, [r0, #2]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	mov r2, sl
	strh r1, [r2, #2]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FB54 @ =0x0000FFFF
	cmp r5, r0
	bne _0800FA6A
_0800FAFC:
	ldr r2, [sp, #0x1c]
	asrs r1, r2, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0800FB08
	rsbs r0, r1, #0
_0800FB08:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FB54 @ =0x0000FFFF
	cmp r1, #0
	ble _0800FB14
	movs r0, #1
_0800FB14:
	adds r1, r0, #0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FB54 @ =0x0000FFFF
	cmp r5, r0
	beq _0800FBB6
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	mov r6, sp
	adds r6, #8
	str r6, [sp, #0x24]
	mov r4, sp
	add r0, sp, #0xc
	mov sl, r0
	add r1, sp, #4
	mov ip, r1
_0800FB36:
	cmp r3, #0
	bge _0800FB58
	ldr r2, [sp, #0x24]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0x78
	bgt _0800FB86
	movs r0, #0
	ldrsh r1, [r4, r0]
	mov r2, sl
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bgt _0800FB7E
	b _0800FB86
	.align 2, 0
_0800FB54: .4byte 0x0000FFFF
_0800FB58:
	cmp r3, #0
	ble _0800FB8C
	movs r6, #0
	ldrsh r2, [r4, r6]
	str r2, [sp, #0x20]
	add r1, sp, #0xc
	mov r2, sl
	movs r6, #0
	ldrsh r0, [r2, r6]
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _0800FB86
	ldr r2, [sp, #0x24]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0x77
	ble _0800FB86
_0800FB7E:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_0800FB86:
	ldrh r0, [r7]
	adds r0, r3, r0
	strh r0, [r7]
_0800FB8C:
	mov r2, sb
	ldrh r0, [r2]
	ldrh r6, [r4]
	adds r0, r0, r6
	strh r0, [r4]
	ldrh r0, [r7]
	mov r1, sp
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r6, [sp, #0x24]
	strh r0, [r6]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FBF8 @ =0x0000FFFF
	cmp r5, r0
	bne _0800FB36
_0800FBB6:
	ldr r1, _0800FBFC @ =gScript
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800FBCE
	mov r2, sp
	ldrh r6, [r2, #0x14]
	mov r2, sb
	strh r6, [r2]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r7]
_0800FBCE:
	ldr r1, _0800FBFC @ =gScript
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800FBE8
	mov r2, sp
	ldrh r6, [r2, #0x18]
	ldr r2, [sp, #0x48]
	strh r6, [r2]
	mov r0, sp
	ldrh r1, [r0, #0x18]
	mov r0, r8
	strh r1, [r0]
_0800FBE8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBF8: .4byte 0x0000FFFF
_0800FBFC: .4byte gScript

	thumb_func_start sub_0800FC00
sub_0800FC00: @ 0x0800FC00
	push {r4, lr}
	sub sp, #8
	ldr r0, _0800FC18 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #4
	bgt _0800FC1C
	cmp r0, #3
	blt _0800FC1C
	mov r1, sp
	movs r0, #0
	b _0800FC20
	.align 2, 0
_0800FC18: .4byte gUnknown_02005080
_0800FC1C:
	mov r1, sp
	movs r0, #1
_0800FC20:
	strh r0, [r1]
	ldr r4, _0800FCC4 @ =gUnknown_02005C0C
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_0800FDE8
	bl sub_08019F90
	ldr r0, _0800FCC8 @ =0x00008488
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800FC68
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800FC68
	add r4, sp, #4
	ldr r0, _0800FCCC @ =gSave
	ldr r2, _0800FCD0 @ =0x00000222
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, #0xa
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_08010528
	adds r0, r4, #0
	bl sub_0801059C
	adds r0, r4, #0
	bl sub_0801A218
_0800FC68:
	ldr r4, _0800FCD4 @ =gScript
	ldr r1, _0800FCD8 @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #1
	bl sub_080106CC
	bl sub_0801084C
	bl sub_080105F4
	bl sub_080120F4
	bl sub_08012354
	bl sub_08012408
	bl sub_080139AC
	ldrb r1, [r4, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800FCBC
	ldr r2, _0800FCDC @ =0x0000595C
	adds r0, r4, r2
	movs r1, #1
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0800FCE0 @ =0x0000598C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800FCE4 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08001ACC
_0800FCBC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FCC4: .4byte gUnknown_02005C0C
_0800FCC8: .4byte 0x00008488
_0800FCCC: .4byte gSave
_0800FCD0: .4byte 0x00000222
_0800FCD4: .4byte gScript
_0800FCD8: .4byte 0x000067AC
_0800FCDC: .4byte 0x0000595C
_0800FCE0: .4byte 0x0000598C
_0800FCE4: .4byte gUnknown_03005314

	thumb_func_start sub_0800FCE8
sub_0800FCE8: @ 0x0800FCE8
	push {r4, lr}
	sub sp, #4
	ldr r4, _0800FD0C @ =gUnknown_02005C0C
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800FDE8
	bl sub_08019F90
	ldr r1, _0800FD10 @ =0x0000594C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FD14
	cmp r0, #1
	beq _0800FD30
	b _0800FD42
	.align 2, 0
_0800FD0C: .4byte gUnknown_02005C0C
_0800FD10: .4byte 0x0000594C
_0800FD14:
	ldr r2, _0800FD2C @ =0x0000597C
	adds r1, r4, r2
	subs r2, #0x2e
	adds r0, r4, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	bl sub_080104BC
	b _0800FD42
	.align 2, 0
_0800FD2C: .4byte 0x0000597C
_0800FD30:
	ldr r1, _0800FD94 @ =0x00005970
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0800FD98 @ =0x00005972
	adds r0, r4, r2
	ldrh r2, [r0]
	mov r0, sp
	bl sub_08010528
_0800FD42:
	mov r0, sp
	bl sub_0801059C
	mov r0, sp
	bl sub_0801A218
	movs r4, #0
_0800FD50:
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800FD9C @ =gUnknown_02016078
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080012BC
	cmp r4, #2
	bls _0800FD50
	ldr r0, _0800FDA0 @ =gScript
	ldr r1, _0800FDA4 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	bl sub_080106CC
	bl sub_0801084C
	bl sub_080105F4
	bl sub_0801216C
	bl sub_08012354
	bl sub_08012464
	bl sub_080139FC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD94: .4byte 0x00005970
_0800FD98: .4byte 0x00005972
_0800FD9C: .4byte gUnknown_02016078
_0800FDA0: .4byte gScript
_0800FDA4: .4byte 0x000067AC

	thumb_func_start sub_0800FDA8
sub_0800FDA8: @ 0x0800FDA8
	push {r4, lr}
	ldr r4, _0800FDE0 @ =gUnknown_02005C0C
	adds r0, r4, #0
	bl sub_080101F8
	bl sub_08019F90
	ldr r0, _0800FDE4 @ =0x000067A0
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r1, #1
	bl sub_080106CC
	bl sub_0801084C
	bl sub_080105F4
	bl sub_080121D0
	bl sub_08012354
	bl sub_080124C0
	bl sub_08013A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDE0: .4byte gUnknown_02005C0C
_0800FDE4: .4byte 0x000067A0

	thumb_func_start sub_0800FDE8
sub_0800FDE8: @ 0x0800FDE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r1, _0800FF30 @ =0x000067A6
	adds r0, r6, r1
	movs r4, #0
	strh r4, [r0]
	ldr r2, _0800FF34 @ =0x000067A8
	adds r1, r6, r2
	movs r0, #4
	strh r0, [r1]
	ldr r3, _0800FF38 @ =0x000067AA
	adds r1, r6, r3
	movs r0, #1
	strh r0, [r1]
	ldr r5, _0800FF3C @ =0x000067B8
	adds r2, r6, r5
	ldrb r1, [r2]
	movs r5, #5
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800FF40 @ =0x000067B9
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	ands r0, r3
	strb r0, [r2]
	ldr r3, _0800FF44 @ =0x000067AC
	adds r0, r6, r3
	strh r4, [r0]
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0800FF48 @ =0x000067BA
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0800FF4C @ =0x000067B4
	adds r0, r6, r2
	strh r4, [r0]
	ldr r0, _0800FF50 @ =gScript
	adds r0, r0, r3
	ldrh r0, [r0]
	bl sub_0801B3B4
	adds r1, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	adds r1, #2
	strh r4, [r1]
	add r0, sp, #4
	strh r4, [r0]
	movs r7, #0
	mov sl, r0
	movs r3, #0
	mov r8, r3
	movs r4, #1
	mov sb, r4
_0800FEAA:
	lsls r3, r7, #3
	subs r2, r3, r7
	lsls r2, r2, #3
	adds r2, r6, r2
	ldr r5, _0800FF54 @ =0x000058BC
	adds r0, r2, r5
	mov r1, r8
	strh r1, [r0]
	ldr r4, _0800FF58 @ =0x000058BE
	adds r0, r2, r4
	strh r1, [r0]
	adds r5, #0x18
	adds r0, r2, r5
	strh r1, [r0]
	ldr r1, _0800FF5C @ =0x000058D6
	adds r0, r2, r1
	mov r4, r8
	strh r4, [r0]
	adds r5, #4
	adds r0, r2, r5
	movs r1, #0
	strb r1, [r0]
	ldr r4, _0800FF60 @ =0x000058D9
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r5, #9
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	movs r4, #0x11
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	subs r5, #0x18
	adds r1, r5, #0
	ands r0, r1
	subs r4, #0x30
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800FF50 @ =gScript
	ldr r5, _0800FF64 @ =0x00008494
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r4, r3, #0
	cmp r0, #0
	bne _0800FF1C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800FF1C
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_0801A1B8
_0800FF1C:
	cmp r7, #0
	bne _0800FF68
	ldr r1, _0800FF60 @ =0x000058D9
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r3, #2
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	b _0800FF78
	.align 2, 0
_0800FF30: .4byte 0x000067A6
_0800FF34: .4byte 0x000067A8
_0800FF38: .4byte 0x000067AA
_0800FF3C: .4byte 0x000067B8
_0800FF40: .4byte 0x000067B9
_0800FF44: .4byte 0x000067AC
_0800FF48: .4byte 0x000067BA
_0800FF4C: .4byte 0x000067B4
_0800FF50: .4byte gScript
_0800FF54: .4byte 0x000058BC
_0800FF58: .4byte 0x000058BE
_0800FF5C: .4byte 0x000058D6
_0800FF60: .4byte 0x000058D9
_0800FF64: .4byte 0x00008494
_0800FF68:
	subs r0, r4, r7
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r5, _0800FFC4 @ =0x000058D9
	adds r0, r0, r5
	ldrb r1, [r0]
	mov r2, sb
	orrs r1, r2
_0800FF78:
	strb r1, [r0]
	subs r0, r4, r7
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r3, _0800FFC4 @ =0x000058D9
	adds r5, r0, r3
	ldrb r2, [r5]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0800FFC8
	lsls r3, r7, #2
	adds r3, r6, r3
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r3, sb
	ands r0, r3
	lsls r0, r0, #2
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	b _0800FFDA
	.align 2, 0
_0800FFC4: .4byte 0x000058D9
_0800FFC8:
	movs r1, #3
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
_0800FFDA:
	subs r4, r4, r7
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r3, _08010050 @ =0x000058D9
	adds r0, r4, r3
	ldrb r2, [r0]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	mov r5, sp
	ldrh r1, [r5, #2]
	orrs r0, r1
	strh r0, [r5, #2]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1f
	mov r1, sl
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
	ldr r2, _08010054 @ =0x000058C0
	adds r0, r4, r2
	mov r3, r8
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r5, _08010058 @ =0x000058B0
	adds r0, r4, r5
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _0801005C @ =0x000058B4
	adds r4, r4, r0
	strh r3, [r4]
	strh r3, [r4, #2]
	adds r0, r7, #0
	bl sub_0801A61C
	subs r0, #0xf0
	strh r0, [r4, #4]
	adds r0, r7, #0
	bl sub_0801A638
	subs r0, #0xa0
	strh r0, [r4, #6]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bhi _08010038
	b _0800FEAA
_08010038:
	mov r1, sp
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08010060
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08010060
	movs r0, #2
	bl sub_08005900
	b _0801008E
	.align 2, 0
_08010050: .4byte 0x000058D9
_08010054: .4byte 0x000058C0
_08010058: .4byte 0x000058B0
_0801005C: .4byte 0x000058B4
_08010060:
	mov r3, sp
	ldrh r0, [r3, #2]
	cmp r0, #0
	beq _08010070
	movs r0, #3
	bl sub_08005900
	b _0801008E
_08010070:
	mov r4, sl
	ldrh r0, [r4]
	cmp r0, #0
	beq _08010080
	movs r0, #4
	bl sub_08005900
	b _0801008E
_08010080:
	ldr r0, _080101B4 @ =gUnknown_02016028
	ldr r5, _080101B8 @ =0x000121BB
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0801008E:
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801009E
	ldr r0, _080101B4 @ =gUnknown_02016028
	movs r1, #1
	bl sub_08007CE8
_0801009E:
	ldrb r0, [r6, #1]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r0, r0, #7
	lsls r0, r0, #2
	orrs r1, r0
	ldrb r2, [r6, #2]
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r1, r0
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r1, r0
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x18
	orrs r1, r0
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #9
	orrs r1, r0
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r1, r0
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r1, r0
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	lsls r2, r2, #0xc
	orrs r1, r2
	ldr r2, _080101BC @ =0x00006790
	adds r0, r6, r2
	ldrh r2, [r0]
	movs r4, #0
	movs r3, #0
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	ldrh r0, [r6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	lsls r0, r0, #8
	orrs r1, r0
	ldr r5, _080101C0 @ =0x00006792
	adds r0, r6, r5
	ldrh r2, [r0]
	strh r1, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	ldr r2, _080101C4 @ =0x00006794
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r0, _080101C8 @ =gScript
	ldr r5, _080101CC @ =0x00008494
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010164
	ldr r0, _080101D0 @ =0x000067B8
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080101D4 @ =0x00005950
	adds r0, r6, r1
	strb r4, [r0]
	ldr r2, _080101D8 @ =0x0000594F
	adds r0, r6, r2
	strb r4, [r0]
	movs r5, #0xb3
	lsls r5, r5, #7
	adds r2, r6, r5
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080101DC @ =0x00005951
	adds r0, r6, r1
	strb r4, [r0]
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_08010164:
	ldr r2, _080101E0 @ =0x00005956
	adds r0, r6, r2
	strh r3, [r0]
	ldr r4, _080101E4 @ =0x00005954
	adds r1, r6, r4
	movs r0, #0xa
	strh r0, [r1]
	movs r5, #0xb3
	lsls r5, r5, #7
	adds r2, r6, r5
	ldrb r1, [r2]
	subs r0, #0xc
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080101E8 @ =0x0000595C
	adds r0, r6, r1
	strh r3, [r0]
	ldr r2, _080101EC @ =0x0000595E
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #0xc
	adds r0, r6, r4
	strh r3, [r0]
	ldr r5, _080101F0 @ =0x00006798
	adds r0, r6, r5
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r1, _080101F4 @ =0x0000679C
	adds r0, r6, r1
	strh r3, [r0]
	strh r3, [r0, #2]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080101B4: .4byte gUnknown_02016028
_080101B8: .4byte 0x000121BB
_080101BC: .4byte 0x00006790
_080101C0: .4byte 0x00006792
_080101C4: .4byte 0x00006794
_080101C8: .4byte gScript
_080101CC: .4byte 0x00008494
_080101D0: .4byte 0x000067B8
_080101D4: .4byte 0x00005950
_080101D8: .4byte 0x0000594F
_080101DC: .4byte 0x00005951
_080101E0: .4byte 0x00005956
_080101E4: .4byte 0x00005954
_080101E8: .4byte 0x0000595C
_080101EC: .4byte 0x0000595E
_080101F0: .4byte 0x00006798
_080101F4: .4byte 0x0000679C

	thumb_func_start sub_080101F8
sub_080101F8: @ 0x080101F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08010318 @ =0x000067B9
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801031C @ =0x000067BA
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08010320 @ =gScript
	ldr r2, _08010324 @ =0x000067AC
	adds r0, r0, r2
	ldrh r0, [r0]
	bl sub_0801B3B4
	adds r1, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r7, #0
	mov sl, r0
	movs r5, #0
	mov r8, sp
	mov sb, sl
_08010266:
	lsls r4, r7, #3
	subs r4, r4, r7
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r3, _08010328 @ =0x000058BC
	adds r0, r4, r3
	strh r5, [r0]
	ldr r1, _0801032C @ =0x000058BE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r2, _08010330 @ =0x000058D4
	adds r0, r4, r2
	strh r5, [r0]
	adds r3, #0x1a
	adds r0, r4, r3
	strh r5, [r0]
	adds r1, #0x1a
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r3, #3
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	subs r3, #8
	adds r1, r3, #0
	ands r0, r1
	subs r3, #0x10
	adds r1, r3, #0
	ands r0, r1
	subs r3, #0x20
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1f
	mov r3, r8
	ldrh r2, [r3]
	orrs r1, r2
	strh r1, [r3]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r2, sb
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08010334 @ =0x000058C0
	adds r0, r4, r3
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r1, _08010338 @ =0x000058B0
	adds r0, r4, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r2, _0801033C @ =0x000058B4
	adds r4, r4, r2
	strh r5, [r4]
	strh r5, [r4, #2]
	adds r0, r7, #0
	bl sub_0801A61C
	subs r0, #0xf0
	strh r0, [r4, #4]
	adds r0, r7, #0
	bl sub_0801A638
	subs r0, #0xa0
	strh r0, [r4, #6]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bls _08010266
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010340
	mov r3, sl
	ldrh r0, [r3]
	cmp r0, #0
	beq _08010340
	movs r0, #2
	bl sub_08005900
	b _0801036E
	.align 2, 0
_08010318: .4byte 0x000067B9
_0801031C: .4byte 0x000067BA
_08010320: .4byte gScript
_08010324: .4byte 0x000067AC
_08010328: .4byte 0x000058BC
_0801032C: .4byte 0x000058BE
_08010330: .4byte 0x000058D4
_08010334: .4byte 0x000058C0
_08010338: .4byte 0x000058B0
_0801033C: .4byte 0x000058B4
_08010340:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010350
	movs r0, #3
	bl sub_08005900
	b _0801036E
_08010350:
	mov r4, sl
	ldrh r0, [r4]
	cmp r0, #0
	beq _08010360
	movs r0, #4
	bl sub_08005900
	b _0801036E
_08010360:
	ldr r0, _08010480 @ =gUnknown_02016028
	ldr r1, _08010484 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0801036E:
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801037E
	ldr r0, _08010480 @ =gUnknown_02016028
	movs r1, #1
	bl sub_08007CE8
_0801037E:
	ldrb r0, [r6, #1]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r0, r0, #7
	lsls r0, r0, #2
	orrs r1, r0
	ldrb r2, [r6, #2]
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r1, r0
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r1, r0
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x18
	orrs r1, r0
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #9
	orrs r1, r0
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r1, r0
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r1, r0
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	lsls r2, r2, #0xc
	orrs r1, r2
	ldr r2, _08010488 @ =0x00006790
	adds r0, r6, r2
	ldrh r2, [r0]
	movs r4, #0
	movs r3, #0
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	ldrh r0, [r6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0801048C @ =0x00006792
	adds r0, r6, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	ldr r2, _08010490 @ =0x00006794
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r0, _08010494 @ =gScript
	ldr r1, _08010498 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010436
	ldr r2, _0801049C @ =0x00005950
	adds r0, r6, r2
	strb r4, [r0]
	ldr r1, _080104A0 @ =0x0000594F
	adds r0, r6, r1
	strb r4, [r0]
	movs r0, #0xb3
	lsls r0, r0, #7
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080104A4 @ =0x00005951
	adds r0, r6, r1
	strb r4, [r0]
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_08010436:
	ldr r2, _080104A8 @ =0x00005956
	adds r0, r6, r2
	strh r3, [r0]
	ldr r4, _080104AC @ =0x00005954
	adds r1, r6, r4
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #0xb3
	lsls r0, r0, #7
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080104B0 @ =0x0000595C
	adds r0, r6, r1
	strh r3, [r0]
	ldr r2, _080104B4 @ =0x0000595E
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #0xc
	adds r0, r6, r4
	strh r3, [r0]
	ldr r1, _080104B8 @ =0x00006798
	adds r0, r6, r1
	strh r3, [r0]
	strh r3, [r0, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010480: .4byte gUnknown_02016028
_08010484: .4byte 0x000121BB
_08010488: .4byte 0x00006790
_0801048C: .4byte 0x00006792
_08010490: .4byte 0x00006794
_08010494: .4byte gScript
_08010498: .4byte 0x00008494
_0801049C: .4byte 0x00005950
_080104A0: .4byte 0x0000594F
_080104A4: .4byte 0x00005951
_080104A8: .4byte 0x00005956
_080104AC: .4byte 0x00005954
_080104B0: .4byte 0x0000595C
_080104B4: .4byte 0x0000595E
_080104B8: .4byte 0x00006798

	thumb_func_start sub_080104BC
sub_080104BC: @ 0x080104BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bhi _08010520
	lsls r0, r0, #2
	ldr r1, _080104D4 @ =_080104D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080104D4: .4byte _080104D8
_080104D8: @ jump table
	.4byte _08010518 @ case 0
	.4byte _080104F8 @ case 1
	.4byte _080104F8 @ case 2
	.4byte _080104F8 @ case 3
	.4byte _0801050A @ case 4
	.4byte _08010500 @ case 5
	.4byte _08010500 @ case 6
	.4byte _08010500 @ case 7
_080104F8:
	bl sub_0801A5EC
	subs r0, #0xf0
	b _08010502
_08010500:
	movs r0, #0
_08010502:
	strh r0, [r4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #2]
	b _08010520
_0801050A:
	ldrh r0, [r5]
	strh r0, [r4]
	bl sub_0801A604
	subs r0, #0xa0
	strh r0, [r4, #2]
	b _08010520
_08010518:
	ldrh r0, [r5]
	movs r1, #0
	strh r0, [r4]
	strh r1, [r4, #2]
_08010520:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010528
sub_08010528: @ 0x08010528
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4]
	strh r2, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08010542
	adds r0, r1, #0
	subs r0, #0x78
	b _0801055A
_08010542:
	ldr r0, _0801056C @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0801055A
	bl sub_0801A5EC
	ldr r1, _08010570 @ =0x0000FF88
	adds r0, r0, r1
	ldrh r2, [r4]
	adds r0, r0, r2
_0801055A:
	strh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0x60
	ble _08010574
	adds r0, r1, #0
	subs r0, #0x60
	b _0801058C
	.align 2, 0
_0801056C: .4byte gScript
_08010570: .4byte 0x0000FF88
_08010574:
	ldr r0, _08010594 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0801058C
	bl sub_0801A604
	ldr r1, _08010598 @ =0x0000FFA0
	adds r0, r0, r1
	ldrh r2, [r4, #2]
	adds r0, r0, r2
_0801058C:
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010594: .4byte gScript
_08010598: .4byte 0x0000FFA0

	thumb_func_start sub_0801059C
sub_0801059C: @ 0x0801059C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080105F0 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080105CC
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r0, #0xf0
	cmp r0, r5
	blt _080105CC
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, #0xf0
	strh r0, [r4]
_080105CC:
	ldr r0, _080105F0 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _080105E8
	movs r2, #2
	ldrsh r0, [r4, r2]
	adds r0, #0xa0
	cmp r0, r1
	blt _080105E8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0xa0
	strh r0, [r4, #2]
_080105E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080105F0: .4byte gScript

	thumb_func_start sub_080105F4
sub_080105F4: @ 0x080105F4
	push {r4, r5, lr}
	ldr r2, _08010620 @ =gUnknown_0200B590
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08010600:
	ldrb r0, [r2, #0xa]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xa]
	str r4, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0xc
	cmp r3, #0x13
	bls _08010600
	bl sub_08010624
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010620: .4byte gUnknown_0200B590

	thumb_func_start sub_08010624
sub_08010624: @ 0x08010624
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _080106C0 @ =gUnknown_0200B590
	movs r7, #0
	movs r6, #0
	ldr r0, _080106C4 @ =0x00000E1C
	adds r0, r0, r5
	mov sb, r0
	movs r1, #1
	mov r8, r1
_0801063C:
	adds r0, r6, #0
	bl sub_0801B4C4
	adds r4, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080106A8
	ldrh r0, [r4, #4]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080106A8
	ldrb r0, [r5, #0xa]
	mov r3, r8
	orrs r0, r3
	strb r0, [r5, #0xa]
	str r4, [r5]
	ldrh r0, [r4, #0xc]
	bl sub_08002A30
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #1
	ldrb r0, [r5, #0xa]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	subs r3, #6
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r5, #0xa]
	movs r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r4, #6]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #4]
	ldrb r0, [r4, #7]
	lsls r0, r0, #4
	adds r0, #0x10
	strh r0, [r5, #6]
	adds r5, #0xc
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x13
	bhi _080106B4
_080106A8:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080106C8 @ =0x000003FF
	cmp r6, r0
	bls _0801063C
_080106B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080106C0: .4byte gUnknown_0200B590
_080106C4: .4byte 0x00000E1C
_080106C8: .4byte 0x000003FF

	thumb_func_start sub_080106CC
sub_080106CC: @ 0x080106CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	adds r0, r7, #0
	bl sub_0801B3D8
	adds r6, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010724
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r5, #0
	ldr r0, _08010720 @ =gUnknown_02005C2C
	mov r8, r0
_080106F6:
	lsls r0, r5, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	bl sub_0801B3FC
	lsls r1, r5, #2
	add r1, r8
	str r0, [r1]
	adds r1, r4, #0
	bl sub_08090F88
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xb
	bls _080106F6
	b _08010738
	.align 2, 0
_08010720: .4byte gUnknown_02005C2C
_08010724:
	ldr r2, _08010770 @ =gUnknown_02016028
	ldr r0, _08010774 @ =0x000121B8
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08010778 @ =0x000121BC
	adds r2, r2, r1
	strh r7, [r2]
_08010738:
	ldrh r0, [r6, #0x18]
	bl sub_0801B414
	ldr r4, _0801077C @ =gScript
	str r0, [r4, #0x28]
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08016F4C
	movs r0, #0
	movs r1, #0xc
	bl sub_0803B688
	adds r6, r4, #0
	adds r6, #0x68
	movs r5, #0
	adds r4, #0x5c
_0801075C:
	ldr r2, _0801077C @ =gScript
	cmp r5, #0
	bne _08010780
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010780
	str r5, [r2, #0x5c]
	b _080107CE
	.align 2, 0
_08010770: .4byte gUnknown_02016028
_08010774: .4byte 0x000121B8
_08010778: .4byte 0x000121BC
_0801077C: .4byte gScript
_08010780:
	cmp r5, #1
	bne _080107A8
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _080107A8
	movs r0, #0
	str r0, [r2, #0x60]
	ldr r3, _080107A4 @ =0x0000591D
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	b _080107CE
	.align 2, 0
_080107A4: .4byte 0x0000591D
_080107A8:
	lsls r0, r5, #2
	adds r0, r0, r4
	str r6, [r0]
	lsls r0, r7, #1
	adds r0, r0, r7
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B42C
	adds r1, r6, #0
	bl sub_08090F8C
	adds r0, r5, #0
	bl sub_0801A650
	lsls r0, r0, #0x10
	lsrs r0, r0, #7
	adds r6, r6, r0
_080107CE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801075C
	ldr r0, _080107FC @ =gScript
	ldr r1, _08010800 @ =0x00004088
	adds r4, r0, r1
	ldr r3, _08010804 @ =0x0000408C
	adds r0, r0, r3
	str r0, [r4]
	adds r0, r7, #0
	bl sub_0801B444
	ldr r1, [r4]
	bl sub_08090F8C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080107FC: .4byte gScript
_08010800: .4byte 0x00004088
_08010804: .4byte 0x0000408C

	thumb_func_start sub_08010808
sub_08010808: @ 0x08010808
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B3D8
	adds r6, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0
	ldr r7, _08010848 @ =gUnknown_02005C2C
_0801081C:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	bl sub_0801B3FC
	lsls r1, r4, #2
	adds r1, r1, r7
	str r0, [r1]
	adds r1, r5, #0
	bl sub_08090F88
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xb
	bls _0801081C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010848: .4byte gUnknown_02005C2C

	thumb_func_start sub_0801084C
sub_0801084C: @ 0x0801084C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	movs r7, #0
	mov r8, sp
_08010862:
	ldr r3, _08010960 @ =gScript
	cmp r4, #0
	bne _08010870
	ldrb r0, [r3, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08010946
_08010870:
	cmp r4, #1
	bne _0801087C
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08010946
_0801087C:
	cmp r4, #0
	bne _080108C4
	ldr r1, _08010964 @ =0x000067AC
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080108C4
	subs r0, #2
	cmp r1, r0
	blt _080108C4
	ldr r0, _08010968 @ =0x000067C4
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801096C @ =0x000058B0
	adds r0, r3, r1
	strh r4, [r0]
	ldr r2, _08010970 @ =0x000058B2
	adds r0, r3, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r4, [r0]
_080108C4:
	ldr r6, _08010960 @ =gScript
	lsls r0, r4, #2
	adds r1, r0, r6
	ldrb r1, [r1, #0x1c]
	lsrs r1, r1, #6
	adds r5, r0, #0
	cmp r1, #3
	bne _080108FC
	adds r0, r4, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bne _080108FC
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, _0801096C @ =0x000058B0
	adds r1, r0, r2
	strh r7, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r7, [r1]
	ldr r1, _08010974 @ =0x000058B8
	adds r0, r0, r1
	strh r7, [r0]
_080108FC:
	ldr r6, _08010960 @ =gScript
	adds r0, r5, r6
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010932
	adds r0, r4, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bne _08010932
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, _08010970 @ =0x000058B2
	adds r1, r0, r2
	strh r7, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r7, [r1]
	ldr r1, _08010978 @ =0x000058BA
	adds r0, r0, r1
	strh r7, [r0]
_08010932:
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801A594
	mov r2, r8
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	adds r0, r4, #0
	bl sub_0801097C
_08010946:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _08010862
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010960: .4byte gScript
_08010964: .4byte 0x000067AC
_08010968: .4byte 0x000067C4
_0801096C: .4byte 0x000058B0
_08010970: .4byte 0x000058B2
_08010974: .4byte 0x000058B8
_08010978: .4byte 0x000058BA

	thumb_func_start sub_0801097C
sub_0801097C: @ 0x0801097C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, _080109C0 @ =gScript
	lsls r0, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _080109C4
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _080109C4
	movs r0, #0x10
	mov sl, r0
	movs r6, #0x10
	b _080109EA
	.align 2, 0
_080109C0: .4byte gScript
_080109C4:
	ldr r0, _080109DC @ =gScript
	ldr r1, _080109E0 @ =0x000067C4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080109E4
	movs r2, #0x10
	mov sl, r2
	movs r6, #0x10
	b _080109EA
	.align 2, 0
_080109DC: .4byte gScript
_080109E0: .4byte 0x000067C4
_080109E4:
	movs r0, #0x10
	mov sl, r0
	movs r6, #0xb
_080109EA:
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r6
	bhs _08010A18
_080109F2:
	mov r1, r8
	adds r2, r1, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r1, sb
	movs r3, #0
	bl sub_08010F58
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _080109F2
_08010A18:
	ldr r0, _08010A38 @ =gUnknown_02016028
	lsls r1, r7, #1
	ldr r2, _08010A3C @ =0x00002C90
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010A38: .4byte gUnknown_02016028
_08010A3C: .4byte 0x00002C90

	thumb_func_start sub_08010A40
sub_08010A40: @ 0x08010A40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r1, r3, #0
	cmp r5, #0
	bne _08010A66
	ldr r0, _08010A84 @ =gScript
	ldrb r0, [r0, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010A66
	b _08010C36
_08010A66:
	cmp r5, #1
	bne _08010A76
	ldr r0, _08010A84 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08010A76
	b _08010C36
_08010A76:
	cmp r3, #3
	beq _08010B5E
	cmp r3, #3
	bgt _08010A88
	cmp r3, #1
	beq _08010AF4
	b _08010C24
	.align 2, 0
_08010A84: .4byte gScript
_08010A88:
	cmp r1, #5
	beq _08010A94
	cmp r1, #7
	bne _08010A92
	b _08010BBC
_08010A92:
	b _08010C24
_08010A94:
	ldr r4, _08010AC8 @ =gScript
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010AD0
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010AD0
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, _08010ACC @ =0x000058E5
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	b _08010BEA
	.align 2, 0
_08010AC8: .4byte gScript
_08010ACC: .4byte 0x000058E5
_08010AD0:
	movs r0, #2
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08011ABC
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	b _08010B56
_08010AF4:
	ldr r4, _08010B28 @ =gScript
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010B30
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010B30
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, _08010B2C @ =0x000058E5
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r2, #0x40
	b _08010BEA
	.align 2, 0
_08010B28: .4byte gScript
_08010B2C: .4byte 0x000058E5
_08010B30:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r4, #0x14
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_08011BA4
	adds r2, r7, #0
	adds r2, #0xa
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
_08010B56:
	movs r3, #0
	bl sub_08010C48
	b _08010C24
_08010B5E:
	ldr r4, _08010B8C @ =gScript
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08010B94
	adds r0, r5, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010B94
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, _08010B90 @ =0x000058E5
	adds r0, r0, r1
	b _08010BE6
	.align 2, 0
_08010B8C: .4byte gScript
_08010B90: .4byte 0x000058E5
_08010B94:
	movs r4, #0
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08011C58
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0801124C
	b _08010C24
_08010BBC:
	ldr r4, _08010BF0 @ =gScript
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08010BF8
	adds r0, r5, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010BF8
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, _08010BF4 @ =0x000058E5
	adds r0, r0, r2
_08010BE6:
	ldrb r1, [r0]
	movs r2, #0x20
_08010BEA:
	orrs r1, r2
	strb r1, [r0]
	b _08010C36
	.align 2, 0
_08010BF0: .4byte gScript
_08010BF4: .4byte 0x000058E5
_08010BF8:
	movs r4, #0
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08011DA4
	adds r1, r6, #0
	adds r1, #0xf
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #0x1e
	bl sub_0801124C
_08010C24:
	ldr r1, _08010C40 @ =gUnknown_02016028
	adds r0, r5, #1
	lsls r0, r0, #1
	ldr r2, _08010C44 @ =0x00002C90
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_08010C36:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010C40: .4byte gUnknown_02016028
_08010C44: .4byte 0x00002C90

	thumb_func_start sub_08010C48
sub_08010C48: @ 0x08010C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, [sp, #0x40]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r2, _08010CC0 @ =gScript
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08010CB2
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08010CB2
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r4, _08010CC4 @ =0x000058E5
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08010CC8
_08010CB2:
	adds r0, r6, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08010CCE
	.align 2, 0
_08010CC0: .4byte gScript
_08010CC4: .4byte 0x000058E5
_08010CC8:
	cmp r6, r1
	blo _08010CCE
	b _08010F48
_08010CCE:
	ldr r1, _08010D04 @ =gScript
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08010CFC
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	beq _08010CFC
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, _08010D08 @ =0x000058E5
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08010D0C
_08010CFC:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	b _08010D10
	.align 2, 0
_08010D04: .4byte gScript
_08010D08: .4byte 0x000058E5
_08010D0C:
	mov r0, sp
	strh r1, [r0]
_08010D10:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r6, r6, #0x10
	asrs r2, r6, #0x10
	ldr r0, [sp, #4]
	bl sub_0801A904
	str r0, [sp, #0xc]
	ldr r5, _08010DC4 @ =gUnknown_02016078
	ldr r4, [sp, #4]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_08001378
	mov sb, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001378
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x1c]
_08010D52:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r1, r2, r3
	ldr r4, [sp, #0x14]
	cmp r1, r4
	blt _08010D82
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08010D68
	b _08010F48
_08010D68:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x1c]
	asrs r2, r3, #0x10
	bl sub_0801A904
	str r0, [sp, #0xc]
_08010D82:
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	lsls r2, r0, #0x16
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #0xb
	bls _08010D92
	b _08010F1E
_08010D92:
	lsls r1, r3, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _08010D9C
	b _08010F1E
_08010D9C:
	ldr r0, _08010DC8 @ =gScript
	ldr r4, _08010DCC @ =0x00004088
	adds r0, r0, r4
	ldr r4, [r0]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #9
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _08010DD4
	ldr r1, _08010DD0 @ =gUnknown_08D2D310
	mov sl, r1
	b _08010DF4
	.align 2, 0
_08010DC4: .4byte gUnknown_02016078
_08010DC8: .4byte gScript
_08010DCC: .4byte 0x00004088
_08010DD0: .4byte gUnknown_08D2D310
_08010DD4:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _08010DE4
	ldr r2, _08010DE0 @ =gUnknown_08D2D314
	b _08010DF2
	.align 2, 0
_08010DE0: .4byte gUnknown_08D2D314
_08010DE4:
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r1, _08010E4C @ =gUnknown_08D2D31C
	mov sl, r1
	cmp r2, r0
	bne _08010DF4
	ldr r2, _08010E50 @ =gUnknown_08D2D318
_08010DF2:
	mov sl, r2
_08010DF4:
	movs r6, #0xf0
	lsls r6, r6, #2
	ands r6, r3
	lsls r0, r3, #0x11
	lsrs r7, r0, #0x1f
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1f
	mov ip, r0
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x1c
	lsls r5, r0, #0xc
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r1, r0
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _08010E54
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r0, sb
	strh r2, [r0]
	b _08010E58
	.align 2, 0
_08010E4C: .4byte gUnknown_08D2D31C
_08010E50: .4byte gUnknown_08D2D318
_08010E54:
	mov r2, sb
	strh r1, [r2]
_08010E58:
	mov r3, sl
	ldrb r0, [r3, #1]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x18]
	ands r1, r2
	cmp r1, #0
	beq _08010E96
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, sb
	strh r2, [r3, #2]
	b _08010E9A
_08010E96:
	mov r0, sb
	strh r1, [r0, #2]
_08010E9A:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x18]
	ands r1, r2
	cmp r1, #0
	beq _08010ED8
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, r8
	strh r2, [r3]
	b _08010EDC
_08010ED8:
	mov r0, r8
	strh r1, [r0]
_08010EDC:
	mov r1, sl
	ldrb r0, [r1, #3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x18]
	ands r1, r2
	cmp r1, #0
	beq _08010F18
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, r6, r1
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	eors r7, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	mov r3, ip
	eors r3, r2
	lsls r0, r3, #0xb
	orrs r1, r0
	orrs r5, r1
	mov r4, r8
	strh r5, [r4, #2]
	b _08010F2C
_08010F18:
	mov r0, r8
	strh r1, [r0, #2]
	b _08010F2C
_08010F1E:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2]
_08010F2C:
	movs r3, #4
	add sb, r3
	add r8, r3
	ldr r4, [sp, #0xc]
	adds r4, #2
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xf
	bhi _08010F48
	b _08010D52
_08010F48:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010F58
sub_08010F58: @ 0x08010F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0x48]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0xc]
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r2, _08010FC4 @ =gScript
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08010FB6
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010FC8
_08010FB6:
	adds r0, r6, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08010FCE
	.align 2, 0
_08010FC4: .4byte gScript
_08010FC8:
	cmp r6, r1
	blo _08010FCE
	b _0801123A
_08010FCE:
	ldr r2, _08010FF0 @ =gScript
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne _08010FE8
	ldr r4, [sp, #4]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08010FF4
_08010FE8:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	b _08010FF8
	.align 2, 0
_08010FF0: .4byte gScript
_08010FF4:
	mov r0, sp
	strh r1, [r0]
_08010FF8:
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r6, r6, #0x10
	asrs r2, r6, #0x10
	ldr r0, [sp, #4]
	bl sub_0801A904
	str r0, [sp, #0x10]
	ldr r5, _080110B4 @ =gUnknown_02016078
	ldr r4, [sp, #4]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_08001378
	mov sb, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001378
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x14]
	str r6, [sp, #0x20]
	ldr r2, [sp, #0xc]
	cmp r1, r2
	blo _08011042
	b _0801123A
_08011042:
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x14]
	adds r1, r3, r4
	ldr r0, [sp, #0x18]
	cmp r1, r0
	blt _08011072
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011058
	b _0801123A
_08011058:
	adds r0, r1, #0
	ldr r1, [sp, #0x18]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	asrs r2, r3, #0x10
	bl sub_0801A904
	str r0, [sp, #0x10]
_08011072:
	ldr r4, [sp, #0x10]
	ldr r0, [r4]
	lsls r2, r0, #0x16
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #0xb
	bls _08011082
	b _0801120E
_08011082:
	lsls r1, r3, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _0801108C
	b _0801120E
_0801108C:
	ldr r0, _080110B8 @ =gScript
	ldr r4, _080110BC @ =0x00004088
	adds r0, r0, r4
	ldr r4, [r0]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #9
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _080110C4
	ldr r1, _080110C0 @ =gUnknown_08D2D310
	mov sl, r1
	b _080110E4
	.align 2, 0
_080110B4: .4byte gUnknown_02016078
_080110B8: .4byte gScript
_080110BC: .4byte 0x00004088
_080110C0: .4byte gUnknown_08D2D310
_080110C4:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _080110D4
	ldr r2, _080110D0 @ =gUnknown_08D2D314
	b _080110E2
	.align 2, 0
_080110D0: .4byte gUnknown_08D2D314
_080110D4:
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r1, _0801113C @ =gUnknown_08D2D31C
	mov sl, r1
	cmp r2, r0
	bne _080110E4
	ldr r2, _08011140 @ =gUnknown_08D2D318
_080110E2:
	mov sl, r2
_080110E4:
	movs r6, #0xf0
	lsls r6, r6, #2
	ands r6, r3
	lsls r0, r3, #0x11
	lsrs r7, r0, #0x1f
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1f
	mov ip, r0
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x1c
	lsls r5, r0, #0xc
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r1, r0
	str r0, [sp, #0x1c]
	cmp r1, #0
	beq _08011144
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r0, sb
	strh r2, [r0]
	b _08011148
	.align 2, 0
_0801113C: .4byte gUnknown_08D2D31C
_08011140: .4byte gUnknown_08D2D318
_08011144:
	mov r2, sb
	strh r1, [r2]
_08011148:
	mov r3, sl
	ldrb r0, [r3, #1]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _08011186
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, sb
	strh r2, [r3, #2]
	b _0801118A
_08011186:
	mov r0, sb
	strh r1, [r0, #2]
_0801118A:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _080111C8
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, r8
	strh r2, [r3]
	b _080111CC
_080111C8:
	mov r0, r8
	strh r1, [r0]
_080111CC:
	mov r1, sl
	ldrb r0, [r1, #3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _08011208
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, r6, r1
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	eors r7, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	mov r3, ip
	eors r3, r2
	lsls r0, r3, #0xb
	orrs r1, r0
	orrs r5, r1
	mov r4, r8
	strh r5, [r4, #2]
	b _0801121C
_08011208:
	mov r0, r8
	strh r1, [r0, #2]
	b _0801121C
_0801120E:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2]
_0801121C:
	movs r3, #4
	add sb, r3
	add r8, r3
	ldr r4, [sp, #0x10]
	adds r4, #2
	str r4, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bhs _0801123A
	b _08011042
_0801123A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801124C
sub_0801124C: @ 0x0801124C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	ldr r1, _080112C4 @ =gScript
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080112B6
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	beq _080112B6
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, _080112C8 @ =0x000058E5
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080112CC
_080112B6:
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080112D4
	.align 2, 0
_080112C4: .4byte gScript
_080112C8: .4byte 0x000058E5
_080112CC:
	ldr r4, [sp, #0x14]
	cmp r6, r4
	blo _080112D4
	b _08011554
_080112D4:
	ldr r1, _0801130C @ =gScript
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08011304
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08011304
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, _08011310 @ =0x000058E5
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08011314
_08011304:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	b _08011318
	.align 2, 0
_0801130C: .4byte gScript
_08011310: .4byte 0x000058E5
_08011314:
	mov r0, sp
	strh r1, [r0]
_08011318:
	lsls r6, r6, #0x10
	asrs r1, r6, #0x10
	ldr r4, [sp, #8]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #4]
	bl sub_0801A904
	str r0, [sp, #0xc]
	ldr r5, _080113CC @ =gUnknown_02016078
	ldr r4, [sp, #4]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_08001378
	mov sb, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001378
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x20]
_0801135A:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r1, r2, r3
	ldr r4, [sp, #0x18]
	cmp r1, r4
	blt _0801138A
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011370
	b _08011554
_08011370:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08002FD4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	asrs r1, r3, #0x10
	bl sub_0801A904
	str r0, [sp, #0xc]
_0801138A:
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	lsls r2, r0, #0x16
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #0xb
	bls _0801139A
	b _08011526
_0801139A:
	lsls r1, r3, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _080113A4
	b _08011526
_080113A4:
	ldr r0, _080113D0 @ =gScript
	ldr r4, _080113D4 @ =0x00004088
	adds r0, r0, r4
	ldr r4, [r0]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #9
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _080113DC
	ldr r1, _080113D8 @ =gUnknown_08D2D310
	mov sl, r1
	b _080113FC
	.align 2, 0
_080113CC: .4byte gUnknown_02016078
_080113D0: .4byte gScript
_080113D4: .4byte 0x00004088
_080113D8: .4byte gUnknown_08D2D310
_080113DC:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _080113EC
	ldr r2, _080113E8 @ =gUnknown_08D2D314
	b _080113FA
	.align 2, 0
_080113E8: .4byte gUnknown_08D2D314
_080113EC:
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r1, _08011454 @ =gUnknown_08D2D31C
	mov sl, r1
	cmp r2, r0
	bne _080113FC
	ldr r2, _08011458 @ =gUnknown_08D2D318
_080113FA:
	mov sl, r2
_080113FC:
	movs r6, #0xf0
	lsls r6, r6, #2
	ands r6, r3
	lsls r0, r3, #0x11
	lsrs r7, r0, #0x1f
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1f
	mov ip, r0
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x1c
	lsls r5, r0, #0xc
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r1, r0
	str r0, [sp, #0x1c]
	cmp r1, #0
	beq _0801145C
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r0, sb
	strh r2, [r0]
	b _08011460
	.align 2, 0
_08011454: .4byte gUnknown_08D2D31C
_08011458: .4byte gUnknown_08D2D318
_0801145C:
	mov r2, sb
	strh r1, [r2]
_08011460:
	mov r3, sl
	ldrb r0, [r3, #1]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _0801149E
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, sb
	strh r2, [r3, #2]
	b _080114A2
_0801149E:
	mov r0, sb
	strh r1, [r0, #2]
_080114A2:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _080114E0
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, r8
	strh r2, [r3]
	b _080114E4
_080114E0:
	mov r0, r8
	strh r1, [r0]
_080114E4:
	mov r1, sl
	ldrb r0, [r1, #3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _08011520
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, r6, r1
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	eors r7, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	mov r3, ip
	eors r3, r2
	lsls r0, r3, #0xb
	orrs r1, r0
	orrs r5, r1
	mov r4, r8
	strh r5, [r4, #2]
	b _08011534
_08011520:
	mov r0, r8
	strh r1, [r0, #2]
	b _08011534
_08011526:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2]
_08011534:
	movs r3, #0x80
	add sb, r3
	add r8, r3
	ldr r4, [sp, #0x14]
	lsls r0, r4, #1
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xa
	bhi _08011554
	b _0801135A
_08011554:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08011564
sub_08011564: @ 0x08011564
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _080115B8 @ =gUnknown_0200B4B0
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	blt _080115B0
	movs r5, #8
	ldrsh r0, [r2, r5]
	cmp r0, #7
	bgt _0801159E
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #2]
	movs r0, #0
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #0x1e
	bl sub_080115C4
_0801159E:
	ldr r1, _080115BC @ =gUnknown_02016028
	adds r0, r4, #1
	lsls r0, r0, #1
	ldr r2, _080115C0 @ =0x00002C90
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_080115B0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080115B8: .4byte gUnknown_0200B4B0
_080115BC: .4byte gUnknown_02016028
_080115C0: .4byte 0x00002C90

	thumb_func_start sub_080115C4
sub_080115C4: @ 0x080115C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r4, [sp, #0x54]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	adds r0, r6, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	adds r0, r6, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	cmp r5, r0
	blo _0801160A
	b _080117B4
_0801160A:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_0801A904
	str r0, [sp, #4]
	ldr r5, _0801170C @ =gUnknown_02016078
	adds r4, r6, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	adds r3, r7, #0
	bl sub_08001378
	mov r8, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	bl sub_08001378
	adds r7, r0, #0
	movs r4, #0
_08011646:
	ldr r1, [sp]
	adds r0, r1, r4
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	blt _08011652
	b _080117B4
_08011652:
	ldr r3, [sp, #4]
	ldr r1, [r3]
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x1c
	cmp r0, #0xb
	bls _08011660
	b _0801176A
_08011660:
	lsls r1, r1, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _0801166A
	b _0801176A
_0801166A:
	lsrs r0, r2, #0x1c
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl sub_0801AE18
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	ldr r0, [r1]
	movs r2, #0xf0
	lsls r2, r2, #2
	mov ip, r2
	mov r3, ip
	ands r3, r0
	mov ip, r3
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x1f
	str r1, [sp, #0xc]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x10]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	str r0, [sp, #0x20]
	movs r6, #1
	mov r0, r8
	adds r0, #0x80
	str r0, [sp, #0x24]
	adds r1, r7, #0
	adds r1, #0x80
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x30]
	adds r4, #1
	str r4, [sp, #0x2c]
	ldr r3, [sp, #8]
	ldr r3, [r3]
	mov sl, r3
_080116BE:
	ldr r1, [sp, #0x14]
	adds r0, r1, r6
	ldrb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r1, sl
	ands r2, r1
	mov sb, r0
	cmp r2, #0
	beq _08011710
	adds r0, r3, #4
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r4, r6, #1
	mov r3, r8
	adds r5, r4, r3
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0xc]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #0x10]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	ldr r0, [sp, #0x20]
	orrs r2, r0
	strh r2, [r5]
	adds r1, r4, #0
	b _08011718
	.align 2, 0
_0801170C: .4byte gUnknown_02016078
_08011710:
	lsls r1, r6, #1
	mov r3, r8
	adds r0, r1, r3
	strh r2, [r0]
_08011718:
	mov r0, sb
	ldrb r3, [r0, #2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r0, sl
	ands r2, r0
	cmp r2, #0
	beq _0801175A
	adds r0, r3, #4
	ldr r2, [sp, #8]
	adds r0, r2, r0
	adds r4, r1, r7
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0xc]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #0x10]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	ldr r3, [sp, #0x20]
	orrs r2, r3
	strh r2, [r4]
	b _0801175E
_0801175A:
	adds r0, r1, r7
	strh r2, [r0]
_0801175E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _080116BE
	b _0801179A
_0801176A:
	movs r6, #0
	mov r0, r8
	adds r0, #0x80
	str r0, [sp, #0x24]
	adds r1, r7, #0
	adds r1, #0x80
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x30]
	adds r4, #1
	str r4, [sp, #0x2c]
	movs r2, #0
_08011784:
	lsls r0, r6, #1
	mov r3, r8
	adds r1, r0, r3
	adds r0, r0, r7
	strh r2, [r0]
	strh r2, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08011784
_0801179A:
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x30]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r3, [sp, #0x2c]
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xa
	bhi _080117B4
	b _08011646
_080117B4:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080117C4
sub_080117C4: @ 0x080117C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r1, #0
	str r0, [sp, #0xc]
	adds r0, #0x40
	str r0, [sp, #0x10]
	ldr r1, [r4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1c
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0801AE18
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #2
	mov ip, r1
	mov r2, ip
	ands r2, r0
	mov ip, r2
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1f
	mov sl, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	mov sb, r0
	movs r6, #0
	ldr r3, [sp]
	ldr r3, [r3]
	mov r8, r3
_0801181A:
	ldr r1, [sp, #8]
	adds r0, r1, r6
	ldrb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r1, r8
	ands r2, r1
	adds r7, r0, #0
	cmp r2, #0
	beq _08011866
	adds r0, r3, #4
	ldr r2, [sp]
	adds r0, r2, r0
	lsls r4, r6, #1
	ldr r3, [sp, #0xc]
	adds r5, r4, r3
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, sl
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r0, sb
	orrs r2, r0
	strh r2, [r5]
	adds r1, r4, #0
	b _0801186E
_08011866:
	lsls r1, r6, #1
	ldr r3, [sp, #0xc]
	adds r0, r1, r3
	strh r2, [r0]
_0801186E:
	ldrb r3, [r7, #2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r0, r8
	ands r2, r0
	cmp r2, #0
	beq _080118B0
	adds r0, r3, #4
	ldr r2, [sp]
	adds r0, r2, r0
	ldr r3, [sp, #0x10]
	adds r4, r1, r3
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, sl
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r0, sb
	orrs r2, r0
	strh r2, [r4]
	b _080118B6
_080118B0:
	ldr r3, [sp, #0x10]
	adds r0, r1, r3
	strh r2, [r0]
_080118B6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _0801181A
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080118D0
sub_080118D0: @ 0x080118D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	mov r8, r0
	adds r0, #0x40
	str r0, [sp, #0x10]
	ldr r0, _08011974 @ =gScript
	ldr r1, _08011978 @ =0x000067C5
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080119DA
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	bl sub_0801AD84
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_0801AE18
	str r0, [sp, #0xc]
	ldr r0, [r4]
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1f
	str r1, [sp, #8]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	mov sl, r0
	movs r6, #0
	ldr r3, [r7]
	mov sb, r3
_08011928:
	ldr r1, [sp, #0xc]
	adds r0, r1, r6
	ldrb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r1, sb
	ands r2, r1
	mov ip, r0
	cmp r2, #0
	beq _0801197C
	adds r0, r3, #4
	adds r2, r7, r0
	lsls r4, r6, #1
	mov r3, r8
	adds r5, r4, r3
	ldr r3, [r2]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	ldr r0, [sp]
	adds r2, r0, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #8]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r1, sl
	orrs r2, r1
	strh r2, [r5]
	adds r1, r4, #0
	b _08011984
	.align 2, 0
_08011974: .4byte gScript
_08011978: .4byte 0x000067C5
_0801197C:
	lsls r1, r6, #1
	mov r3, r8
	adds r0, r1, r3
	strh r2, [r0]
_08011984:
	mov r0, ip
	ldrb r3, [r0, #2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r0, sb
	ands r2, r0
	cmp r2, #0
	beq _080119C8
	adds r0, r3, #4
	adds r2, r7, r0
	ldr r3, [sp, #0x10]
	adds r4, r1, r3
	ldr r3, [r2]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	ldr r0, [sp]
	adds r2, r0, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #8]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r1, sl
	orrs r2, r1
	strh r2, [r4]
	b _080119CE
_080119C8:
	ldr r3, [sp, #0x10]
	adds r0, r1, r3
	strh r2, [r0]
_080119CE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08011928
	b _08011A30
_080119DA:
	ldr r1, [r4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1c
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
	adds r7, r0, #0
	movs r6, #0
_080119EC:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0801ADA0
	adds r2, r0, #0
	cmp r2, #0
	beq _08011A06
	lsls r0, r6, #1
	add r0, r8
	adds r1, r4, #0
	bl sub_08011A40
_08011A06:
	adds r2, r6, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0801ADA0
	adds r2, r0, #0
	cmp r2, #0
	beq _08011A26
	lsls r0, r6, #1
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	adds r1, r4, #0
	bl sub_08011A40
_08011A26:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _080119EC
_08011A30:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08011A40
sub_08011A40: @ 0x08011A40
	push {r4, r5, lr}
	ldr r5, [r2]
	lsls r4, r5, #0x1a
	lsrs r4, r4, #0x1a
	ldr r3, [r1]
	movs r1, #0xf0
	lsls r1, r1, #2
	ands r1, r3
	adds r4, r4, r1
	lsls r1, r3, #0x11
	lsrs r1, r1, #0x1f
	lsls r2, r5, #0x19
	lsrs r2, r2, #0x1f
	eors r1, r2
	lsls r1, r1, #0xa
	orrs r4, r1
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x1f
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x1f
	eors r1, r5
	lsls r1, r1, #0xb
	orrs r4, r1
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x1c
	lsls r3, r3, #0xc
	orrs r4, r3
	strh r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011A80
sub_08011A80: @ 0x08011A80
	push {r4, r5, lr}
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r5, [r2]
	lsls r2, r5, #0x1a
	lsrs r2, r2, #0x1a
	adds r3, r3, r2
	ldr r4, [r1]
	lsls r1, r4, #0x11
	lsrs r1, r1, #0x1f
	lsls r2, r5, #0x19
	lsrs r2, r2, #0x1f
	eors r1, r2
	lsls r1, r1, #0xa
	orrs r3, r1
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x1f
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x1f
	eors r1, r5
	lsls r1, r1, #0xb
	orrs r3, r1
	lsls r4, r4, #0x12
	lsrs r4, r4, #0x1c
	lsls r4, r4, #0xc
	orrs r3, r4
	strh r3, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08011ABC
sub_08011ABC: @ 0x08011ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	mov r2, sb
	lsls r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	add sb, r0
	mov r1, sb
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r2, _08011B60 @ =0x0000FFFF
	mov sl, r2
	add r4, sl
	ldr r0, [sp]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r5, sl
	adds r5, r7, r5
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08011B64 @ =gUnknown_02016078
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08001378
	adds r4, r0, #0
	add r6, sl
	ldr r1, [sp]
	adds r6, r1, r6
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r8, sl
	add r8, r7
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _08011B64 @ =gUnknown_02016078
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_08001378
	adds r3, r0, #0
	ldr r0, _08011B68 @ =gScript
	ldrh r1, [r0, #2]
	ldr r0, _08011B6C @ =0x00004008
	ands r0, r1
	cmp r0, #0
	beq _08011B74
	ldr r2, _08011B70 @ =0x040000D4
	b _08011B76
	.align 2, 0
_08011B60: .4byte 0x0000FFFF
_08011B64: .4byte gUnknown_02016078
_08011B68: .4byte gScript
_08011B6C: .4byte 0x00004008
_08011B70: .4byte 0x040000D4
_08011B74:
	ldr r2, _08011B9C @ =0x040000B0
_08011B76:
	str r4, [r2]
	str r3, [r2, #4]
	lsls r0, r7, #1
	ldr r1, [sp]
	muls r0, r1, r0
	lsrs r0, r0, #2
	ldr r1, _08011BA0 @ =0x84A00000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011B9C: .4byte 0x040000B0
_08011BA0: .4byte 0x84A00000

	thumb_func_start sub_08011BA4
sub_08011BA4: @ 0x08011BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x24]
	mov sb, r0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08011C1C @ =gUnknown_02016078
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08001378
	adds r5, r0, #0
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r3, r0, #0
	ldr r0, _08011C20 @ =gScript
	ldrh r1, [r0, #2]
	ldr r0, _08011C24 @ =0x00004008
	ands r0, r1
	cmp r0, #0
	beq _08011C2C
	ldr r2, _08011C28 @ =0x040000D4
	b _08011C2E
	.align 2, 0
_08011C1C: .4byte gUnknown_02016078
_08011C20: .4byte gScript
_08011C24: .4byte 0x00004008
_08011C28: .4byte 0x040000D4
_08011C2C:
	ldr r2, _08011C54 @ =0x040000B0
_08011C2E:
	str r5, [r2]
	str r3, [r2, #4]
	lsls r0, r7, #1
	ldr r1, [sp]
	muls r0, r1, r0
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011C54: .4byte 0x040000B0

	thumb_func_start sub_08011C58
sub_08011C58: @ 0x08011C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x30]
	mov sb, r0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r3, sb
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	str r1, [sp, #8]
	ldr r7, _08011D20 @ =gUnknown_02016078
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08001378
	mov sl, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r6, r0, #0
	ldr r3, [sp, #8]
	lsrs r2, r3, #0x11
	lsls r0, r2, #6
	mov r1, sl
	adds r7, r1, r0
	adds r5, r6, r0
	ldr r0, _08011D24 @ =gScript
	ldrh r1, [r0, #2]
	ldr r0, _08011D28 @ =0x00004008
	ands r0, r1
	cmp r0, #0
	beq _08011D34
	mov sb, r2
	movs r4, #0
	cmp r4, sb
	bhs _08011D88
	ldr r1, _08011D2C @ =0x040000D4
	ldr r2, [sp]
	lsls r0, r2, #1
	subs r2, r0, #2
	ldr r0, [sp, #4]
	lsrs r3, r0, #0x11
	ldr r0, _08011D30 @ =0x84A00000
	orrs r3, r0
_08011CF0:
	mov r0, sl
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, r2
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r7, r2
	str r0, [r1]
	adds r0, r5, r2
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	add sl, r0
	adds r6, #0x40
	adds r7, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, sb
	blo _08011CF0
	b _08011D88
	.align 2, 0
_08011D20: .4byte gUnknown_02016078
_08011D24: .4byte gScript
_08011D28: .4byte 0x00004008
_08011D2C: .4byte 0x040000D4
_08011D30: .4byte 0x84A00000
_08011D34:
	mov sb, r2
	movs r4, #0
	cmp r4, sb
	bhs _08011D88
	ldr r1, _08011D98 @ =0x040000B0
	mov r8, r1
	ldr r2, [sp]
	lsls r0, r2, #1
	subs r1, r0, #2
	ldr r3, [sp, #4]
	lsrs r3, r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, _08011D9C @ =0x84A00000
	orrs r3, r0
	str r3, [sp, #0xc]
	ldr r2, _08011DA0 @ =0x040000D4
_08011D54:
	mov r0, sl
	adds r0, r0, r1
	mov r3, r8
	str r0, [r3]
	adds r0, r6, r1
	str r0, [r3, #4]
	ldr r0, [sp, #0xc]
	str r0, [r3, #8]
	ldr r3, [r3, #8]
	adds r0, r7, r1
	str r0, [r2]
	adds r0, r5, r1
	str r0, [r2, #4]
	ldr r0, [sp, #0xc]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x40
	add sl, r3
	adds r6, #0x40
	adds r7, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, sb
	blo _08011D54
_08011D88:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D98: .4byte 0x040000B0
_08011D9C: .4byte 0x84A00000
_08011DA0: .4byte 0x040000D4

	thumb_func_start sub_08011DA4
sub_08011DA4: @ 0x08011DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x28]
	mov sb, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	ldr r7, _08011E5C @ =gUnknown_02016078
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08001378
	mov sl, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r7, r0, #0
	ldr r1, [sp, #4]
	lsrs r2, r1, #0x11
	lsls r0, r2, #6
	mov r1, sl
	adds r6, r1, r0
	adds r4, r7, r0
	ldr r0, _08011E60 @ =gScript
	ldrh r1, [r0, #2]
	ldr r0, _08011E64 @ =0x00004008
	ands r0, r1
	cmp r0, #0
	beq _08011E6C
	mov r8, r2
	movs r3, #0
	cmp r3, r8
	bhs _08011EA8
	ldr r1, _08011E68 @ =0x040000D4
	ldr r0, [sp]
	lsrs r2, r0, #0x11
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
_08011E34:
	mov r0, sl
	str r0, [r1]
	str r7, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	add sl, r0
	adds r7, #0x40
	adds r6, #0x40
	adds r4, #0x40
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r8
	blo _08011E34
	b _08011EA8
	.align 2, 0
_08011E5C: .4byte gUnknown_02016078
_08011E60: .4byte gScript
_08011E64: .4byte 0x00004008
_08011E68: .4byte 0x040000D4
_08011E6C:
	mov r8, r2
	movs r3, #0
	cmp r3, r8
	bhs _08011EA8
	ldr r5, _08011EB8 @ =0x040000B0
	ldr r1, [sp]
	lsrs r2, r1, #0x11
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
	ldr r1, _08011EBC @ =0x040000D4
_08011E82:
	mov r0, sl
	str r0, [r5]
	str r7, [r5, #4]
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	add sl, r0
	adds r7, #0x40
	adds r6, #0x40
	adds r4, #0x40
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r8
	blo _08011E82
_08011EA8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011EB8: .4byte 0x040000B0
_08011EBC: .4byte 0x040000D4

	thumb_func_start sub_08011EC0
sub_08011EC0: @ 0x08011EC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08011F10 @ =0x09B18308
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800289C
	ldr r1, _08011F14 @ =0x06008000
	movs r2, #0xa0
	lsls r2, r2, #7
	bl sub_08001A14
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800289C
	movs r1, #0xc
	movs r2, #0x80
	bl sub_08016F4C
	movs r0, #0xc
	movs r1, #4
	bl sub_0803B688
	adds r0, r5, #0
	movs r1, #1
	bl sub_08011F18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011F10: .4byte 0x09B18308
_08011F14: .4byte 0x06008000

	thumb_func_start sub_08011F18
sub_08011F18: @ 0x08011F18
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	strh r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08011F74
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08011F58
	ldr r0, _08011F50 @ =gUnknown_02016078
	ldr r1, _08011F54 @ =0x06006000
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001B18
	b _08011F64
	.align 2, 0
_08011F50: .4byte gUnknown_02016078
_08011F54: .4byte 0x06006000
_08011F58:
	ldr r0, _08011F6C @ =gUnknown_02016028
	ldr r1, _08011F70 @ =0x00002C90
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_08011F64:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08011F6C: .4byte gUnknown_02016028
_08011F70: .4byte 0x00002C90

	thumb_func_start sub_08011F74
sub_08011F74: @ 0x08011F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08012018 @ =0x09B18308
	adds r1, r2, #0
	bl sub_0800289C
	mov sl, r0
	ldr r4, _0801201C @ =gUnknown_02016078
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	ldr r1, _08012020 @ =0x0000361C
	adds r0, r4, r1
	ldrh r0, [r0]
	mov sb, r0
	ldr r2, _08012024 @ =0x0000361E
	adds r4, r4, r2
	ldrh r4, [r4]
	str r4, [sp]
	movs r1, #0
_08011FB8:
	movs r4, #0
	ldr r2, [sp]
	adds r0, r2, r1
	movs r2, #0x40
	adds r2, r2, r5
	mov r8, r2
	adds r7, r1, #1
	lsls r6, r0, #0x10
_08011FC8:
	mov r0, sb
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	lsrs r2, r6, #0x10
	bl sub_0801B314
	lsls r2, r4, #1
	adds r2, r2, r5
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	adds r1, #0xc
	lsls r1, r1, #4
	ldrb r3, [r2, #1]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1e
	bls _08011FC8
	mov r5, r8
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x14
	bls _08011FB8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012018: .4byte 0x09B18308
_0801201C: .4byte gUnknown_02016078
_08012020: .4byte 0x0000361C
_08012024: .4byte 0x0000361E

	thumb_func_start sub_08012028
sub_08012028: @ 0x08012028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08017F90
	bl sub_08018B30
	ldr r5, _08012080 @ =gUnknown_0200B4B0
	movs r4, #0
	ldr r6, _08012084 @ =gUnknown_02016028
	ldr r0, _08012088 @ =0x00000F14
	adds r0, r0, r5
	mov sl, r0
	mov r8, r4
	movs r1, #0x1a
	adds r1, r1, r6
	mov sb, r1
	adds r7, r5, #0
	adds r7, #0x34
_08012052:
	ldrb r1, [r7, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801206A
	movs r0, #0x80
	lsls r0, r0, #2
	lsls r0, r4
	ldrh r1, [r6, #8]
	orrs r0, r1
	ldrh r1, [r6, #8]
	strh r0, [r6, #8]
_0801206A:
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0801208C
	cmp r4, #0
	bne _0801208C
	bl sub_08019D9C
	movs r4, #1
	b _080120B6
	.align 2, 0
_08012080: .4byte gUnknown_0200B4B0
_08012084: .4byte gUnknown_02016028
_08012088: .4byte 0x00000F14
_0801208C:
	mov r0, r8
	strb r0, [r7]
	adds r4, #1
	lsls r3, r4, #1
	adds r1, r6, #0
	adds r1, #0x12
	adds r1, r3, r1
	ldrh r0, [r5, #0xc]
	ldrh r2, [r5, #8]
	adds r0, r0, r2
	ldrh r2, [r1]
	strh r0, [r1]
	add r3, sb
	ldrh r0, [r5, #0xe]
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	mov r2, r8
	strh r2, [r5, #0xc]
	strh r2, [r5, #0xe]
_080120B6:
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	adds r7, #0x38
	adds r5, #0x38
	cmp r4, #2
	bls _08012052
	bl sub_08012EA8
	bl sub_08012F2C
	bl sub_080135AC
	bl sub_08013B6C
	ldr r4, _080120F0 @ =gUnknown_0200DF84
	adds r0, r4, #0
	bl sub_08027680
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_080279AC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080120F0: .4byte gUnknown_0200DF84

	thumb_func_start sub_080120F4
sub_080120F4: @ 0x080120F4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08012164 @ =gUnknown_0200B7D0
	movs r3, #0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r6, r2, r0
	ldr r7, _08012168 @ =gUnknown_02005080
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08012108:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x18
	bls _08012108
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801212C:
	ldrb r0, [r2, #0x14]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0x14]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x18
	cmp r3, #0x13
	bls _0801212C
	ldrb r0, [r7]
	cmp r0, #0
	beq _08012150
	cmp r0, #2
	bne _08012154
_08012150:
	bl sub_08012210
_08012154:
	movs r0, #1
	bl sub_08012238
	bl sub_0801230C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012164: .4byte gUnknown_0200B7D0
_08012168: .4byte gUnknown_02005080

	thumb_func_start sub_0801216C
sub_0801216C: @ 0x0801216C
	push {r4, r5, r6, lr}
	ldr r2, _080121CC @ =gUnknown_0200B7D0
	movs r3, #0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801217E:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x18
	bls _0801217E
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_080121A2:
	ldrb r0, [r2, #0x14]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0x14]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x18
	cmp r3, #0x13
	bls _080121A2
	bl sub_08012210
	movs r0, #1
	bl sub_08012238
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080121CC: .4byte gUnknown_0200B7D0

	thumb_func_start sub_080121D0
sub_080121D0: @ 0x080121D0
	push {r4, r5, lr}
	ldr r2, _0801220C @ =gUnknown_0200B7D0
	movs r4, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r3, #0
_080121DC:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #0x10
	cmp r4, #0x18
	bls _080121DC
	movs r0, #0
	bl sub_08012238
	bl sub_0801230C
	bl sub_080129BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801220C: .4byte gUnknown_0200B7D0

	thumb_func_start sub_08012210
sub_08012210: @ 0x08012210
	push {r4, lr}
	ldr r2, _08012234 @ =gUnknown_0200BB40
	movs r3, #0
	movs r4, #2
	rsbs r4, r4, #0
_0801221A:
	ldrb r0, [r2, #2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2, #2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	cmp r3, #0x27
	bls _0801221A
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012234: .4byte gUnknown_0200BB40

	thumb_func_start sub_08012238
sub_08012238: @ 0x08012238
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r4, _08012260 @ =gScript
	ldr r1, _08012264 @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	bl sub_0801B504
	adds r6, r0, #0
	ldr r0, _08012268 @ =0x00005BD0
	adds r4, r4, r0
	movs r7, #0
	ldrb r0, [r6]
	b _080122F8
	.align 2, 0
_08012260: .4byte gScript
_08012264: .4byte 0x000067AC
_08012268: .4byte 0x00005BD0
_0801226C:
	adds r5, r6, #0
	ldrb r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	str r5, [r4]
	adds r0, r5, #0
	adds r0, #0x30
	str r0, [r4, #8]
	adds r5, #0xc
	str r5, [r4, #4]
	ldrb r0, [r6, #8]
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [r4, #8]
	ldrb r0, [r6, #9]
	lsls r0, r0, #2
	adds r5, r5, r0
	mov r0, sp
	ldrh r0, [r0]
	adds r1, r7, #1
	mov r8, r1
	adds r4, #0x10
	mov sb, r4
	cmp r0, #0
	beq _080122E8
	mov r4, sp
	adds r4, #2
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strh r0, [r4]
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080122C2
	adds r0, r6, #4
	movs r1, #1
	bl sub_080263A4
	ldrh r1, [r4]
	orrs r1, r0
	strh r1, [r4]
_080122C2:
	ldrh r0, [r4]
	cmp r0, #0
	beq _080122E8
	movs r4, #0
	ldrb r0, [r6, #8]
	cmp r4, r0
	bhs _080122E8
_080122D0:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801263C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #8]
	cmp r4, r1
	blo _080122D0
_080122E8:
	adds r6, r5, #0
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r4, sb
	cmp r7, #0x18
	bhi _080122FE
	ldrb r0, [r5]
_080122F8:
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801226C
_080122FE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801230C
sub_0801230C: @ 0x0801230C
	push {r4, r5, lr}
	ldr r4, _08012314 @ =gUnknown_0200BB40
	movs r5, #0
	b _08012344
	.align 2, 0
_08012314: .4byte gUnknown_0200BB40
_08012318:
	ldr r1, [r4]
	lsls r0, r1, #8
	lsrs r0, r0, #0x1b
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r3, #0
	bl sub_08012830
	ldrb r0, [r4, #2]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, #0x27
	bhi _0801234E
_08012344:
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012318
_0801234E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08012354
sub_08012354: @ 0x08012354
	push {r4, r5, r6, lr}
	ldr r2, _080123AC @ =gUnknown_0200BBE0
	movs r3, #0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08012366:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x18
	bls _08012366
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801238A:
	ldrb r0, [r2, #0x14]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0x14]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x18
	cmp r3, #0x13
	bls _0801238A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080123AC: .4byte gUnknown_0200BBE0

	thumb_func_start sub_080123B0
sub_080123B0: @ 0x080123B0
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B520
	adds r2, r0, #0
	ldr r3, _080123C4 @ =gUnknown_0200BBE0
	movs r4, #0
	b _080123F8
	.align 2, 0
_080123C4: .4byte gUnknown_0200BBE0
_080123C8:
	ldrb r0, [r3, #0xc]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	str r2, [r3]
	adds r0, r2, #0
	adds r0, #0x30
	str r0, [r3, #8]
	adds r1, r2, #0
	adds r1, #0xc
	str r1, [r3, #4]
	ldrb r0, [r2, #8]
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [r3, #8]
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r2, r1, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x10
	cmp r4, #0x18
	bhi _08012400
_080123F8:
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080123C8
_08012400:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08012408
sub_08012408: @ 0x08012408
	push {r4, r5, r6, lr}
	ldr r2, _08012460 @ =gUnknown_0200BF50
	movs r3, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801241A:
	ldrb r0, [r2, #8]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #8]
	str r4, [r2]
	str r4, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0xc
	cmp r3, #0x18
	bls _0801241A
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801243C:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _0801243C
	movs r0, #1
	bl sub_080124F8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012460: .4byte gUnknown_0200BF50

	thumb_func_start sub_08012464
sub_08012464: @ 0x08012464
	push {r4, r5, r6, lr}
	ldr r2, _080124BC @ =gUnknown_0200BF50
	movs r3, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08012476:
	ldrb r0, [r2, #8]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #8]
	str r4, [r2]
	str r4, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0xc
	cmp r3, #0x18
	bls _08012476
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08012498:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012498
	movs r0, #1
	bl sub_080124F8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080124BC: .4byte gUnknown_0200BF50

	thumb_func_start sub_080124C0
sub_080124C0: @ 0x080124C0
	push {r4, r5, lr}
	ldr r2, _080124F4 @ =gUnknown_0200BF50
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_080124CC:
	ldrb r0, [r2, #8]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #8]
	str r4, [r2]
	str r4, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0xc
	cmp r3, #0x18
	bls _080124CC
	movs r0, #0
	bl sub_080124F8
	bl sub_08012E50
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080124F4: .4byte gUnknown_0200BF50

	thumb_func_start sub_080124F8
sub_080124F8: @ 0x080124F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r4, _08012518 @ =gScript
	ldr r1, _0801251C @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	bl sub_0801B53C
	adds r2, r0, #0
	ldr r0, _08012520 @ =0x00006350
	adds r6, r4, r0
	movs r7, #0
	ldrb r0, [r2, #3]
	b _08012580
	.align 2, 0
_08012518: .4byte gScript
_0801251C: .4byte 0x000067AC
_08012520: .4byte 0x00006350
_08012524:
	adds r5, r2, #0
	ldrb r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #8]
	str r5, [r6]
	adds r5, #8
	str r5, [r6, #4]
	ldrb r0, [r2, #4]
	lsls r0, r0, #2
	adds r5, r5, r0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012570
	mov r4, sp
	adds r4, #2
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strh r0, [r4]
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08012564
	adds r0, r2, #4
	movs r1, #0
	bl sub_080263A4
	ldrh r1, [r4]
	orrs r1, r0
	strh r1, [r4]
_08012564:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08012570
	adds r0, r7, #0
	bl sub_08012C48
_08012570:
	adds r2, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, #0xc
	cmp r7, #0x18
	bhi _08012586
	ldrb r0, [r5, #3]
_08012580:
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08012524
_08012586:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012590
sub_08012590: @ 0x08012590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r1, [r6, #1]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _080125AA
	lsls r0, r1, #0x1b
	lsrs r2, r0, #0x1e
	cmp r2, #0
	bne _080125AE
_080125AA:
	movs r0, #0
	b _0801262A
_080125AE:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	cmp r5, r2
	bge _08012618
	movs r0, #0xf
	mov r8, r0
	mov r7, sp
_080125C0:
	adds r0, r6, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r4, #0xf
	ands r4, r0
	lsrs r2, r0, #4
	mov r0, r8
	ands r2, r0
	lsls r1, r4, #4
	ldr r0, _08012638 @ =gUnknown_0200B7D0
	adds r3, r1, r0
	ldrb r1, [r3, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012608
	ldr r0, [r3]
	ldrb r0, [r0, #8]
	cmp r0, r2
	bls _08012608
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801263C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012608
	movs r0, #8
	bl sub_080260C8
	ldrh r0, [r7]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7]
_08012608:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r5, r0
	blt _080125C0
_08012618:
	ldr r0, [r6]
	lsls r0, r0, #9
	lsrs r0, r0, #0x16
	cmp r0, #0
	beq _08012626
	bl sub_0800399C
_08012626:
	mov r0, sp
	ldrh r0, [r0]
_0801262A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012638: .4byte gUnknown_0200B7D0

	thumb_func_start sub_0801263C
sub_0801263C: @ 0x0801263C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sp
	strh r2, [r0]
	mov r7, sp
	adds r7, #2
	strh r3, [r7]
	bl sub_08012790
	adds r5, r0, #0
	cmp r5, #0
	beq _0801268A
	lsls r1, r4, #4
	ldr r0, _08012690 @ =gUnknown_0200B7D0
	adds r6, r1, r0
	ldr r4, [r6]
	ldrb r1, [r6, #0xc]
	movs r0, #1
	mov ip, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801268A
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801268A
	ldrb r1, [r4, #8]
	cmp r8, r1
	blo _08012694
_0801268A:
	movs r0, #0
	b _08012778
	.align 2, 0
_08012690: .4byte gUnknown_0200B7D0
_08012694:
	ldrb r1, [r5, #0x14]
	mov r2, ip
	orrs r1, r2
	strb r1, [r5, #0x14]
	ldrh r0, [r7]
	ands r0, r2
	lsls r0, r0, #1
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	mov r0, sb
	lsls r1, r0, #3
	movs r0, #7
	ands r2, r0
	orrs r2, r1
	strb r2, [r5, #0x14]
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	ldrb r3, [r5, #0x15]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #0x15]
	mov r0, sp
	ldrh r0, [r0]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x14]
	movs r0, #0
	strh r0, [r5, #0x10]
	ldr r0, [r6, #8]
	ldrb r1, [r4, #9]
	bl sub_08013778
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08012710
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0xf
	ldr r0, [r5, #0x14]
	ldr r2, _0801270C @ =0xFFFE0FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #0x14]
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	b _08012728
	.align 2, 0
_0801270C: .4byte 0xFFFE0FFF
_08012710:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08012788 @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #0x14]
	ldrh r1, [r4]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1d
_08012728:
	lsls r1, r1, #1
	ldrb r2, [r5, #0x16]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x16]
	str r4, [r5]
	mov r2, r8
	lsls r1, r2, #2
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x14
	ldr r3, _0801278C @ =gScript
	ldrb r1, [r4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r3, #0x5c
	adds r1, r1, r3
	ldr r4, [r1]
	ldr r3, [r5, #4]
	ldrb r1, [r3, #1]
	lsls r1, r1, #1
	ldrb r3, [r3, #2]
	lsls r2, r2, #1
	muls r2, r3, r2
	adds r1, r1, r2
	adds r4, r4, r1
	str r4, [r5, #0xc]
_08012778:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012788: .4byte 0xFFFE0FFF
_0801278C: .4byte gScript

	thumb_func_start sub_08012790
sub_08012790: @ 0x08012790
	push {lr}
	ldr r1, _080127A4 @ =gUnknown_0200B960
	movs r2, #0
_08012796:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080127A8
	adds r0, r1, #0
	b _080127B6
	.align 2, 0
_080127A4: .4byte gUnknown_0200B960
_080127A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #0x18
	cmp r2, #0x13
	bls _08012796
	movs r0, #0
_080127B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080127BC
sub_080127BC: @ 0x080127BC
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080127E8
	ldr r0, _080127E0 @ =gScript
	ldr r1, _080127E4 @ =0x000067C4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08012826
	.align 2, 0
_080127E0: .4byte gScript
_080127E4: .4byte 0x000067C4
_080127E8:
	ldr r1, _0801282C @ =gUnknown_0200B960
	movs r4, #0
	adds r6, r0, #0
	mov ip, r2
	movs r5, #2
	rsbs r5, r5, #0
_080127F4:
	ldrb r3, [r1, #0x14]
	lsls r0, r3, #0x1f
	cmp r0, #0
	beq _0801281A
	lsrs r0, r3, #3
	cmp r0, r6
	bne _0801281A
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r2, ip
	beq _08012814
	ldrb r0, [r1, #0x15]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r2
	bne _0801281A
_08012814:
	adds r0, r5, #0
	ands r0, r3
	strb r0, [r1, #0x14]
_0801281A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #0x18
	cmp r4, #0x13
	bls _080127F4
_08012826:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801282C: .4byte gUnknown_0200B960

	thumb_func_start sub_08012830
sub_08012830: @ 0x08012830
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov sl, r7
	mov r0, sp
	strh r3, [r0]
	lsls r1, r5, #4
	ldr r0, _080128CC @ =gUnknown_0200B7D0
	adds r1, r1, r0
	mov r8, r1
	ldr r6, [r1]
	ldrb r1, [r1, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012866
	b _080129A2
_08012866:
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08012870
	b _080129A2
_08012870:
	ldrb r0, [r6, #8]
	cmp sb, r0
	blo _08012878
	b _080129A2
_08012878:
	add r4, sp, #4
	ldrb r1, [r4, #0x14]
	movs r0, #1
	orrs r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	lsls r2, r5, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	movs r0, #0xf
	mov r2, sb
	ands r2, r0
	ldrb r3, [r4, #0x15]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x15]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4, #0x14]
	mov r1, r8
	ldr r0, [r1, #8]
	ldrb r1, [r6, #9]
	bl sub_08013778
	adds r2, r0, #0
	strh r2, [r4, #0x12]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r4, #0
	cmp r0, r1
	bne _080128D0
	subs r0, r2, #1
	strh r0, [r7, #0x10]
	b _080128D4
	.align 2, 0
_080128CC: .4byte gUnknown_0200B7D0
_080128D0:
	mov r2, sl
	strh r2, [r7, #0x10]
_080128D4:
	ldrb r0, [r6, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080128F8
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0xf
	ldr r0, [r7, #0x14]
	ldr r2, _080128F4 @ =0xFFFE0FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r7, #0x14]
	ldrh r1, [r6, #0xa]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	b _08012910
	.align 2, 0
_080128F4: .4byte 0xFFFE0FFF
_080128F8:
	ldrb r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #0xc
	ldr r1, [r7, #0x14]
	ldr r2, _080129B4 @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #0x14]
	ldrh r1, [r6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1d
_08012910:
	lsls r1, r1, #1
	ldrb r2, [r7, #0x16]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x16]
	adds r5, r7, #0
	str r6, [sp, #4]
	mov r0, sb
	lsls r1, r0, #2
	mov r2, r8
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r4, [r2, #8]
	str r4, [r5, #8]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r4, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	ldr r2, _080129B8 @ =gScript
	ldrb r1, [r6]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r2, #0x5c
	adds r1, r1, r2
	ldr r3, [r1]
	ldr r2, [r5, #4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #1
	ldrb r2, [r2, #2]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, r3, r1
	str r3, [r5, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08012FBC
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801298E
	adds r0, r5, #0
	bl sub_080137A8
_0801298E:
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne _080129A2
	ldr r0, [r6]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x16
	cmp r0, #0
	beq _080129A2
	bl sub_0800399C
_080129A2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080129B4: .4byte 0xFFFE0FFF
_080129B8: .4byte gScript

	thumb_func_start sub_080129BC
sub_080129BC: @ 0x080129BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _08012A20 @ =gUnknown_0200B960
	movs r0, #0
	mov r8, r0
	movs r7, #0x1f
	ldr r3, _08012A24 @ =0xFFFFA2FC
	adds r3, r3, r5
	mov sb, r3
_080129D2:
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08012AAE
	lsrs r0, r1, #3
	lsls r0, r0, #4
	ldr r1, _08012A28 @ =gUnknown_0200B7D0
	adds r6, r0, r1
	ldr r4, [r6]
	ldr r0, [r6, #8]
	ldrb r1, [r4, #9]
	bl sub_08013778
	movs r2, #0
	strh r0, [r5, #0x12]
	ldrh r1, [r5, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _080129FC
	strh r2, [r5, #0x10]
_080129FC:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08012A30
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	ands r0, r7
	lsls r0, r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08012A2C @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	b _08012A4A
	.align 2, 0
_08012A20: .4byte gUnknown_0200B960
_08012A24: .4byte 0xFFFFA2FC
_08012A28: .4byte gUnknown_0200B7D0
_08012A2C: .4byte 0xFFFE0FFF
_08012A30:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	ands r0, r7
	lsls r0, r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08012ACC @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1d
_08012A4A:
	ands r0, r7
	lsls r0, r0, #1
	ldrb r1, [r5, #0x16]
	movs r3, #0x3f
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x16]
	str r4, [r5]
	ldrb r1, [r5, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	ldrb r1, [r4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	add r1, sb
	ldr r3, [r1]
	ldr r2, [r5, #4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #1
	ldrb r2, [r2, #2]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, r3, r1
	str r3, [r5, #0xc]
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #3
	ldrb r1, [r5, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_08012830
_08012AAE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #0x18
	cmp r0, #0x13
	bls _080129D2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012ACC: .4byte 0xFFFE0FFF

	thumb_func_start sub_08012AD0
sub_08012AD0: @ 0x08012AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov sb, r5
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08012BD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	bne _08012B1E
	bl sub_08012C1C
	adds r4, r0, #0
	cmp r4, #0
	beq _08012B1E
	lsls r1, r5, #4
	ldr r0, _08012B24 @ =gUnknown_0200BBE0
	adds r6, r1, r0
	ldr r5, [r6]
	ldrb r1, [r6, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012B1E
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08012B1E
	ldrb r0, [r5, #8]
	cmp r7, r0
	blo _08012B28
_08012B1E:
	movs r0, #0
	b _08012BC6
	.align 2, 0
_08012B24: .4byte gUnknown_0200BBE0
_08012B28:
	ldrb r1, [r4, #0x14]
	movs r0, #1
	orrs r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	lsls r2, r0, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	movs r0, #0xf
	adds r2, r7, #0
	ands r2, r0
	ldrb r3, [r4, #0x15]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x15]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4, #0x14]
	mov r0, r8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #8]
	ldrb r1, [r5, #9]
	bl sub_08013778
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08012B8C
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0xf
	ldr r0, [r4, #0x14]
	ldr r2, _08012B88 @ =0xFFFE0FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0x14]
	ldrh r1, [r5, #0xa]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	b _08012BA4
	.align 2, 0
_08012B88: .4byte 0xFFFE0FFF
_08012B8C:
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #0xc
	ldr r1, [r4, #0x14]
	ldr r2, _08012BD4 @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0x14]
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1d
_08012BA4:
	lsls r1, r1, #1
	ldrb r2, [r4, #0x16]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x16]
	str r5, [r4]
	lsls r1, r7, #2
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r6, #8]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #1
_08012BC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012BD4: .4byte 0xFFFE0FFF

	thumb_func_start sub_08012BD8
sub_08012BD8: @ 0x08012BD8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08012C04 @ =gUnknown_0200BD70
	movs r1, #0
_08012BE6:
	ldrb r2, [r3, #0x14]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _08012C08
	lsrs r0, r2, #3
	cmp r0, r5
	bne _08012C08
	ldrb r0, [r3, #0x15]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r4
	bne _08012C08
	movs r0, #1
	b _08012C16
	.align 2, 0
_08012C04: .4byte gUnknown_0200BD70
_08012C08:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #0x18
	cmp r1, #0x13
	bls _08012BE6
	movs r0, #0
_08012C16:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08012C1C
sub_08012C1C: @ 0x08012C1C
	push {lr}
	ldr r1, _08012C30 @ =gUnknown_0200BD70
	movs r2, #0
_08012C22:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08012C34
	adds r0, r1, #0
	b _08012C42
	.align 2, 0
_08012C30: .4byte gUnknown_0200BD70
_08012C34:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #0x18
	cmp r2, #0x13
	bls _08012C22
	movs r0, #0
_08012C42:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08012C48
sub_08012C48: @ 0x08012C48
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08012CBC
	adds r4, r0, #0
	cmp r4, #0
	beq _08012C76
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08012C7C @ =gUnknown_0200BF50
	adds r6, r0, r1
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012C76
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08012C80
_08012C76:
	movs r0, #0
	b _08012CB4
	.align 2, 0
_08012C7C: .4byte gUnknown_0200BF50
_08012C80:
	ldrb r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x1f
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #1
	movs r2, #0x3f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, [r6, #4]
	ldrb r1, [r7, #4]
	bl sub_08013778
	adds r1, r0, #0
	strh r1, [r4, #0xa]
	str r7, [r4]
	ldr r1, [r6, #4]
	str r1, [r4, #4]
_08012CB4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08012CBC
sub_08012CBC: @ 0x08012CBC
	push {r4, lr}
	ldr r2, _08012CD4 @ =gUnknown_0200C07C
	movs r3, #0
	movs r4, #1
_08012CC4:
	ldrb r1, [r2, #0xc]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08012CD8
	adds r0, r2, #0
	b _08012CE6
	.align 2, 0
_08012CD4: .4byte gUnknown_0200C07C
_08012CD8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012CC4
	movs r0, #0
_08012CE6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08012CEC
sub_08012CEC: @ 0x08012CEC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08012D14
	ldr r0, _08012D0C @ =gScript
	ldr r1, _08012D10 @ =0x000067C4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _08012D44
	.align 2, 0
_08012D0C: .4byte gScript
_08012D10: .4byte 0x000067C4
_08012D14:
	ldr r2, _08012D4C @ =gUnknown_0200C07C
	movs r3, #0
	movs r6, #1
	adds r4, r1, #0
	movs r5, #2
	rsbs r5, r5, #0
_08012D20:
	ldrb r1, [r2, #0xc]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D38
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, r4
	bne _08012D38
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0xc]
_08012D38:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012D20
_08012D44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012D4C: .4byte gUnknown_0200C07C

	thumb_func_start sub_08012D50
sub_08012D50: @ 0x08012D50
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08012D78
	ldr r0, _08012D70 @ =gScript
	ldr r1, _08012D74 @ =0x000067C4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _08012DA6
	.align 2, 0
_08012D70: .4byte gScript
_08012D74: .4byte 0x000067C4
_08012D78:
	ldr r2, _08012DAC @ =gUnknown_0200C07C
	movs r3, #0
	movs r6, #1
	adds r4, r1, #0
	movs r5, #0x40
_08012D82:
	ldrb r1, [r2, #0xc]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D9A
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, r4
	bne _08012D9A
	adds r0, r1, #0
	orrs r0, r5
	strb r0, [r2, #0xc]
_08012D9A:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012D82
_08012DA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012DAC: .4byte gUnknown_0200C07C

	thumb_func_start sub_08012DB0
sub_08012DB0: @ 0x08012DB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	add r0, sp, #4
	strh r2, [r0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08012E4C @ =gUnknown_0200BF50
	adds r5, r0, r1
	ldr r6, [r5]
	ldrb r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E42
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08012E42
	add r4, sp, #8
	ldrb r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r2, #0x1f
	adds r1, r3, #0
	ands r1, r2
	lsls r1, r1, #1
	movs r2, #0x3f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	strh r7, [r4, #8]
	ldr r0, [r5, #4]
	ldrb r1, [r6, #4]
	bl sub_08013778
	strh r0, [r4, #0xa]
	str r6, [sp, #8]
	ldr r5, [r5, #4]
	str r5, [r4, #4]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08013748
	adds r5, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	bl sub_080136BC
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x1c
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801365C
_08012E42:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012E4C: .4byte gUnknown_0200BF50

	thumb_func_start sub_08012E50
sub_08012E50: @ 0x08012E50
	push {r4, r5, r6, r7, lr}
	ldr r5, _08012EA0 @ =gUnknown_0200C07C
	movs r7, #0
_08012E56:
	ldrb r1, [r5, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E8E
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1b
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08012EA4 @ =gUnknown_0200BF50
	adds r4, r1, r0
	ldr r6, [r4]
	ldr r0, [r4, #4]
	ldrb r1, [r6, #4]
	bl sub_08013778
	movs r2, #0
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08012E88
	strh r2, [r5, #8]
_08012E88:
	str r6, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
_08012E8E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x10
	cmp r7, #0x13
	bls _08012E56
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012EA0: .4byte gUnknown_0200C07C
_08012EA4: .4byte gUnknown_0200BF50

	thumb_func_start sub_08012EA8
sub_08012EA8: @ 0x08012EA8
	push {r4, r5, r6, lr}
	ldr r1, _08012F20 @ =gScript
	ldr r2, _08012F24 @ =0x000067C4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08012F1A
	ldr r0, _08012F28 @ =0x00005D60
	adds r5, r1, r0
	movs r6, #0
_08012EBE:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08012F0E
	ldr r4, [r5, #8]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08012FBC
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_080133A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012F0E
	ldrb r0, [r5, #0x14]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #0x14]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08012F0E
	movs r0, #0
	bl sub_0802610C
_08012F0E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0x18
	cmp r6, #0x13
	bls _08012EBE
_08012F1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012F20: .4byte gScript
_08012F24: .4byte 0x000067C4
_08012F28: .4byte 0x00005D60

	thumb_func_start sub_08012F2C
sub_08012F2C: @ 0x08012F2C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08012FB0 @ =gScript
	ldr r2, _08012FB4 @ =0x000067C4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08012FA8
	adds r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	movs r2, #0
	cmp r0, #0
	beq _08012F4E
	movs r2, #0xf0
	lsls r2, r2, #2
_08012F4E:
	adds r7, r2, #0
	ldr r0, _08012FB8 @ =0x00006170
	adds r5, r1, r0
	movs r6, #0
_08012F56:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08012F9C
	ldr r4, [r5, #8]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r7, #0
	bl sub_080131B0
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_080133A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012F9C
	ldrb r0, [r5, #0x14]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #0x14]
_08012F9C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0x18
	cmp r6, #0x13
	bls _08012F56
_08012FA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012FB0: .4byte gScript
_08012FB4: .4byte 0x000067C4
_08012FB8: .4byte 0x00006170

	thumb_func_start sub_08012FBC
sub_08012FBC: @ 0x08012FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	str r1, [sp, #8]
	mov r3, sp
	movs r4, #0
	ldr r0, _08013024 @ =gUnknown_02016028
	ldr r2, [r6]
	ldrb r1, [r2]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	adds r1, #1
	lsls r1, r1, #1
	ldr r5, _08013028 @ =0x00002C90
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08012FEC
	movs r4, #1
_08012FEC:
	strh r4, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_0801A594
	ldr r0, [r6]
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	ldrb r0, [r0, #2]
	mov sb, r0
	ldr r1, [sp, #8]
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	mov sl, r0
	movs r1, #0
	b _08013186
	.align 2, 0
_08013024: .4byte gUnknown_02016028
_08013028: .4byte 0x00002C90
_0801302C:
	ldr r0, [r6, #4]
	ldrb r7, [r0, #1]
	ldr r5, [r6, #0xc]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	muls r0, r1, r0
	adds r5, r5, r0
	mov r3, sp
	movs r2, #4
	ldrsh r0, [r3, r2]
	subs r0, r7, r0
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #4
	movs r3, #2
	ldrsh r0, [r0, r3]
	mov r2, sb
	subs r0, r2, r0
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0xc]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	adds r2, #1
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r3, r0
	blt _08013072
	b _08013178
_08013072:
	ldr r0, [sp, #8]
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	ands r2, r0
	ldrh r0, [r5]
	ldr r3, _080131A4 @ =0xFFFFFC3F
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	movs r0, #0x3f
	mov r2, sl
	ands r2, r0
	ldrb r0, [r5]
	movs r3, #0x40
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #6
	ldrb r2, [r5, #1]
	subs r3, #1
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #1]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r3, #4
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, r7
	bgt _08013138
	adds r0, #0xf
	cmp r0, r7
	blt _08013138
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, sb
	bgt _08013138
	adds r0, #0xa
	cmp r0, sb
	blt _08013138
	ldr r0, [r6]
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	adds r1, #1
	ldr r0, _080131A8 @ =gUnknown_02016078
	mov r2, r8
	ldr r3, [sp, #0x10]
	bl sub_08001378
	ldr r1, [r6]
	ldrb r1, [r1]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xb
	ldr r2, _080131AC @ =0x06006800
	adds r4, r1, r2
	ldr r3, [sp, #0x10]
	lsls r1, r3, #5
	add r1, r8
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r5, #0
	bl sub_080117C4
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013138
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080117C4
_08013138:
	ldr r0, [r6]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801314C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801314C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #2
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bge _08013178
	b _08013072
_08013178:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
_08013186:
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r1, r0
	bge _08013194
	b _0801302C
_08013194:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080131A4: .4byte 0xFFFFFC3F
_080131A8: .4byte gUnknown_02016078
_080131AC: .4byte 0x06006800

	thumb_func_start sub_080131B0
sub_080131B0: @ 0x080131B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	mov r3, sp
	movs r4, #0
	ldr r1, _08013380 @ =gUnknown_02016028
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	adds r0, #1
	lsls r0, r0, #1
	ldr r5, _08013384 @ =0x00002C90
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080131E6
	movs r4, #1
_080131E6:
	strh r4, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	add r5, sp, #4
	adds r1, r5, #0
	bl sub_0801A594
	ldr r3, [r6]
	movs r0, #0xf0
	lsls r0, r0, #2
	ands r0, r3
	ldr r1, _08013388 @ =0xFFFFFC3F
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r0
	lsls r0, r3, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	mov r0, sb
	ldr r4, [r0]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xe
	ldr r1, _0801338C @ =0xFFFFBFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xf
	ldr r2, _08013390 @ =0xFFFF7FFF
	ands r1, r2
	orrs r1, r0
	movs r0, #0xf0
	lsls r0, r0, #6
	ands r3, r0
	ldr r0, _08013394 @ =0xFFFFC3FF
	ands r1, r0
	orrs r1, r3
	str r1, [sp, #8]
	mov r1, sb
	ldr r0, [r1, #4]
	ldrb r0, [r0, #2]
	mov sl, r0
	movs r2, #0
	str r2, [sp, #0x10]
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r2, r0
	blt _0801325E
	b _0801336E
_0801325E:
	mov r4, sb
	ldr r0, [r4, #4]
	ldrb r6, [r0, #1]
	mov r0, sp
	movs r1, #4
	ldrsh r5, [r0, r1]
	subs r5, r6, r5
	lsls r5, r5, #0x11
	lsrs r5, r5, #0x10
	add r0, sp, #4
	movs r2, #2
	ldrsh r4, [r0, r2]
	mov r0, sl
	subs r4, r0, r4
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x10
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	adds r1, #1
	ldr r0, _08013398 @ =gUnknown_02016078
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08001378
	mov r8, r0
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xb
	ldr r1, _0801339C @ =0x06006800
	adds r7, r0, r1
	lsls r4, r4, #5
	adds r5, r5, r4
	lsls r5, r5, #1
	adds r7, r7, r5
	movs r5, #0
	ldr r0, [r2, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x18]
	ldr r4, [sp, #0x10]
	adds r4, #1
	str r4, [sp, #0x14]
	cmp r5, r0
	bge _0801334C
_080132C8:
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, r6
	bgt _08013304
	adds r0, #0xf
	cmp r0, r6
	blt _08013304
	movs r4, #6
	ldrsh r0, [r1, r4]
	cmp r0, sl
	bgt _08013304
	adds r0, #0xa
	cmp r0, sl
	blt _08013304
	add r4, sp, #8
	mov r0, r8
	adds r1, r4, #0
	ldr r2, [sp, #0xc]
	bl sub_080118D0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013304
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r2, [sp, #0xc]
	bl sub_080118D0
_08013304:
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801332C
	ldr r1, [sp, #8]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, #1
	movs r0, #0x3f
	ands r1, r0
	add r3, sp, #8
	ldrb r0, [r3]
	movs r4, #0x40
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0801332C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #4
	add r8, r0
	adds r7, #4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	ldr r0, [r1, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r5, r0
	blt _080132C8
_0801334C:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, [sp, #0x14]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r5, sb
	ldrb r0, [r5, #0x16]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bge _0801336E
	b _0801325E
_0801336E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013380: .4byte gUnknown_02016028
_08013384: .4byte 0x00002C90
_08013388: .4byte 0xFFFFFC3F
_0801338C: .4byte 0xFFFFBFFF
_08013390: .4byte 0xFFFF7FFF
_08013394: .4byte 0xFFFFC3FF
_08013398: .4byte gUnknown_02016078
_0801339C: .4byte 0x06006800

	thumb_func_start sub_080133A0
sub_080133A0: @ 0x080133A0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080133B6
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080133C6
_080133B6:
	ldrh r0, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	cmp r0, r2
	bls _080133C2
	movs r0, #0
	strh r0, [r1, #0x10]
_080133C2:
	movs r0, #0
	b _080133D4
_080133C6:
	movs r2, #0
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	cmp r0, r1
	blo _080133D2
	movs r2, #1
_080133D2:
	adds r0, r2, #0
_080133D4:
	pop {r1}
	bx r1

	thumb_func_start sub_080133D8
sub_080133D8: @ 0x080133D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r4, [sp, #0x50]
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x10]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r2, sp
	movs r3, #0
	ldr r1, _0801350C @ =gUnknown_02016028
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #1
	ldr r4, _08013510 @ =0x00002C90
	adds r1, r1, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013436
	movs r3, #1
_08013436:
	strh r3, [r2]
	add r4, sp, #4
	mov r0, sl
	adds r1, r4, #0
	bl sub_0801A594
	str r7, [sp, #0x18]
	movs r5, #0
	ldr r0, [sp, #0xc]
	cmp r5, r0
	blo _0801344E
	b _08013564
_0801344E:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	bl sub_0801A904
	adds r4, r0, #0
	ldr r7, [sp, #0x18]
	movs r0, #0
	mov r8, r0
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x24]
	adds r5, #1
	str r5, [sp, #0x28]
	ldr r2, [sp, #8]
	cmp r8, r2
	bhs _0801354E
	movs r1, #0xf
	ldr r0, [sp, #0x10]
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ands r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x20]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	str r0, [sp, #0x2c]
_08013490:
	ldrh r0, [r4]
	ldr r3, _08013514 @ =0xFFFFFC3F
	adds r1, r3, #0
	ands r0, r1
	ldr r5, [sp, #0x1c]
	orrs r0, r5
	strh r0, [r4]
	movs r0, #0x3f
	adds r2, r6, #0
	ands r2, r0
	ldrb r0, [r4]
	movs r3, #0x40
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r4, #1]
	movs r5, #0x3d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	ldr r1, [sp, #0x20]
	orrs r0, r1
	strb r0, [r4, #1]
	mov r3, sp
	movs r5, #4
	ldrsh r2, [r3, r5]
	cmp r2, r7
	bgt _08013530
	adds r0, r2, #0
	adds r0, #0xf
	cmp r0, r7
	blt _08013530
	movs r0, #6
	ldrsh r1, [r3, r0]
	cmp r1, sb
	bgt _08013530
	adds r0, r1, #0
	adds r0, #0xf
	cmp r0, sb
	blt _08013530
	mov r3, sb
	subs r0, r3, r1
	lsls r0, r0, #0x11
	lsrs r3, r0, #0x10
	subs r0, r7, r2
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801351C
	mov r5, sl
	lsls r0, r5, #0xb
	ldr r5, _08013518 @ =0x06006800
	adds r1, r0, r5
	lsls r0, r3, #5
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	b _08013528
	.align 2, 0
_0801350C: .4byte gUnknown_02016028
_08013510: .4byte 0x00002C90
_08013514: .4byte 0xFFFFFC3F
_08013518: .4byte 0x06006800
_0801351C:
	ldr r0, _08013574 @ =gUnknown_02016078
	ldr r5, [sp, #0x2c]
	lsrs r1, r5, #0x10
	bl sub_08001378
	adds r1, r0, #0
_08013528:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080117C4
_08013530:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #8]
	cmp r8, r0
	blo _08013490
_0801354E:
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0xc]
	cmp r5, r3
	bhs _08013564
	b _0801344E
_08013564:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013574: .4byte gUnknown_02016078

	thumb_func_start sub_08013578
sub_08013578: @ 0x08013578
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0801AD4C
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801AD4C
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #8
	bl sub_08001B18
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080135AC
sub_080135AC: @ 0x080135AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _08013624 @ =gScript
	ldr r2, _08013628 @ =0x000067C4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08013654
	ldr r0, _0801362C @ =0x0000647C
	adds r5, r1, r0
	movs r6, #0
	movs r2, #2
	rsbs r2, r2, #0
	adds r7, r2, #0
_080135CA:
	ldrb r1, [r5, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013648
	ldr r4, [r5, #4]
	ldrh r0, [r5, #8]
	ldrh r1, [r5, #0xa]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	bl sub_080136BC
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x1c
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801365C
	ldrb r1, [r5, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013630
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08013630
	adds r0, r1, #0
	b _08013644
	.align 2, 0
_08013624: .4byte gScript
_08013628: .4byte 0x000067C4
_0801362C: .4byte 0x0000647C
_08013630:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0801368C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013648
	ldrb r0, [r5, #0xc]
_08013644:
	ands r0, r7
	strb r0, [r5, #0xc]
_08013648:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0x10
	cmp r6, #0x13
	bls _080135CA
_08013654:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801365C
sub_0801365C: @ 0x0801365C
	push {r4, lr}
	adds r0, r2, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0x10
	lsls r4, r4, #0x10
	ldr r2, [r1]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x15
	adds r0, r0, r1
	lsrs r3, r3, #5
	lsrs r4, r4, #0xb
	adds r3, r3, r4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x1a
	lsls r2, r2, #5
	adds r1, r3, #0
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801368C
sub_0801368C: @ 0x0801368C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080136AA
	ldrh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	cmp r0, r2
	bls _080136A6
	movs r0, #0
	strh r0, [r1, #8]
_080136A6:
	movs r0, #0
	b _080136B8
_080136AA:
	movs r2, #0
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0xa]
	cmp r0, r1
	blo _080136B6
	movs r2, #1
_080136B6:
	adds r0, r2, #0
_080136B8:
	pop {r1}
	bx r1

	thumb_func_start sub_080136BC
sub_080136BC: @ 0x080136BC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080136D8 @ =gScript
	ldr r1, _080136DC @ =0x000067C5
	adds r6, r0, r1
	ldrb r2, [r6]
	lsrs r4, r2, #4
	mov ip, r0
	cmp r4, r3
	bne _080136E4
	ldr r0, _080136E0 @ =gUnknown_020296B8
	b _0801373E
	.align 2, 0
_080136D8: .4byte gScript
_080136DC: .4byte 0x000067C5
_080136E0: .4byte gUnknown_020296B8
_080136E4:
	ldr r7, _080136F8 @ =0x000067C6
	add r7, ip
	ldrb r5, [r7]
	lsls r0, r5, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r3
	bne _08013700
	ldr r0, _080136FC @ =gUnknown_02029ED8
	b _0801373E
	.align 2, 0
_080136F8: .4byte 0x000067C6
_080136FC: .4byte gUnknown_02029ED8
_08013700:
	cmp r4, #0xc
	beq _08013720
	cmp r0, #0xc
	bne _08013720
	movs r0, #0xf
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r5
	orrs r0, r1
	strb r0, [r7]
	ldr r4, _0801371C @ =gUnknown_02029ED8
	b _0801372C
	.align 2, 0
_0801371C: .4byte gUnknown_02029ED8
_08013720:
	lsls r1, r3, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldr r4, _08013744 @ =gUnknown_020296B8
_0801372C:
	lsls r0, r3, #2
	mov r1, ip
	adds r1, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08090F8C
	adds r0, r4, #0
_0801373E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013744: .4byte gUnknown_020296B8

	thumb_func_start sub_08013748
sub_08013748: @ 0x08013748
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r3]
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	bhs _08013770
_0801375C:
	adds r3, #4
	ldr r0, [r3]
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _0801375C
_08013770:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013778
sub_08013778: @ 0x08013778
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	movs r2, #0
	cmp r3, r1
	bhs _080137A0
_08013788:
	ldm r4!, {r0}
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _08013788
_080137A0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080137A8
sub_080137A8: @ 0x080137A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _080137E4 @ =gUnknown_0200BB40
	movs r5, #0
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	adds r6, r3, #0
	cmp r0, #0
	beq _080137FE
_080137BC:
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #3
	ldr r2, [r3]
	lsls r0, r2, #8
	lsrs r0, r0, #0x1b
	cmp r1, r0
	bne _080137E8
	ldrb r1, [r4, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r2, #4
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _080137E8
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_08013880
	b _0801387A
	.align 2, 0
_080137E4: .4byte gUnknown_0200BB40
_080137E8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #4
	cmp r5, #0x27
	bhi _080137FE
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080137BC
_080137FE:
	adds r3, r6, #0
	movs r5, #0
	movs r6, #1
	movs r2, #3
	rsbs r2, r2, #0
	movs r7, #5
	rsbs r7, r7, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	mov ip, r0
_08013812:
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013868
	orrs r1, r6
	strb r1, [r3, #2]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #2]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #2]
	ldrb r2, [r4, #0x14]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #2]
	ldrb r1, [r4, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r3, #3]
	mov r0, ip
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r0, [r4, #0x12]
	subs r0, #1
	strh r0, [r3]
	b _0801387A
_08013868:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #4
	cmp r5, #0x27
	bls _08013812
	adds r0, r4, #0
	bl sub_080138FC
_0801387A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08013880
sub_08013880: @ 0x08013880
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xa0
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r0, sp
	movs r1, #0xa0
	bl sub_08001ACC
	ldr r5, _080138A0 @ =gUnknown_0200BB40
	movs r6, #0
	movs r4, #0
	b _080138C8
	.align 2, 0
_080138A0: .4byte gUnknown_0200BB40
_080138A4:
	cmp r4, r7
	beq _080138BC
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r5, #0
	movs r2, #4
	bl sub_08001B18
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080138BC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #4
	cmp r4, #0x27
	bhi _080138D2
_080138C8:
	ldrb r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080138A4
_080138D2:
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	mov r0, r8
	movs r2, #4
	bl sub_08001B18
	ldr r1, _080138F8 @ =gUnknown_0200BB40
	mov r0, sp
	movs r2, #0xa0
	bl sub_08001B18
	add sp, #0xa0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080138F8: .4byte gUnknown_0200BB40

	thumb_func_start sub_080138FC
sub_080138FC: @ 0x080138FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xa0
	bl sub_0803B800
	adds r6, r0, #0
	ldr r4, _08013980 @ =gUnknown_0200BB44
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x9c
	bl sub_08001B18
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r0, [sp]
	orrs r0, r1
	ldrb r3, [r5, #0x14]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x11
	ldr r2, _08013984 @ =0xFFFDFFFF
	ands r0, r2
	orrs r0, r1
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x12
	ldr r2, _08013988 @ =0xFFFBFFFF
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #3
	lsls r3, r3, #0x13
	ldr r1, _0801398C @ =0xFF07FFFF
	ands r0, r1
	orrs r0, r3
	ldrb r1, [r5, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	ldr r2, _08013990 @ =0xF0FFFFFF
	ands r0, r2
	orrs r0, r1
	ldrh r2, [r5, #0x10]
	ldr r1, _08013994 @ =0xFFFF0000
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x9c
	mov r0, sp
	movs r2, #4
	bl sub_08001B18
	subs r4, #4
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08001B18
	adds r0, r6, #0
	bl sub_0803B860
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013980: .4byte gUnknown_0200BB44
_08013984: .4byte 0xFFFDFFFF
_08013988: .4byte 0xFFFBFFFF
_0801398C: .4byte 0xFF07FFFF
_08013990: .4byte 0xF0FFFFFF
_08013994: .4byte 0xFFFF0000

	thumb_func_start sub_08013998
sub_08013998: @ 0x08013998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _080139A8 @ =gUnknown_0200B7D0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	bx lr
	.align 2, 0
_080139A8: .4byte gUnknown_0200B7D0

	thumb_func_start sub_080139AC
sub_080139AC: @ 0x080139AC
	push {r4, r5, lr}
	ldr r0, _080139C4 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #5
	bgt _080139C8
	cmp r0, #3
	blt _080139C8
	movs r0, #1
	bl sub_08013A40
	b _080139F2
	.align 2, 0
_080139C4: .4byte gUnknown_02005080
_080139C8:
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
	ldr r0, _080139F8 @ =gUnknown_0200C1BC
	adds r2, r0, #0
	adds r2, #0x20
_080139D6:
	ldrb r0, [r2, #4]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #4]
	str r4, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x28
	cmp r3, #0xb
	bls _080139D6
	movs r0, #0
	bl sub_08013A40
_080139F2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080139F8: .4byte gUnknown_0200C1BC

	thumb_func_start sub_080139FC
sub_080139FC: @ 0x080139FC
	push {r4, r5, lr}
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
	ldr r0, _08013A30 @ =gUnknown_0200C1BC
	adds r2, r0, #0
	adds r2, #0x20
_08013A0C:
	ldrb r0, [r2, #4]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #4]
	str r4, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x28
	cmp r3, #0xb
	bls _08013A0C
	movs r0, #0
	bl sub_08013A40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013A30: .4byte gUnknown_0200C1BC

	thumb_func_start sub_08013A34
sub_08013A34: @ 0x08013A34
	push {lr}
	movs r0, #1
	bl sub_08013A40
	pop {r0}
	bx r0

	thumb_func_start sub_08013A40
sub_08013A40: @ 0x08013A40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	ldr r5, _08013AC4 @ =gScript
	ldr r1, _08013AC8 @ =0x000067AC
	adds r0, r5, r1
	ldrh r0, [r0]
	bl sub_0801B558
	adds r4, r0, #0
	ldr r2, _08013ACC @ =0x000065BC
	adds r6, r5, r2
	movs r7, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08013B5A
	movs r3, #1
	mov sb, r3
	mov r8, r5
	ldr r5, _08013AD0 @ =0x000065DC
	add r5, r8
_08013A74:
	str r4, [r5]
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013AAE
	ldrb r2, [r5, #4]
	mov r0, sb
	orrs r2, r0
	movs r0, #0xf
	adds r1, r7, #0
	ands r1, r0
	lsls r1, r1, #2
	movs r3, #0x3d
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r5, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	adds r3, #0x3a
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #4]
_08013AAE:
	ldrb r2, [r4]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08013B08
	cmp r0, #1
	bgt _08013AD4
	cmp r0, #0
	beq _08013ADA
	b _08013B42
	.align 2, 0
_08013AC4: .4byte gScript
_08013AC8: .4byte 0x000067AC
_08013ACC: .4byte 0x000065BC
_08013AD0: .4byte 0x000065DC
_08013AD4:
	cmp r0, #2
	beq _08013B2C
	b _08013B42
_08013ADA:
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1c
	lsls r0, r3, #5
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r1, r1, r0
	ldrb r0, [r4, #8]
	str r0, [sp]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	str r0, [sp, #8]
	adds r0, r6, #0
	ldr r2, _08013B04 @ =gUnknown_03005314
	bl sub_08003278
	b _08013B42
	.align 2, 0
_08013B04: .4byte gUnknown_03005314
_08013B08:
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1c
	lsls r0, r3, #5
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r1, r1, r0
	ldrb r0, [r4, #8]
	str r0, [sp]
	ldrb r0, [r4, #9]
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r2, _08013B28 @ =gUnknown_03005314
	bl sub_08003314
	b _08013B42
	.align 2, 0
_08013B28: .4byte gUnknown_03005314
_08013B2C:
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	ldrb r3, [r4, #0xc]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp]
	adds r0, r6, #0
	ldr r1, _08013B68 @ =gUnknown_03005314
	bl sub_08003394
_08013B42:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x28
	adds r6, #0x28
	adds r4, #0x1c
	cmp r7, #0xb
	bhi _08013B5A
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08013A74
_08013B5A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013B68: .4byte gUnknown_03005314

	thumb_func_start sub_08013B6C
sub_08013B6C: @ 0x08013B6C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _08013BD0 @ =gScript
	ldr r1, _08013BD4 @ =0x000067C4
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	bne _08013C40
	ldr r0, _08013BD8 @ =0x000065BC
	adds r6, r2, r0
	movs r7, #0
	ldr r1, _08013BDC @ =0x000065E0
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013C40
	ldr r0, _08013BDC @ =0x000065E0
	adds r5, r2, r0
_08013B98:
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08013C28
	ldr r4, [r6, #0x20]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08013BBA
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013C28
_08013BBA:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08013BFA
	cmp r0, #1
	bgt _08013BE0
	cmp r0, #0
	beq _08013BE6
	b _08013C28
	.align 2, 0
_08013BD0: .4byte gScript
_08013BD4: .4byte 0x000067C4
_08013BD8: .4byte 0x000065BC
_08013BDC: .4byte 0x000065E0
_08013BE0:
	cmp r0, #2
	beq _08013C0E
	b _08013C28
_08013BE6:
	ldrh r1, [r4]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	bl sub_08003408
	b _08013C28
_08013BFA:
	ldrh r1, [r4]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	bl sub_080034C8
	b _08013C28
_08013C0E:
	adds r1, r4, #0
	adds r1, #0xc
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4]
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x1c
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08013C48
_08013C28:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x28
	adds r6, #0x28
	cmp r7, #0xb
	bhi _08013C40
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013B98
_08013C40:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08013C48
sub_08013C48: @ 0x08013C48
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #0x12]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x10]
	cmp r0, r1
	blo _08013CBE
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldrb r0, [r4, #0x1e]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r1, r0
	blt _08013C86
	strh r3, [r4, #0xc]
_08013C86:
	strh r3, [r4, #0x12]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r2, #0
	bl sub_0801B414
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x1b
	str r5, [sp]
	adds r3, r6, #0
	bl sub_080036E8
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0803B724
_08013CBE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013CC8
sub_08013CC8: @ 0x08013CC8
	push {lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08013CFC
	ldr r3, _08013CF4 @ =gScript
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _08013CF8 @ =0x000067C4
	adds r3, r3, r1
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	b _08013D26
	.align 2, 0
_08013CF4: .4byte gScript
_08013CF8: .4byte 0x000067C4
_08013CFC:
	cmp r1, #0xb
	bgt _08013D2C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08013D34 @ =gUnknown_0200C1BC
	adds r0, r0, r1
	adds r3, r0, #0
	adds r3, #0x24
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013D2C
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #3
	rsbs r0, r0, #0
_08013D26:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08013D2C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08013D34: .4byte gUnknown_0200C1BC

	thumb_func_start sub_08013D38
sub_08013D38: @ 0x08013D38
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r3, _08013E04 @ =gScript
	ldr r0, _08013E08 @ =0x0000598C
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08013E0C @ =0x00005962
	adds r1, r3, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08013E10 @ =0x0000595B
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _08013D60
	b _08013E9A
_08013D60:
	ldr r0, _08013E14 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013D80
	ldr r1, _08013E18 @ =gUnknown_020051E8
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08013D80
	movs r0, #0
	strb r0, [r1, #1]
	movs r0, #0xa
	strb r0, [r2]
	ldr r2, _08013E1C @ =0x00005960
	adds r1, r3, r2
	movs r0, #0x1e
	strh r0, [r1]
_08013D80:
	ldr r6, _08013E04 @ =gScript
	ldr r0, _08013E20 @ =0x000067C4
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r4, _08013E24 @ =gUnknown_02000028
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	bl sub_0803B800
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _08013E28 @ =gUnknown_03005314
	adds r2, r5, #0
	bl sub_08001B18
	ldr r1, _08013E2C @ =gUnknown_08D2D320
	ldr r2, _08013E10 @ =0x0000595B
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013DC2
	bl _call_via_r0
_08013DC2:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldrh r1, [r6, #2]
	ldr r0, _08013E30 @ =0x00004008
	ands r0, r1
	cmp r0, #0
	beq _08013DD8
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08013DD8:
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08013DF0
	ldr r1, _08013E34 @ =0x000067AC
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #3
	bne _08013DF0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08013DF0:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013DFC
	bl sub_08005BFC
_08013DFC:
	ldr r6, _08013E38 @ =gUnknown_08D2D418
	ldr r5, _08013E3C @ =gUnknown_0200B55B
	adds r4, r5, #7
	b _08013E46
	.align 2, 0
_08013E04: .4byte gScript
_08013E08: .4byte 0x0000598C
_08013E0C: .4byte 0x00005962
_08013E10: .4byte 0x0000595B
_08013E14: .4byte gUnknown_02005080
_08013E18: .4byte gUnknown_020051E8
_08013E1C: .4byte 0x00005960
_08013E20: .4byte 0x000067C4
_08013E24: .4byte gUnknown_02000028
_08013E28: .4byte gUnknown_03005314
_08013E2C: .4byte gUnknown_08D2D320
_08013E30: .4byte 0x00004008
_08013E34: .4byte 0x000067AC
_08013E38: .4byte gUnknown_08D2D418
_08013E3C: .4byte gUnknown_0200B55B
_08013E40:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08013E46:
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08013E40
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013E40
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013E68
	bl sub_08005C14
_08013E68:
	ldr r1, _08013EA4 @ =gUnknown_08D2D510
	ldr r4, _08013EA8 @ =gScript
	ldr r2, _08013EAC @ =0x0000595B
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013E80
	bl _call_via_r0
_08013E80:
	ldr r0, _08013EB0 @ =0x000067C4
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08013EB4 @ =gUnknown_02000028
	ldr r0, [r0]
	bl sub_0803B860
_08013E9A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013EA4: .4byte gUnknown_08D2D510
_08013EA8: .4byte gScript
_08013EAC: .4byte 0x0000595B
_08013EB0: .4byte 0x000067C4
_08013EB4: .4byte gUnknown_02000028

	thumb_func_start sub_08013EB8
sub_08013EB8: @ 0x08013EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r6, _08013F80 @ =gScript
	ldr r0, _08013F84 @ =0x0000598C
	adds r7, r6, r0
	ldrb r0, [r7]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7]
	ldr r1, _08013F88 @ =0x00005962
	adds r0, r6, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	ldr r2, _08013F8C @ =0x0000595C
	adds r2, r2, r6
	mov sb, r2
	ldrb r0, [r2]
	cmp r0, #1
	bne _08013EEA
	b _0801400A
_08013EEA:
	bl sub_08016F1C
	ldr r0, _08013F90 @ =0x000067C4
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r4, _08013F94 @ =gUnknown_02000028
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	bl sub_0803B800
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _08013F98 @ =gUnknown_03005314
	adds r2, r5, #0
	bl sub_08001B18
	ldr r1, _08013F9C @ =gUnknown_08D2D39C
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013F2C
	bl _call_via_r0
_08013F2C:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldrb r1, [r7]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013F42
	mov r0, sp
	mov r1, r8
	strh r1, [r0]
_08013F42:
	ldrh r1, [r6, #2]
	ldr r0, _08013FA0 @ =0x00004008
	ands r0, r1
	cmp r0, #0
	beq _08013F52
	mov r0, sp
	mov r2, r8
	strh r2, [r0]
_08013F52:
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08013F6A
	ldr r1, _08013FA4 @ =0x000067AC
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0xd1
	bne _08013F6A
	mov r0, sp
	mov r2, r8
	strh r2, [r0]
_08013F6A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013F76
	bl sub_08005BFC
_08013F76:
	ldr r6, _08013FA8 @ =gUnknown_08D2D494
	ldr r5, _08013FAC @ =gUnknown_0200B55C
	adds r4, r5, #6
	b _08013FB6
	.align 2, 0
_08013F80: .4byte gScript
_08013F84: .4byte 0x0000598C
_08013F88: .4byte 0x00005962
_08013F8C: .4byte 0x0000595C
_08013F90: .4byte 0x000067C4
_08013F94: .4byte gUnknown_02000028
_08013F98: .4byte gUnknown_03005314
_08013F9C: .4byte gUnknown_08D2D39C
_08013FA0: .4byte 0x00004008
_08013FA4: .4byte 0x000067AC
_08013FA8: .4byte gUnknown_08D2D494
_08013FAC: .4byte gUnknown_0200B55C
_08013FB0:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08013FB6:
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08013FB0
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013FB0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013FD8
	bl sub_08005C14
_08013FD8:
	ldr r1, _08014018 @ =gUnknown_08D2D58C
	ldr r4, _0801401C @ =gScript
	ldr r2, _08014020 @ =0x0000595C
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013FF0
	bl _call_via_r0
_08013FF0:
	ldr r0, _08014024 @ =0x000067C4
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08014028 @ =gUnknown_02000028
	ldr r0, [r0]
	bl sub_0803B860
_0801400A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014018: .4byte gUnknown_08D2D58C
_0801401C: .4byte gScript
_08014020: .4byte 0x0000595C
_08014024: .4byte 0x000067C4
_08014028: .4byte gUnknown_02000028

	thumb_func_start sub_0801402C
sub_0801402C: @ 0x0801402C
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08014060 @ =gUnknown_02000008
	ldr r1, _08014064 @ =gUnknown_02000028
	ldr r1, [r1]
	ldr r4, _08014068 @ =gScript
	ldr r3, _0801406C @ =0x00005960
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _08014070 @ =0x000067C4
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014060: .4byte gUnknown_02000008
_08014064: .4byte gUnknown_02000028
_08014068: .4byte gScript
_0801406C: .4byte 0x00005960
_08014070: .4byte 0x000067C4

	thumb_func_start sub_08014074
sub_08014074: @ 0x08014074
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _080140B8 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	ldr r0, _080140BC @ =gUnknown_02000008
	ldr r1, _080140C0 @ =gUnknown_02000028
	ldr r1, [r1]
	ldr r4, _080140C4 @ =gScript
	ldr r3, _080140C8 @ =0x00005960
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #2
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _080140CC @ =0x000067C4
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080140B8: .4byte gUnknown_03005314
_080140BC: .4byte gUnknown_02000008
_080140C0: .4byte gUnknown_02000028
_080140C4: .4byte gScript
_080140C8: .4byte 0x00005960
_080140CC: .4byte 0x000067C4

	thumb_func_start sub_080140D0
sub_080140D0: @ 0x080140D0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08014194 @ =gUnknown_02016028
	ldr r0, _08014198 @ =0x0001ED10
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r6, #0x22]
	ldrh r0, [r6, #0x24]
	strh r1, [r6, #0x24]
	ldrh r0, [r6, #0x26]
	strh r1, [r6, #0x26]
	ldrh r0, [r6, #0x2a]
	movs r0, #0xa0
	strh r0, [r6, #0x2a]
	ldr r7, _0801419C @ =gScript
	ldr r2, _080141A0 @ =0x00005968
	adds r0, r7, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r1, _080141A4 @ =0x0000598C
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801414C
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _080141A8 @ =0x0000595D
	adds r0, r7, r2
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _080141AC @ =0x00005964
	adds r0, r7, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r7, r2
	strh r0, [r1]
_0801414C:
	bl sub_08016CBC
	ldr r0, _080141B0 @ =gUnknown_030040F0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _080141B4 @ =0x00013210
	adds r0, r6, r1
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _080141B8 @ =0x04000048
	ldrh r0, [r6, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r6, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r6, #0x2a]
	strh r0, [r1]
	ldr r2, _080141BC @ =0x0000595B
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _080141C0
	ldrb r0, [r7, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r7, #2]
	b _080141C6
	.align 2, 0
_08014194: .4byte gUnknown_02016028
_08014198: .4byte 0x0001ED10
_0801419C: .4byte gScript
_080141A0: .4byte 0x00005968
_080141A4: .4byte 0x0000598C
_080141A8: .4byte 0x0000595D
_080141AC: .4byte 0x00005964
_080141B0: .4byte gUnknown_030040F0
_080141B4: .4byte 0x00013210
_080141B8: .4byte 0x04000048
_080141BC: .4byte 0x0000595B
_080141C0:
	movs r0, #0
	bl sub_08005900
_080141C6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080141D0
sub_080141D0: @ 0x080141D0
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _08014224 @ =gUnknown_02000008
	ldr r1, _08014228 @ =gUnknown_02000028
	ldr r1, [r1]
	ldr r4, _0801422C @ =gScript
	ldr r3, _08014230 @ =0x00005960
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl sub_080031F0
	ldr r0, _08014234 @ =0x00005968
	adds r1, r4, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r3, _08014238 @ =0x0000596A
	adds r1, r4, r3
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0801423C @ =0x0000596C
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #3
	bl sub_08005900
	ldr r3, _08014240 @ =0x000067C4
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014224: .4byte gUnknown_02000008
_08014228: .4byte gUnknown_02000028
_0801422C: .4byte gScript
_08014230: .4byte 0x00005960
_08014234: .4byte 0x00005968
_08014238: .4byte 0x0000596A
_0801423C: .4byte 0x0000596C
_08014240: .4byte 0x000067C4

	thumb_func_start sub_08014244
sub_08014244: @ 0x08014244
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _080142D0 @ =gUnknown_02016028
	ldr r0, _080142D4 @ =0x0001ED10
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r2, #0x40
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x21
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x3f
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	movs r0, #0xf0
	strh r0, [r4, #0x26]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r5, _080142D8 @ =gScript
	ldr r2, _080142DC @ =0x00005968
	adds r0, r5, r2
	strh r1, [r0]
	bl sub_08016CBC
	ldr r0, _080142E0 @ =gUnknown_030040F0
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r6, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _080142E4 @ =0x00013210
	adds r0, r4, r1
	adds r1, r6, #0
	bl sub_08001ACC
	ldr r1, _080142E8 @ =0x04000048
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #2]
	ldr r2, _080142EC @ =0x000067C4
	adds r5, r5, r2
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080142D0: .4byte gUnknown_02016028
_080142D4: .4byte 0x0001ED10
_080142D8: .4byte gScript
_080142DC: .4byte 0x00005968
_080142E0: .4byte gUnknown_030040F0
_080142E4: .4byte 0x00013210
_080142E8: .4byte 0x04000048
_080142EC: .4byte 0x000067C4

	thumb_func_start sub_080142F0
sub_080142F0: @ 0x080142F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _0801437C @ =gUnknown_02016028
	ldr r0, _08014380 @ =0x0001ED10
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r2, #0x40
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x21
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x3f
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	movs r0, #0xf0
	strh r0, [r4, #0x26]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r5, _08014384 @ =gScript
	ldr r2, _08014388 @ =0x00005968
	adds r0, r5, r2
	strh r1, [r0]
	bl sub_08016CBC
	ldr r0, _0801438C @ =gUnknown_030040F0
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r6, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _08014390 @ =0x00013210
	adds r0, r4, r1
	adds r1, r6, #0
	bl sub_08001ACC
	ldr r1, _08014394 @ =0x04000048
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #2]
	ldr r2, _08014398 @ =0x000067C4
	adds r5, r5, r2
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801437C: .4byte gUnknown_02016028
_08014380: .4byte 0x0001ED10
_08014384: .4byte gScript
_08014388: .4byte 0x00005968
_0801438C: .4byte gUnknown_030040F0
_08014390: .4byte 0x00013210
_08014394: .4byte 0x04000048
_08014398: .4byte 0x000067C4

	thumb_func_start sub_0801439C
sub_0801439C: @ 0x0801439C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08014440 @ =gUnknown_02016028
	ldr r0, _08014444 @ =0x0001ED10
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r7, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r7, #0x22]
	ldrh r0, [r7, #0x24]
	movs r0, #1
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x2a]
	movs r0, #0xa0
	strh r0, [r7, #0x2a]
	ldr r6, _08014448 @ =gScript
	ldr r2, _0801444C @ =0x00005968
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, _08014450 @ =0x0000598C
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08014416
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _08014454 @ =0x0000595D
	adds r0, r6, r2
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08014458 @ =0x00005964
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
_08014416:
	bl sub_08016CBC
	ldr r0, _0801445C @ =gUnknown_030040F0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _08014460 @ =0x00013210
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014440: .4byte gUnknown_02016028
_08014444: .4byte 0x0001ED10
_08014448: .4byte gScript
_0801444C: .4byte 0x00005968
_08014450: .4byte 0x0000598C
_08014454: .4byte 0x0000595D
_08014458: .4byte 0x00005964
_0801445C: .4byte gUnknown_030040F0
_08014460: .4byte 0x00013210

	thumb_func_start sub_08014464
sub_08014464: @ 0x08014464
	push {r4, r5, lr}
	ldr r4, _080144CC @ =gUnknown_02016028
	ldr r0, _080144D0 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r2, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #1
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _080144D4 @ =gScript
	ldr r3, _080144D8 @ =0x0000596E
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _080144DC @ =0x00005964
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	bl sub_08016CBC
	ldr r0, _080144E0 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r3, _080144E4 @ =0x00013210
	adds r4, r4, r3
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080144CC: .4byte gUnknown_02016028
_080144D0: .4byte 0x0001ED10
_080144D4: .4byte gScript
_080144D8: .4byte 0x0000596E
_080144DC: .4byte 0x00005964
_080144E0: .4byte gUnknown_030040F0
_080144E4: .4byte 0x00013210

	thumb_func_start sub_080144E8
sub_080144E8: @ 0x080144E8
	push {r4, r5, lr}
	ldr r4, _08014560 @ =gUnknown_02016028
	ldr r0, _08014564 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _08014568 @ =gScript
	ldr r0, _0801456C @ =0x0000596E
	adds r2, r1, r0
	movs r0, #0x90
	strh r0, [r2]
	ldr r0, _08014570 @ =0x00005970
	adds r2, r1, r0
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _08014574 @ =0x00005964
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	ldr r1, _08014578 @ =0x000146D0
	adds r0, r4, r1
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	bl sub_08016CBC
	bl sub_08016D54
	ldr r0, _0801457C @ =gUnknown_030040F0
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014580 @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014560: .4byte gUnknown_02016028
_08014564: .4byte 0x0001ED10
_08014568: .4byte gScript
_0801456C: .4byte 0x0000596E
_08014570: .4byte 0x00005970
_08014574: .4byte 0x00005964
_08014578: .4byte 0x000146D0
_0801457C: .4byte gUnknown_030040F0
_08014580: .4byte 0x00013210

	thumb_func_start sub_08014584
sub_08014584: @ 0x08014584
	push {r4, lr}
	ldr r4, _080145A0 @ =gScript
	ldr r0, _080145A4 @ =0x0000595B
	adds r4, r4, r0
	movs r0, #3
	strb r0, [r4]
	bl sub_080140D0
	movs r0, #0x17
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080145A0: .4byte gScript
_080145A4: .4byte 0x0000595B

	thumb_func_start sub_080145A8
sub_080145A8: @ 0x080145A8
	ldr r2, _080145B8 @ =gScript
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	bx lr
	.align 2, 0
_080145B8: .4byte gScript

	thumb_func_start sub_080145BC
sub_080145BC: @ 0x080145BC
	push {lr}
	ldr r2, _080145E8 @ =gScript
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, _080145EC @ =gUnknown_02016028
	ldr r0, _080145F0 @ =0x000121BB
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08005BB4
	pop {r0}
	bx r0
	.align 2, 0
_080145E8: .4byte gScript
_080145EC: .4byte gUnknown_02016028
_080145F0: .4byte 0x000121BB

	thumb_func_start sub_080145F4
sub_080145F4: @ 0x080145F4
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _0801462C @ =gUnknown_02000008
	ldr r1, _08014630 @ =gUnknown_02000028
	ldr r1, [r1]
	ldr r4, _08014634 @ =gScript
	ldr r3, _08014638 @ =0x00005960
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _0801463C @ =0x000067C4
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801462C: .4byte gUnknown_02000008
_08014630: .4byte gUnknown_02000028
_08014634: .4byte gScript
_08014638: .4byte 0x00005960
_0801463C: .4byte 0x000067C4

	thumb_func_start sub_08014640
sub_08014640: @ 0x08014640
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08014678 @ =gUnknown_02000008
	ldr r1, _0801467C @ =gUnknown_02000028
	ldr r1, [r1]
	ldr r4, _08014680 @ =gScript
	ldr r3, _08014684 @ =0x00005960
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #3
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _08014688 @ =0x000067C4
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014678: .4byte gUnknown_02000008
_0801467C: .4byte gUnknown_02000028
_08014680: .4byte gScript
_08014684: .4byte 0x00005960
_08014688: .4byte 0x000067C4

	thumb_func_start sub_0801468C
sub_0801468C: @ 0x0801468C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08014754 @ =gUnknown_02016028
	ldr r0, _08014758 @ =0x0001ED10
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r6, #0x22]
	ldrh r0, [r6, #0x24]
	strh r1, [r6, #0x24]
	ldrh r0, [r6, #0x26]
	movs r2, #0xf0
	strh r2, [r6, #0x26]
	ldrh r0, [r6, #0x2a]
	movs r0, #0xa0
	strh r0, [r6, #0x2a]
	ldr r7, _0801475C @ =gScript
	ldr r3, _08014760 @ =0x00005968
	adds r0, r7, r3
	strh r2, [r0]
	ldr r2, _08014764 @ =0x0000596A
	adds r0, r7, r2
	strh r1, [r0]
	adds r3, #4
	adds r0, r7, r3
	strh r1, [r0]
	ldr r1, _08014768 @ =0x0000598C
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801470A
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _0801476C @ =0x0000595D
	adds r0, r7, r2
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r3, _08014770 @ =0x00005964
	adds r0, r7, r3
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	ldr r2, _08014774 @ =0x00005966
	adds r1, r7, r2
	strh r0, [r1]
_0801470A:
	bl sub_08016D08
	ldr r0, _08014778 @ =gUnknown_030040F0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r3, _0801477C @ =0x00013210
	adds r0, r6, r3
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _08014780 @ =0x04000048
	ldrh r0, [r6, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r6, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r6, #0x2a]
	strh r0, [r1]
	ldr r1, _08014784 @ =0x0000595B
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08014788
	ldrb r0, [r7, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r7, #2]
	b _0801478E
	.align 2, 0
_08014754: .4byte gUnknown_02016028
_08014758: .4byte 0x0001ED10
_0801475C: .4byte gScript
_08014760: .4byte 0x00005968
_08014764: .4byte 0x0000596A
_08014768: .4byte 0x0000598C
_0801476C: .4byte 0x0000595D
_08014770: .4byte 0x00005964
_08014774: .4byte 0x00005966
_08014778: .4byte gUnknown_030040F0
_0801477C: .4byte 0x00013210
_08014780: .4byte 0x04000048
_08014784: .4byte 0x0000595B
_08014788:
	movs r0, #0
	bl sub_08005900
_0801478E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08014798
sub_08014798: @ 0x08014798
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _080147EC @ =gUnknown_02000008
	ldr r1, _080147F0 @ =gUnknown_02000028
	ldr r1, [r1]
	ldr r4, _080147F4 @ =gScript
	ldr r3, _080147F8 @ =0x00005960
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #1
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl sub_080031F0
	ldr r1, _080147FC @ =0x00005968
	adds r0, r4, r1
	strh r5, [r0]
	ldr r3, _08014800 @ =0x0000596A
	adds r1, r4, r3
	movs r0, #8
	strh r0, [r1]
	ldr r1, _08014804 @ =0x0000596C
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #3
	bl sub_08005900
	ldr r3, _08014808 @ =0x000067C4
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080147EC: .4byte gUnknown_02000008
_080147F0: .4byte gUnknown_02000028
_080147F4: .4byte gScript
_080147F8: .4byte 0x00005960
_080147FC: .4byte 0x00005968
_08014800: .4byte 0x0000596A
_08014804: .4byte 0x0000596C
_08014808: .4byte 0x000067C4

	thumb_func_start sub_0801480C
sub_0801480C: @ 0x0801480C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _080148A0 @ =gScript
	ldr r0, _080148A4 @ =0x00009D14
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl sub_08002FD4
	ldr r2, _080148A8 @ =gUnknown_02016028
	ldr r1, _080148AC @ =0x00011D9C
	adds r3, r2, r1
	movs r5, #0
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldr r1, _080148B0 @ =gUnknown_080C2A90
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	ldr r4, _080148B4 @ =0x00011D9D
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080148B8 @ =0x00011D9E
	adds r0, r2, r1
	strb r5, [r0]
	ldr r4, _080148BC @ =gUnknown_080C2A9C
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	ldr r3, _080148C0 @ =0x00011D9F
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _080148C4 @ =0x000121BB
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08037958
	ldr r0, _080148C8 @ =gUnknown_02000008
	ldr r1, _080148CC @ =gUnknown_02000028
	ldr r1, [r1]
	movs r2, #4
	str r2, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0xa
	bl sub_080031F0
	ldr r0, _080148D0 @ =0x000067C4
	adds r6, r6, r0
	ldrb r0, [r6]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080148A0: .4byte gScript
_080148A4: .4byte 0x00009D14
_080148A8: .4byte gUnknown_02016028
_080148AC: .4byte 0x00011D9C
_080148B0: .4byte gUnknown_080C2A90
_080148B4: .4byte 0x00011D9D
_080148B8: .4byte 0x00011D9E
_080148BC: .4byte gUnknown_080C2A9C
_080148C0: .4byte 0x00011D9F
_080148C4: .4byte 0x000121BB
_080148C8: .4byte gUnknown_02000008
_080148CC: .4byte gUnknown_02000028
_080148D0: .4byte 0x000067C4

	thumb_func_start sub_080148D4
sub_080148D4: @ 0x080148D4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _08014938 @ =gUnknown_02016028
	ldr r1, _0801493C @ =0x00011D9C
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08014940 @ =gUnknown_080C2A90
	ldrb r1, [r0, #3]
	ldr r2, _08014944 @ =0x00011D9D
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, _08014948 @ =0x00011D9E
	adds r0, r4, r1
	strb r3, [r0]
	ldr r0, _0801494C @ =gUnknown_080C2A9C
	ldrb r1, [r0]
	adds r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08014950 @ =0x000121B8
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08014954 @ =0x000121C0
	adds r0, r4, r1
	strb r3, [r0]
	ldr r0, _08014958 @ =0x000121BB
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08037958
	bl sub_0805B7D4
	ldr r1, _0801495C @ =gUnknown_020047E0
	adds r1, #0x66
	strb r0, [r1]
	ldrb r3, [r1]
	cmp r3, #1
	beq _08014974
	cmp r3, #1
	bgt _08014960
	cmp r3, #0
	beq _08014966
	b _08014988
	.align 2, 0
_08014938: .4byte gUnknown_02016028
_0801493C: .4byte 0x00011D9C
_08014940: .4byte gUnknown_080C2A90
_08014944: .4byte 0x00011D9D
_08014948: .4byte 0x00011D9E
_0801494C: .4byte gUnknown_080C2A9C
_08014950: .4byte 0x000121B8
_08014954: .4byte 0x000121C0
_08014958: .4byte 0x000121BB
_0801495C: .4byte gUnknown_020047E0
_08014960:
	cmp r3, #2
	beq _08014980
	b _08014988
_08014966:
	ldr r1, _08014970 @ =0x000121C1
	adds r0, r4, r1
	strb r3, [r0]
	b _08014988
	.align 2, 0
_08014970: .4byte 0x000121C1
_08014974:
	ldr r2, _0801497C @ =0x000121C1
	adds r1, r4, r2
	movs r0, #2
	b _08014986
	.align 2, 0
_0801497C: .4byte 0x000121C1
_08014980:
	ldr r0, _080149C0 @ =0x000121C1
	adds r1, r4, r0
	movs r0, #1
_08014986:
	strb r0, [r1]
_08014988:
	ldr r0, _080149C4 @ =gUnknown_02000008
	ldr r1, _080149C8 @ =gUnknown_02000028
	ldr r1, [r1]
	movs r2, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0xa
	bl sub_080031F0
	ldr r2, _080149CC @ =gScript
	ldr r1, _080149D0 @ =0x000067C4
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	bl sub_08026AF8
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080149C0: .4byte 0x000121C1
_080149C4: .4byte gUnknown_02000008
_080149C8: .4byte gUnknown_02000028
_080149CC: .4byte gScript
_080149D0: .4byte 0x000067C4

	thumb_func_start sub_080149D4
sub_080149D4: @ 0x080149D4
	push {r4, r5, lr}
	ldr r4, _08014A28 @ =gUnknown_02016028
	ldr r0, _08014A2C @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r0, _08014A30 @ =gScript
	ldr r2, _08014A34 @ =0x00005968
	adds r0, r0, r2
	strh r1, [r0]
	bl sub_08016D08
	ldr r0, _08014A38 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014A3C @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014A28: .4byte gUnknown_02016028
_08014A2C: .4byte 0x0001ED10
_08014A30: .4byte gScript
_08014A34: .4byte 0x00005968
_08014A38: .4byte gUnknown_030040F0
_08014A3C: .4byte 0x00013210

	thumb_func_start sub_08014A40
sub_08014A40: @ 0x08014A40
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _08014ACC @ =gUnknown_02016028
	ldr r0, _08014AD0 @ =0x0001ED10
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r2, #0x40
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	movs r0, #0xf0
	strh r0, [r4, #0x26]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r5, _08014AD4 @ =gScript
	ldr r2, _08014AD8 @ =0x00005968
	adds r0, r5, r2
	strh r1, [r0]
	bl sub_08016D08
	ldr r0, _08014ADC @ =gUnknown_030040F0
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r6, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _08014AE0 @ =0x00013210
	adds r0, r4, r1
	adds r1, r6, #0
	bl sub_08001ACC
	ldr r1, _08014AE4 @ =0x04000048
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #2]
	ldr r2, _08014AE8 @ =0x000067C4
	adds r5, r5, r2
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014ACC: .4byte gUnknown_02016028
_08014AD0: .4byte 0x0001ED10
_08014AD4: .4byte gScript
_08014AD8: .4byte 0x00005968
_08014ADC: .4byte gUnknown_030040F0
_08014AE0: .4byte 0x00013210
_08014AE4: .4byte 0x04000048
_08014AE8: .4byte 0x000067C4

	thumb_func_start sub_08014AEC
sub_08014AEC: @ 0x08014AEC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _08014B78 @ =gUnknown_02016028
	ldr r0, _08014B7C @ =0x0001ED10
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r2, #0x40
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	movs r0, #0xf0
	strh r0, [r4, #0x26]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r5, _08014B80 @ =gScript
	ldr r2, _08014B84 @ =0x00005968
	adds r0, r5, r2
	strh r1, [r0]
	bl sub_08016D08
	ldr r0, _08014B88 @ =gUnknown_030040F0
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r6, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _08014B8C @ =0x00013210
	adds r0, r4, r1
	adds r1, r6, #0
	bl sub_08001ACC
	ldr r1, _08014B90 @ =0x04000048
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #2]
	ldr r2, _08014B94 @ =0x000067C4
	adds r5, r5, r2
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014B78: .4byte gUnknown_02016028
_08014B7C: .4byte 0x0001ED10
_08014B80: .4byte gScript
_08014B84: .4byte 0x00005968
_08014B88: .4byte gUnknown_030040F0
_08014B8C: .4byte 0x00013210
_08014B90: .4byte 0x04000048
_08014B94: .4byte 0x000067C4

	thumb_func_start sub_08014B98
sub_08014B98: @ 0x08014B98
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08014C58 @ =gUnknown_02016028
	ldr r0, _08014C5C @ =0x0001ED10
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r7, #0x22]
	movs r2, #0
	movs r0, #0x3f
	strh r0, [r7, #0x22]
	ldrh r0, [r7, #0x24]
	movs r0, #1
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x2a]
	movs r0, #0xa0
	strh r0, [r7, #0x2a]
	ldr r6, _08014C60 @ =gScript
	ldr r0, _08014C64 @ =0x00005968
	adds r1, r6, r0
	movs r0, #0x80
	strh r0, [r1]
	ldr r1, _08014C68 @ =0x0000596A
	adds r0, r6, r1
	strh r2, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, _08014C6C @ =0x0000598C
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08014C14
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r1, _08014C70 @ =0x0000595D
	adds r0, r6, r1
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08014C74 @ =0x00005964
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
_08014C14:
	bl sub_08016D08
	bl sub_08016CBC
	ldr r0, _08014C78 @ =gUnknown_030040F0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _08014C7C @ =0x00013210
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _08014C80 @ =0x04000048
	ldrh r0, [r7, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r7, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r7, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r7, #0x2a]
	strh r0, [r1]
	movs r0, #0
	bl sub_08005900
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014C58: .4byte gUnknown_02016028
_08014C5C: .4byte 0x0001ED10
_08014C60: .4byte gScript
_08014C64: .4byte 0x00005968
_08014C68: .4byte 0x0000596A
_08014C6C: .4byte 0x0000598C
_08014C70: .4byte 0x0000595D
_08014C74: .4byte 0x00005964
_08014C78: .4byte gUnknown_030040F0
_08014C7C: .4byte 0x00013210
_08014C80: .4byte 0x04000048

	thumb_func_start sub_08014C84
sub_08014C84: @ 0x08014C84
	push {r4, r5, lr}
	ldr r4, _08014CE0 @ =gUnknown_02016028
	ldr r0, _08014CE4 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r3, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r0, _08014CE8 @ =gScript
	ldr r1, _08014CEC @ =0x0000595E
	adds r2, r0, r1
	movs r1, #3
	strb r1, [r2]
	ldr r1, _08014CF0 @ =0x00005968
	adds r0, r0, r1
	strh r3, [r0]
	bl sub_08016D08
	ldr r0, _08014CF4 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014CF8 @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014CE0: .4byte gUnknown_02016028
_08014CE4: .4byte 0x0001ED10
_08014CE8: .4byte gScript
_08014CEC: .4byte 0x0000595E
_08014CF0: .4byte 0x00005968
_08014CF4: .4byte gUnknown_030040F0
_08014CF8: .4byte 0x00013210

	thumb_func_start sub_08014CFC
sub_08014CFC: @ 0x08014CFC
	push {r4, r5, lr}
	ldr r4, _08014D58 @ =gUnknown_02016028
	ldr r0, _08014D5C @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r3, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r0, _08014D60 @ =gScript
	ldr r1, _08014D64 @ =0x0000595E
	adds r2, r0, r1
	movs r1, #5
	strb r1, [r2]
	ldr r1, _08014D68 @ =0x00005968
	adds r0, r0, r1
	strh r3, [r0]
	bl sub_08016D08
	ldr r0, _08014D6C @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014D70 @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014D58: .4byte gUnknown_02016028
_08014D5C: .4byte 0x0001ED10
_08014D60: .4byte gScript
_08014D64: .4byte 0x0000595E
_08014D68: .4byte 0x00005968
_08014D6C: .4byte gUnknown_030040F0
_08014D70: .4byte 0x00013210

	thumb_func_start sub_08014D74
sub_08014D74: @ 0x08014D74
	push {r4, r5, lr}
	ldr r4, _08014DD0 @ =gUnknown_02016028
	ldr r0, _08014DD4 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r3, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r0, _08014DD8 @ =gScript
	ldr r1, _08014DDC @ =0x0000595E
	adds r2, r0, r1
	movs r1, #3
	strb r1, [r2]
	ldr r1, _08014DE0 @ =0x00005968
	adds r0, r0, r1
	strh r3, [r0]
	bl sub_08016D08
	ldr r0, _08014DE4 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014DE8 @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014DD0: .4byte gUnknown_02016028
_08014DD4: .4byte 0x0001ED10
_08014DD8: .4byte gScript
_08014DDC: .4byte 0x0000595E
_08014DE0: .4byte 0x00005968
_08014DE4: .4byte gUnknown_030040F0
_08014DE8: .4byte 0x00013210

	thumb_func_start sub_08014DEC
sub_08014DEC: @ 0x08014DEC
	ldr r0, _08014DFC @ =gUnknown_02016028
	ldr r1, _08014E00 @ =0x000121BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014DFC: .4byte gUnknown_02016028
_08014E00: .4byte 0x000121BA

	thumb_func_start sub_08014E04
sub_08014E04: @ 0x08014E04
	ldr r0, _08014E14 @ =gUnknown_02016028
	ldr r1, _08014E18 @ =0x000121BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014E14: .4byte gUnknown_02016028
_08014E18: .4byte 0x000121BA

	thumb_func_start sub_08014E1C
sub_08014E1C: @ 0x08014E1C
	push {r4, r5, lr}
	ldr r4, _08014E8C @ =gUnknown_02016028
	ldr r0, _08014E90 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r3, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _08014E94 @ =gScript
	ldr r0, _08014E98 @ =0x00005968
	adds r2, r1, r0
	movs r0, #0xf0
	strh r0, [r2]
	ldr r0, _08014E9C @ =0x0000596A
	adds r2, r1, r0
	movs r0, #8
	strh r0, [r2]
	ldr r2, _08014EA0 @ =0x0000596C
	adds r0, r1, r2
	strh r3, [r0]
	ldr r0, _08014EA4 @ =0x00005964
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	bl sub_08016D08
	ldr r0, _08014EA8 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r2, _08014EAC @ =0x00013210
	adds r4, r4, r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014E8C: .4byte gUnknown_02016028
_08014E90: .4byte 0x0001ED10
_08014E94: .4byte gScript
_08014E98: .4byte 0x00005968
_08014E9C: .4byte 0x0000596A
_08014EA0: .4byte 0x0000596C
_08014EA4: .4byte 0x00005964
_08014EA8: .4byte gUnknown_030040F0
_08014EAC: .4byte 0x00013210

	thumb_func_start sub_08014EB0
sub_08014EB0: @ 0x08014EB0
	push {r4, r5, lr}
	ldr r4, _08014F0C @ =gUnknown_02016028
	ldr r0, _08014F10 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r3, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r0, _08014F14 @ =gScript
	ldr r1, _08014F18 @ =0x0000595E
	adds r2, r0, r1
	movs r1, #5
	strb r1, [r2]
	ldr r1, _08014F1C @ =0x00005968
	adds r0, r0, r1
	strh r3, [r0]
	bl sub_08016D08
	ldr r0, _08014F20 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014F24 @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F0C: .4byte gUnknown_02016028
_08014F10: .4byte 0x0001ED10
_08014F14: .4byte gScript
_08014F18: .4byte 0x0000595E
_08014F1C: .4byte 0x00005968
_08014F20: .4byte gUnknown_030040F0
_08014F24: .4byte 0x00013210

	thumb_func_start sub_08014F28
sub_08014F28: @ 0x08014F28
	push {r4, r5, lr}
	ldr r4, _08014F90 @ =gUnknown_02016028
	ldr r0, _08014F94 @ =0x0001ED10
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r2, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _08014F98 @ =gScript
	ldr r3, _08014F9C @ =0x0000595E
	adds r0, r1, r3
	strb r2, [r0]
	ldr r2, _08014FA0 @ =0x00005968
	adds r0, r1, r2
	movs r2, #0x78
	strh r2, [r0]
	adds r3, #6
	adds r1, r1, r3
	movs r0, #0x50
	strh r2, [r1]
	strh r0, [r1, #2]
	bl sub_08016D08
	ldr r0, _08014FA4 @ =gUnknown_030040F0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_08001ACC
	ldr r0, _08014FA8 @ =0x00013210
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001ACC
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F90: .4byte gUnknown_02016028
_08014F94: .4byte 0x0001ED10
_08014F98: .4byte gScript
_08014F9C: .4byte 0x0000595E
_08014FA0: .4byte 0x00005968
_08014FA4: .4byte gUnknown_030040F0
_08014FA8: .4byte 0x00013210

	thumb_func_start sub_08014FAC
sub_08014FAC: @ 0x08014FAC
	push {lr}
	bl sub_080030A4
	ldr r1, _08014FD0 @ =gScript
	movs r2, #7
	ands r0, r2
	ldr r2, _08014FD4 @ =0x0000595E
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, _08014FD8 @ =gUnknown_02016028
	ldr r0, _08014FDC @ =0x000121BA
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08014FD0: .4byte gScript
_08014FD4: .4byte 0x0000595E
_08014FD8: .4byte gUnknown_02016028
_08014FDC: .4byte 0x000121BA

	thumb_func_start sub_08014FE0
sub_08014FE0: @ 0x08014FE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r3, _0801501C @ =gUnknown_02016078
	movs r6, #1
	movs r5, #0x19
	movs r4, #0
	movs r2, #0
	ldr r0, _08015020 @ =0x000131C0
	adds r0, r0, r3
	mov sl, r0
	mov sb, r6
	ldr r1, _08015024 @ =0xFFFFC000
	mov r8, r1
_08015002:
	movs r1, #0
	adds r2, #1
	adds r7, r6, #1
	str r7, [sp]
	adds r0, r5, #1
	mov ip, r0
_0801500E:
	adds r0, r4, #0
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	bne _08015028
	adds r0, r6, r1
	b _0801502A
	.align 2, 0
_0801501C: .4byte gUnknown_02016078
_08015020: .4byte 0x000131C0
_08015024: .4byte 0xFFFFC000
_08015028:
	adds r0, r5, r1
_0801502A:
	mov r7, r8
	orrs r0, r7
	strh r0, [r3]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #0x1f
	bls _0801500E
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	mov r7, ip
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r2, #0x1f
	bls _08015002
	movs r1, #0xa0
	lsls r1, r1, #1
	mov r0, sl
	bl sub_08001ACC
	ldr r1, _08015088 @ =0xFFFEFA80
	add r1, sl
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	ldr r2, _0801508C @ =0xFFFFEFAA
	add r2, sl
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015088: .4byte 0xFFFEFA80
_0801508C: .4byte 0xFFFFEFAA

	thumb_func_start sub_08015090
sub_08015090: @ 0x08015090
	push {lr}
	ldr r2, _080150E0 @ =gUnknown_02016028
	ldr r0, _080150E4 @ =0x0001ED10
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x22]
	movs r0, #0x3f
	strh r0, [r2, #0x22]
	ldrh r0, [r2, #0x24]
	movs r0, #0x21
	strh r0, [r2, #0x24]
	ldrh r0, [r2, #0x2a]
	movs r0, #0xa0
	strh r0, [r2, #0x2a]
	ldr r1, _080150E8 @ =gScript
	ldr r0, _080150EC @ =0x0000596E
	adds r2, r1, r0
	movs r0, #0x90
	strh r0, [r2]
	ldr r0, _080150F0 @ =0x00005970
	adds r2, r1, r0
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _080150F4 @ =0x00005964
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	bl sub_08016D08
	movs r0, #0
	bl sub_08005900
	pop {r0}
	bx r0
	.align 2, 0
_080150E0: .4byte gUnknown_02016028
_080150E4: .4byte 0x0001ED10
_080150E8: .4byte gScript
_080150EC: .4byte 0x0000596E
_080150F0: .4byte 0x00005970
_080150F4: .4byte 0x00005964

	thumb_func_start sub_080150F8
sub_080150F8: @ 0x080150F8
	push {lr}
	ldr r0, _08015158 @ =gUnknown_02016028
	ldr r1, _0801515C @ =0x0001ED10
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r3]
	ldrh r1, [r0, #0x22]
	movs r1, #0x3f
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0x24]
	movs r1, #0x21
	strh r1, [r0, #0x24]
	ldrh r1, [r0, #0x2a]
	movs r1, #0xa0
	strh r1, [r0, #0x2a]
	ldr r2, _08015160 @ =gScript
	ldr r1, _08015164 @ =0x0000596E
	adds r3, r2, r1
	movs r1, #0x90
	strh r1, [r3]
	ldr r1, _08015168 @ =0x00005970
	adds r3, r2, r1
	movs r1, #0x60
	strh r1, [r3]
	ldr r1, _0801516C @ =0x00005964
	adds r2, r2, r1
	movs r1, #0x78
	strh r1, [r2]
	movs r1, #0x50
	strh r1, [r2, #2]
	ldr r1, _08015170 @ =0x000146D0
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	bl sub_08001ACC
	bl sub_08016D08
	bl sub_08016D54
	movs r0, #0
	bl sub_08005900
	pop {r0}
	bx r0
	.align 2, 0
_08015158: .4byte gUnknown_02016028
_0801515C: .4byte 0x0001ED10
_08015160: .4byte gScript
_08015164: .4byte 0x0000596E
_08015168: .4byte 0x00005970
_0801516C: .4byte 0x00005964
_08015170: .4byte 0x000146D0

	thumb_func_start sub_08015174
sub_08015174: @ 0x08015174
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08015240 @ =gUnknown_02016028
	ldr r0, _08015244 @ =0x0001ED10
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r7, #0x22]
	movs r2, #0
	movs r0, #0x3f
	strh r0, [r7, #0x22]
	ldrh r0, [r7, #0x24]
	movs r0, #1
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x26]
	movs r0, #0xf0
	strh r0, [r7, #0x26]
	ldrh r0, [r7, #0x2a]
	movs r0, #0xa0
	strh r0, [r7, #0x2a]
	ldr r6, _08015248 @ =gScript
	ldr r0, _0801524C @ =0x00005968
	adds r1, r6, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08015250 @ =0x0000596A
	adds r0, r6, r1
	strh r2, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, _08015254 @ =0x0000598C
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080151F6
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r1, _08015258 @ =0x0000595D
	adds r0, r6, r1
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _0801525C @ =0x00005964
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
_080151F6:
	bl sub_08016D08
	ldr r0, _08015260 @ =gUnknown_030040F0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _08015264 @ =0x00013210
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_08001ACC
	ldr r1, _08015268 @ =0x04000048
	ldrh r0, [r7, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r7, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r7, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r7, #0x2a]
	strh r0, [r1]
	movs r0, #0
	bl sub_08005900
	movs r0, #1
	bl sub_08005BB4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015240: .4byte gUnknown_02016028
_08015244: .4byte 0x0001ED10
_08015248: .4byte gScript
_0801524C: .4byte 0x00005968
_08015250: .4byte 0x0000596A
_08015254: .4byte 0x0000598C
_08015258: .4byte 0x0000595D
_0801525C: .4byte 0x00005964
_08015260: .4byte gUnknown_030040F0
_08015264: .4byte 0x00013210
_08015268: .4byte 0x04000048

	thumb_func_start sub_0801526C
sub_0801526C: @ 0x0801526C
	push {lr}
	bl sub_0801480C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015278
sub_08015278: @ 0x08015278
	push {r4, lr}
	ldr r0, _080152AC @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08001ACC
	bl sub_08004FB4
	ldr r4, _080152B0 @ =gUnknown_02000008
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080152AC: .4byte gUnknown_03005314
_080152B0: .4byte gUnknown_02000008

	thumb_func_start sub_080152B4
sub_080152B4: @ 0x080152B4
	push {r4, lr}
	bl sub_08004FB4
	ldr r4, _080152DC @ =gUnknown_02000008
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080152DC: .4byte gUnknown_02000008

	thumb_func_start sub_080152E0
sub_080152E0: @ 0x080152E0
	push {r4, r5, lr}
	ldr r5, _0801533C @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08015340 @ =gUnknown_0200B564
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bhi _08015348
	ldr r0, _08015344 @ =0x0001ED10
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015356
	.align 2, 0
_0801533C: .4byte gUnknown_02016028
_08015340: .4byte gUnknown_0200B564
_08015344: .4byte 0x0001ED10
_08015348:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801535C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
_08015356:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801535C: .4byte 0x0000DFFF

	thumb_func_start sub_08015360
sub_08015360: @ 0x08015360
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801541C @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08001ACC
	bl sub_08004FB4
	ldr r4, _08015420 @ =gUnknown_02000008
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r1, [r4, #0x1d]
	movs r7, #1
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0801540C
	ldr r0, _08015424 @ =gUnknown_02016028
	ldr r1, _08015428 @ =0x0001ED11
	adds r4, r0, r1
	ldrb r2, [r4]
	lsls r1, r2, #0x1f
	ldr r5, _0801542C @ =gScript
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #0x1f
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ands r0, r7
	movs r3, #2
	rsbs r3, r3, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4]
	lsls r1, r3, #0x1e
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1f
	cmp r0, #0
	blt _080153C2
	orrs r1, r6
_080153C2:
	ands r1, r7
	lsls r0, r1, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	orrs r0, r6
	ands r0, r7
	lsls r0, r0, #2
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, _08015430 @ =0x00005968
	adds r4, r5, r2
	ldrh r0, [r4]
	ldr r3, _08015434 @ =0x0000596A
	adds r1, r5, r3
	ldrh r1, [r1]
	adds r3, #2
	adds r2, r5, r3
	bl sub_08018F9C
	ldr r1, _08015438 @ =0x00005962
	adds r0, r5, r1
	ldrh r2, [r0]
	ldr r3, _0801543C @ =0x00005960
	adds r0, r5, r3
	ldrh r3, [r0]
	movs r0, #0x40
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4]
_0801540C:
	ldr r0, _08015420 @ =gUnknown_02000008
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801541C: .4byte gUnknown_03005314
_08015420: .4byte gUnknown_02000008
_08015424: .4byte gUnknown_02016028
_08015428: .4byte 0x0001ED11
_0801542C: .4byte gScript
_08015430: .4byte 0x00005968
_08015434: .4byte 0x0000596A
_08015438: .4byte 0x00005962
_0801543C: .4byte 0x00005960

	thumb_func_start sub_08015440
sub_08015440: @ 0x08015440
	push {r4, r5, r6, lr}
	ldr r6, _080154A0 @ =gUnknown_02016028
	ldrh r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r6, #8]
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r4, _080154A4 @ =gScript
	ldr r0, _080154A8 @ =0x00005968
	adds r5, r4, r0
	ldrh r0, [r5]
	movs r1, #3
	bl sub_080193CC
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _080154AC @ =0x00005962
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r0, _080154B0 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _080154B8
	ldr r1, _080154B4 @ =0x0001ED10
	adds r3, r6, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _080154BA
	.align 2, 0
_080154A0: .4byte gUnknown_02016028
_080154A4: .4byte gScript
_080154A8: .4byte 0x00005968
_080154AC: .4byte 0x00005962
_080154B0: .4byte 0x00005960
_080154B4: .4byte 0x0001ED10
_080154B8:
	movs r0, #1
_080154BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080154C0
sub_080154C0: @ 0x080154C0
	push {r4, r5, r6, lr}
	ldr r6, _08015520 @ =gUnknown_02016028
	ldrh r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r6, #8]
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r4, _08015524 @ =gScript
	ldr r0, _08015528 @ =0x00005968
	adds r5, r4, r0
	ldrh r0, [r5]
	movs r1, #7
	bl sub_080193CC
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _0801552C @ =0x00005962
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r0, _08015530 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _08015538
	ldr r1, _08015534 @ =0x0001ED10
	adds r3, r6, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _0801553A
	.align 2, 0
_08015520: .4byte gUnknown_02016028
_08015524: .4byte gScript
_08015528: .4byte 0x00005968
_0801552C: .4byte 0x00005962
_08015530: .4byte 0x00005960
_08015534: .4byte 0x0001ED10
_08015538:
	movs r0, #1
_0801553A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08015540
sub_08015540: @ 0x08015540
	push {r4, r5, lr}
	ldr r5, _0801559C @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080155A0 @ =gUnknown_0200B564
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_0801952C
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x7f
	bhi _080155A8
	ldr r0, _080155A4 @ =0x0001ED10
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _080155B6
	.align 2, 0
_0801559C: .4byte gUnknown_02016028
_080155A0: .4byte gUnknown_0200B564
_080155A4: .4byte 0x0001ED10
_080155A8:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080155BC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
_080155B6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080155BC: .4byte 0x0000DFFF

	thumb_func_start sub_080155C0
sub_080155C0: @ 0x080155C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _08015634 @ =gUnknown_02016028
	ldrh r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldrh r1, [r7, #8]
	movs r1, #0
	mov r8, r1
	mov r1, sb
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r6, _08015638 @ =gUnknown_0200B564
	ldrh r1, [r6, #0xa]
	ldrh r2, [r6, #0xc]
	adds r0, r6, #0
	bl sub_080195B0
	bl sub_08001960
	bl sub_08005C4C
	subs r5, r6, #2
	ldrh r2, [r5]
	subs r4, r6, #4
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x90
	bl sub_08002E60
	strh r0, [r6, #0xa]
	ldrh r2, [r5]
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x60
	bl sub_08002E60
	strh r0, [r6, #0xc]
	ldr r0, _0801563C @ =0x0001ED10
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrh r0, [r6, #0xa]
	cmp r0, #0x8f
	bhi _08015640
	movs r0, #0
	b _0801565A
	.align 2, 0
_08015634: .4byte gUnknown_02016028
_08015638: .4byte gUnknown_0200B564
_0801563C: .4byte 0x0001ED10
_08015640:
	ldrh r0, [r7, #8]
	mov r1, sb
	orrs r0, r1
	ldrh r1, [r7, #8]
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #8]
	ldrh r1, [r6, #0xa]
	ldrh r2, [r6, #0xc]
	adds r0, r6, #0
	bl sub_080195B0
	movs r0, #1
_0801565A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015668
sub_08015668: @ 0x08015668
	push {r4, r5, lr}
	ldr r5, _080156AC @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080156B0 @ =gUnknown_0200B564
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080195B0
	ldr r0, _080156B4 @ =0x000146D0
	adds r5, r5, r0
	subs r4, #2
	ldrh r0, [r4]
	lsrs r4, r0, #2
	cmp r4, #7
	bls _080156B8
	movs r0, #8
	strb r0, [r5, #1]
	b _080156BA
	.align 2, 0
_080156AC: .4byte gUnknown_02016028
_080156B0: .4byte gUnknown_0200B564
_080156B4: .4byte 0x000146D0
_080156B8:
	strb r4, [r5, #1]
_080156BA:
	cmp r4, #0xf
	bls _080156C2
	movs r0, #8
	b _080156CE
_080156C2:
	cmp r4, #7
	bls _080156CC
	adds r0, r4, #0
	subs r0, #8
	b _080156CE
_080156CC:
	movs r0, #0
_080156CE:
	strb r0, [r5]
	ldr r5, _08015700 @ =gUnknown_02016028
	ldr r0, _08015704 @ =0x000121BA
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _08015708 @ =0x0001ED10
	adds r3, r5, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	cmp r4, #0xf
	bhi _0801570C
	movs r0, #0
	b _08015726
	.align 2, 0
_08015700: .4byte gUnknown_02016028
_08015704: .4byte 0x000121BA
_08015708: .4byte 0x0001ED10
_0801570C:
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	ldr r0, _0801572C @ =gUnknown_0200B564
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0xc]
	bl sub_080195B0
	movs r0, #1
_08015726:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801572C: .4byte gUnknown_0200B564

	thumb_func_start sub_08015730
sub_08015730: @ 0x08015730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _08015794 @ =gUnknown_02016028
	ldrh r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	ldrh r1, [r6, #8]
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r5, _08015798 @ =gUnknown_0200B564
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r5, #2
	ldrh r2, [r0]
	subs r0, r5, #4
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x3c
	bl sub_08002E60
	strh r0, [r5, #4]
	ldr r1, _0801579C @ =0x0001ED10
	adds r4, r6, r1
	ldrb r2, [r4]
	movs r3, #0x40
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _080157A0
	movs r0, #0
	b _080157B8
	.align 2, 0
_08015794: .4byte gUnknown_02016028
_08015798: .4byte gUnknown_0200B564
_0801579C: .4byte 0x0001ED10
_080157A0:
	ldrh r0, [r6, #8]
	mov r1, r8
	orrs r0, r1
	ldrh r1, [r6, #8]
	orrs r0, r7
	strh r0, [r6, #8]
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08019408
	movs r0, #1
_080157B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080157C4
sub_080157C4: @ 0x080157C4
	push {r4, r5, lr}
	ldr r5, _08015820 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08015824 @ =gUnknown_0200B564
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0x3c
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bhi _0801582C
	ldr r0, _08015828 @ =0x0001ED10
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _0801583A
	.align 2, 0
_08015820: .4byte gUnknown_02016028
_08015824: .4byte gUnknown_0200B564
_08015828: .4byte 0x0001ED10
_0801582C:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08015840 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
_0801583A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015840: .4byte 0x0000DFFF

	thumb_func_start sub_08015844
sub_08015844: @ 0x08015844
	push {r4, r5, lr}
	ldr r5, _080158A0 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080158A4 @ =gUnknown_0200B564
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0x3c
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bhi _080158AC
	ldr r0, _080158A8 @ =0x0001ED10
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _080158BA
	.align 2, 0
_080158A0: .4byte gUnknown_02016028
_080158A4: .4byte gUnknown_0200B564
_080158A8: .4byte 0x0001ED10
_080158AC:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080158C0 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
_080158BA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080158C0: .4byte 0x0000DFFF

	thumb_func_start sub_080158C4
sub_080158C4: @ 0x080158C4
	push {r4, lr}
	bl sub_08004FB4
	ldr r4, _080158EC @ =gUnknown_02000008
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080158EC: .4byte gUnknown_02000008

	thumb_func_start sub_080158F0
sub_080158F0: @ 0x080158F0
	push {r4, lr}
	bl sub_08004FB4
	ldr r4, _08015918 @ =gUnknown_02000008
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08015918: .4byte gUnknown_02000008

	thumb_func_start sub_0801591C
sub_0801591C: @ 0x0801591C
	push {r4, r5, lr}
	ldr r5, _08015974 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08015978 @ =gUnknown_0200B564
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0xf0
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08015980
	ldr r0, _0801597C @ =0x0001ED10
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015982
	.align 2, 0
_08015974: .4byte gUnknown_02016028
_08015978: .4byte gUnknown_0200B564
_0801597C: .4byte 0x0001ED10
_08015980:
	movs r0, #1
_08015982:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08015988
sub_08015988: @ 0x08015988
	push {r4, r5, lr}
	bl sub_08004FB4
	ldr r0, _080159D0 @ =gUnknown_02000008
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldr r5, _080159D4 @ =gUnknown_02016028
	ldr r0, _080159D8 @ =0x0001ED11
	adds r3, r5, r0
	ldrb r2, [r3]
	lsls r0, r2, #0x1f
	ldr r4, _080159DC @ =gScript
	ldrb r1, [r4, #0xf]
	lsls r1, r1, #0x1f
	orrs r1, r0
	lsrs r1, r1, #0x1f
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r3, r0, #0x1f
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080159E0
	movs r0, #1
	b _080159E2
	.align 2, 0
_080159D0: .4byte gUnknown_02000008
_080159D4: .4byte gUnknown_02016028
_080159D8: .4byte 0x0001ED11
_080159DC: .4byte gScript
_080159E0:
	adds r0, r3, #0
_080159E2:
	ldr r4, _08015A40 @ =0x0001ED11
	adds r2, r5, r4
	lsls r3, r0, #1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _08015A44 @ =gUnknown_02016028
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r3, #4
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	ldr r4, _08015A48 @ =gScript
	ldr r1, _08015A4C @ =0x00005968
	adds r5, r4, r1
	ldrh r0, [r5]
	ldr r2, _08015A50 @ =0x0000596A
	adds r1, r4, r2
	ldrh r1, [r1]
	ldr r3, _08015A54 @ =0x0000596C
	adds r2, r4, r3
	bl sub_08018F9C
	ldr r1, _08015A58 @ =0x00005962
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r3, _08015A5C @ =0x00005960
	adds r4, r4, r3
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x40
	bl sub_08002E60
	strh r0, [r5]
	ldr r0, _08015A60 @ =gUnknown_02000008
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015A40: .4byte 0x0001ED11
_08015A44: .4byte gUnknown_02016028
_08015A48: .4byte gScript
_08015A4C: .4byte 0x00005968
_08015A50: .4byte 0x0000596A
_08015A54: .4byte 0x0000596C
_08015A58: .4byte 0x00005962
_08015A5C: .4byte 0x00005960
_08015A60: .4byte gUnknown_02000008

	thumb_func_start sub_08015A64
sub_08015A64: @ 0x08015A64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	movs r0, #0
	bl sub_08036BD8
	adds r6, r0, #0
	ldr r3, _08015AA4 @ =gUnknown_02016028
	ldr r1, _08015AA8 @ =0x00011D9C
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08015AAC @ =gUnknown_080C2A90
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08015AB0 @ =gScript
	ldr r2, _08015AB4 @ =0x00005962
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08015AB8
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	b _08015AC6
	.align 2, 0
_08015AA4: .4byte gUnknown_02016028
_08015AA8: .4byte 0x00011D9C
_08015AAC: .4byte gUnknown_080C2A90
_08015AB0: .4byte gScript
_08015AB4: .4byte 0x00005962
_08015AB8:
	ldrh r0, [r3, #8]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r7, #0
	ldrh r2, [r3, #8]
	orrs r1, r0
	strh r1, [r3, #8]
_08015AC6:
	ldr r4, _08015B50 @ =gScript
	ldrb r0, [r4]
	cmp r0, #8
	beq _08015AD0
	b _08015BD0
_08015AD0:
	ldr r1, _08015B54 @ =gUnknown_02000008
	ldrb r0, [r1, #0x1c]
	cmp r0, #4
	bne _08015AE4
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl sub_08016F68
_08015AE4:
	ldr r1, _08015B58 @ =0x00005962
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0x1d
	bls _08015BB2
	ldr r7, _08015B5C @ =0x00009D14
	adds r2, r4, r7
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #9
	strb r0, [r4]
	ldr r4, _08015B60 @ =gUnknown_02016028
	ldr r0, _08015B64 @ =0x000121B8
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08015B68 @ =0x00011D9C
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08015B6C @ =0x000121C0
	adds r0, r4, r2
	strb r1, [r0]
	bl sub_0802691C
	bl sub_0805B7D4
	ldr r1, _08015B70 @ =gUnknown_020047E0
	adds r5, r1, #0
	adds r5, #0x66
	strb r0, [r5]
	bl sub_0805B7D4
	cmp r0, #1
	beq _08015B40
	adds r0, r6, #0
	add r1, sp, #0x10
	bl sub_08036BEC
	add r0, sp, #0x10
	bl sub_08026760
_08015B40:
	ldrb r1, [r5]
	cmp r1, #1
	beq _08015B88
	cmp r1, #1
	bgt _08015B74
	cmp r1, #0
	beq _08015B7A
	b _08015B9C
	.align 2, 0
_08015B50: .4byte gScript
_08015B54: .4byte gUnknown_02000008
_08015B58: .4byte 0x00005962
_08015B5C: .4byte 0x00009D14
_08015B60: .4byte gUnknown_02016028
_08015B64: .4byte 0x000121B8
_08015B68: .4byte 0x00011D9C
_08015B6C: .4byte 0x000121C0
_08015B70: .4byte gUnknown_020047E0
_08015B74:
	cmp r1, #2
	beq _08015B94
	b _08015B9C
_08015B7A:
	ldr r7, _08015B84 @ =0x000121C1
	adds r0, r4, r7
	strb r1, [r0]
	b _08015B9C
	.align 2, 0
_08015B84: .4byte 0x000121C1
_08015B88:
	ldr r0, _08015B90 @ =0x000121C1
	adds r1, r4, r0
	movs r0, #2
	b _08015B9A
	.align 2, 0
_08015B90: .4byte 0x000121C1
_08015B94:
	ldr r2, _08015BC4 @ =0x000121C1
	adds r1, r4, r2
	movs r0, #1
_08015B9A:
	strb r0, [r1]
_08015B9C:
	ldr r0, _08015BC8 @ =gScript
	ldrb r1, [r0, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08015BAE
	ldr r1, _08015BCC @ =gUnknown_020047E0
	movs r0, #3
	strb r0, [r1]
_08015BAE:
	bl sub_08026AF8
_08015BB2:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0
	b _08015CA8
	.align 2, 0
_08015BC4: .4byte 0x000121C1
_08015BC8: .4byte gScript
_08015BCC: .4byte gUnknown_020047E0
_08015BD0:
	ldr r7, _08015CB8 @ =0x00005962
	adds r0, r4, r7
	ldrh r0, [r0]
	subs r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0x50
	bne _08015C0A
	bl sub_08026BCC
	ldr r0, _08015CBC @ =gUnknown_03005314
	ldr r4, _08015CC0 @ =gUnknown_02000028
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldr r0, _08015CC4 @ =gUnknown_02000008
	ldr r1, [r4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0xa
	bl sub_080031F0
_08015C0A:
	ldr r1, _08015CC8 @ =gUnknown_02016028
	ldr r0, _08015CCC @ =0x00011D9F
	adds r6, r1, r0
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #0
	bne _08015C62
	ldr r1, _08015CD0 @ =0x00011D9E
	adds r5, r4, r1
	ldrb r3, [r5]
	mov r2, r8
	ldrb r2, [r2, #3]
	cmp r3, r2
	bhs _08015C62
	ldr r7, _08015CD4 @ =0x000121B8
	adds r2, r4, r7
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08015CD8 @ =0x00011D9C
	adds r2, r4, r0
	ldrb r1, [r2]
	adds r7, #8
	adds r0, r4, r7
	strb r1, [r0]
	ldr r1, _08015CDC @ =0x000121C2
	adds r0, r4, r1
	strb r3, [r0]
	adds r0, r3, #1
	strb r0, [r5]
	ldr r3, _08015CE0 @ =gUnknown_080C2A9C
	ldrb r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r6]
_08015C62:
	ldrh r0, [r4]
	movs r1, #0
	ldr r0, _08015CE4 @ =0x00001E41
	strh r0, [r4]
	ldrh r0, [r4, #2]
	ldr r0, _08015CE8 @ =0x0000070C
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	strh r1, [r4, #4]
	bl sub_08004FB4
	ldr r1, _08015CC4 @ =gUnknown_02000008
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	bne _08015C8C
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
_08015C8C:
	bl sub_08001960
	bl sub_08005C4C
	mov r2, sb
	cmp r2, #0x3c
	bne _08015C9E
	bl sub_0800882C
_08015C9E:
	movs r0, #0
	mov r7, sb
	cmp r7, #0x5a
	bls _08015CA8
	movs r0, #1
_08015CA8:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015CB8: .4byte 0x00005962
_08015CBC: .4byte gUnknown_03005314
_08015CC0: .4byte gUnknown_02000028
_08015CC4: .4byte gUnknown_02000008
_08015CC8: .4byte gUnknown_02016028
_08015CCC: .4byte 0x00011D9F
_08015CD0: .4byte 0x00011D9E
_08015CD4: .4byte 0x000121B8
_08015CD8: .4byte 0x00011D9C
_08015CDC: .4byte 0x000121C2
_08015CE0: .4byte gUnknown_080C2A9C
_08015CE4: .4byte 0x00001E41
_08015CE8: .4byte 0x0000070C

	thumb_func_start sub_08015CEC
sub_08015CEC: @ 0x08015CEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r5, _08015DCC @ =gUnknown_02016028
	ldr r0, _08015DD0 @ =0x00011D9C
	adds r7, r5, r0
	ldrb r0, [r7]
	lsls r0, r0, #2
	ldr r1, _08015DD4 @ =gUnknown_080C2A90
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08015DD8 @ =gScript
	ldr r1, _08015DDC @ =0x00005962
	adds r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #0
	beq _08015D1E
	ldrh r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r5, #8]
	orrs r1, r0
	strh r1, [r5, #8]
_08015D1E:
	ldrh r0, [r3]
	cmp r0, #0x50
	bne _08015D4C
	bl sub_08026BCC
	ldr r0, _08015DE0 @ =gUnknown_03005314
	ldr r4, _08015DE4 @ =gUnknown_02000028
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldr r0, _08015DE8 @ =gUnknown_02000008
	ldr r1, [r4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0xa
	bl sub_080031F0
_08015D4C:
	ldr r0, _08015DEC @ =0x00011D9F
	adds r6, r5, r0
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08015D9C
	ldr r1, _08015DF0 @ =0x00011D9E
	adds r4, r5, r1
	ldrb r3, [r4]
	mov r2, r8
	ldrb r2, [r2, #3]
	cmp r3, r2
	bhs _08015D9C
	ldr r0, _08015DF4 @ =0x000121B8
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7]
	ldr r2, _08015DF8 @ =0x000121C0
	adds r0, r5, r2
	strb r1, [r0]
	ldr r1, _08015DFC @ =0x000121C2
	adds r0, r5, r1
	strb r3, [r0]
	adds r0, r3, #1
	strb r0, [r4]
	ldr r2, _08015E00 @ =gUnknown_080C2A9C
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r4, [r4]
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6]
_08015D9C:
	ldr r1, _08015DCC @ =gUnknown_02016028
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _08015E04 @ =0x00001E41
	strh r0, [r1]
	ldrh r0, [r1, #2]
	ldr r0, _08015E08 @ =0x0000070C
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	bl sub_08004FB4
	ldr r1, _08015DE8 @ =gUnknown_02000008
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	bne _08015E0C
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	b _08015E18
	.align 2, 0
_08015DCC: .4byte gUnknown_02016028
_08015DD0: .4byte 0x00011D9C
_08015DD4: .4byte gUnknown_080C2A90
_08015DD8: .4byte gScript
_08015DDC: .4byte 0x00005962
_08015DE0: .4byte gUnknown_03005314
_08015DE4: .4byte gUnknown_02000028
_08015DE8: .4byte gUnknown_02000008
_08015DEC: .4byte 0x00011D9F
_08015DF0: .4byte 0x00011D9E
_08015DF4: .4byte 0x000121B8
_08015DF8: .4byte 0x000121C0
_08015DFC: .4byte 0x000121C2
_08015E00: .4byte gUnknown_080C2A9C
_08015E04: .4byte 0x00001E41
_08015E08: .4byte 0x0000070C
_08015E0C:
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl sub_08016F68
_08015E18:
	bl sub_08001960
	bl sub_08005C4C
	ldr r0, _08015E48 @ =gScript
	ldr r2, _08015E4C @ =0x00005962
	adds r4, r0, r2
	ldrh r0, [r4]
	cmp r0, #0x3c
	bne _08015E30
	bl sub_0800882C
_08015E30:
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #0x5a
	bls _08015E3A
	movs r1, #1
_08015E3A:
	adds r0, r1, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015E48: .4byte gScript
_08015E4C: .4byte 0x00005962

	thumb_func_start sub_08015E50
sub_08015E50: @ 0x08015E50
	push {r4, r5, r6, lr}
	ldr r6, _08015EB0 @ =gUnknown_02016028
	ldrh r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r6, #8]
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r4, _08015EB4 @ =gScript
	ldr r0, _08015EB8 @ =0x00005968
	adds r5, r4, r0
	ldrh r0, [r5]
	bl sub_08019078
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _08015EBC @ =0x00005962
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r0, _08015EC0 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bhi _08015EC8
	ldr r1, _08015EC4 @ =0x0001ED10
	adds r3, r6, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015ECA
	.align 2, 0
_08015EB0: .4byte gUnknown_02016028
_08015EB4: .4byte gScript
_08015EB8: .4byte 0x00005968
_08015EBC: .4byte 0x00005962
_08015EC0: .4byte 0x00005960
_08015EC4: .4byte 0x0001ED10
_08015EC8:
	movs r0, #1
_08015ECA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08015ED0
sub_08015ED0: @ 0x08015ED0
	push {r4, r5, r6, r7, lr}
	ldr r7, _08015F30 @ =gUnknown_02016028
	ldrh r1, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r7, #8]
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r4, _08015F34 @ =gScript
	ldr r0, _08015F38 @ =0x00005968
	adds r6, r4, r0
	ldrh r0, [r6]
	movs r1, #3
	bl sub_080193CC
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _08015F3C @ =0x00005962
	adds r5, r4, r2
	ldrh r2, [r5]
	ldr r0, _08015F40 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r6]
	ldrh r0, [r5]
	ldrh r4, [r4]
	cmp r0, r4
	bhi _08015F48
	ldr r2, _08015F44 @ =0x0001ED10
	adds r3, r7, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015F4A
	.align 2, 0
_08015F30: .4byte gUnknown_02016028
_08015F34: .4byte gScript
_08015F38: .4byte 0x00005968
_08015F3C: .4byte 0x00005962
_08015F40: .4byte 0x00005960
_08015F44: .4byte 0x0001ED10
_08015F48:
	movs r0, #1
_08015F4A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08015F50
sub_08015F50: @ 0x08015F50
	push {r4, r5, r6, lr}
	ldr r6, _08015FB0 @ =gUnknown_02016028
	ldrh r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r6, #8]
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r4, _08015FB4 @ =gScript
	ldr r0, _08015FB8 @ =0x00005968
	adds r5, r4, r0
	ldrh r0, [r5]
	movs r1, #7
	bl sub_080193CC
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _08015FBC @ =0x00005962
	adds r0, r4, r1
	ldrh r2, [r0]
	ldr r0, _08015FC0 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _08015FC8
	ldr r1, _08015FC4 @ =0x0001ED10
	adds r3, r6, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015FCA
	.align 2, 0
_08015FB0: .4byte gUnknown_02016028
_08015FB4: .4byte gScript
_08015FB8: .4byte 0x00005968
_08015FBC: .4byte 0x00005962
_08015FC0: .4byte 0x00005960
_08015FC4: .4byte 0x0001ED10
_08015FC8:
	movs r0, #1
_08015FCA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08015FD0
sub_08015FD0: @ 0x08015FD0
	push {r4, r5, lr}
	ldr r4, _08016028 @ =gUnknown_02016028
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r5, _0801602C @ =gUnknown_0200B564
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_0801952C
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r5, #2
	ldrh r2, [r0]
	subs r0, r5, #4
	ldrh r3, [r0]
	movs r0, #0x5a
	movs r1, #0
	bl sub_08002E60
	strh r0, [r5, #4]
	ldr r1, _08016030 @ =0x0001ED10
	adds r4, r4, r1
	ldrb r2, [r4]
	movs r3, #0x40
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016034
	movs r0, #0
	b _08016036
	.align 2, 0
_08016028: .4byte gUnknown_02016028
_0801602C: .4byte gUnknown_0200B564
_08016030: .4byte 0x0001ED10
_08016034:
	movs r0, #1
_08016036:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801603C
sub_0801603C: @ 0x0801603C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _080160C0 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	movs r2, #0
	mov sb, r2
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080160C4 @ =gScript
	ldr r0, _080160C8 @ =0x00005968
	adds r7, r4, r0
	ldrh r0, [r7]
	ldr r1, _080160CC @ =0x0000595E
	adds r6, r4, r1
	ldrb r1, [r6]
	bl sub_080190B8
	bl sub_08001960
	bl sub_08005C4C
	movs r1, #0xb4
	lsls r1, r1, #1
	ldr r2, _080160D0 @ =0x00005962
	adds r2, r2, r4
	mov r8, r2
	ldrh r2, [r2]
	ldr r0, _080160D4 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	bl sub_08002E60
	strh r0, [r7]
	lsls r0, r0, #0x10
	ldr r1, _080160D8 @ =0x01670000
	cmp r0, r1
	bls _080160E4
	ldrb r0, [r6]
	cmp r0, #3
	bne _080160E0
	ldr r1, _080160DC @ =0x0001ED10
	adds r3, r5, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #7
	strb r0, [r6]
	mov r2, sb
	strh r2, [r7]
	mov r0, r8
	strh r2, [r0]
	b _080160F6
	.align 2, 0
_080160C0: .4byte gUnknown_02016028
_080160C4: .4byte gScript
_080160C8: .4byte 0x00005968
_080160CC: .4byte 0x0000595E
_080160D0: .4byte 0x00005962
_080160D4: .4byte 0x00005960
_080160D8: .4byte 0x01670000
_080160DC: .4byte 0x0001ED10
_080160E0:
	movs r0, #1
	b _080160F8
_080160E4:
	ldr r1, _08016104 @ =0x0001ED10
	adds r3, r5, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080160F6:
	movs r0, #0
_080160F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016104: .4byte 0x0001ED10

	thumb_func_start sub_08016108
sub_08016108: @ 0x08016108
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08016174 @ =gUnknown_02016028
	ldrh r1, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r7, #8]
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r4, _08016178 @ =gScript
	ldr r0, _0801617C @ =0x00005968
	adds r6, r4, r0
	ldrh r0, [r6]
	ldr r1, _08016180 @ =0x0000595E
	adds r1, r1, r4
	mov r8, r1
	ldrb r1, [r1]
	bl sub_08019274
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _08016184 @ =0x00005962
	adds r5, r4, r2
	ldrh r2, [r5]
	ldr r0, _08016188 @ =0x00005960
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #3
	strh r1, [r6]
	ldrh r1, [r5]
	ldrh r2, [r4]
	cmp r1, r2
	blo _0801618C
	movs r0, #1
	b _080161C6
	.align 2, 0
_08016174: .4byte gUnknown_02016028
_08016178: .4byte gScript
_0801617C: .4byte 0x00005968
_08016180: .4byte 0x0000595E
_08016184: .4byte 0x00005962
_08016188: .4byte 0x00005960
_0801618C:
	ldrh r0, [r4]
	lsrs r0, r0, #1
	cmp r1, r0
	beq _080161AC
	ldr r0, _080161A8 @ =0x0001ED10
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	b _080161C4
	.align 2, 0
_080161A8: .4byte 0x0001ED10
_080161AC:
	ldr r1, _080161D0 @ =0x0001ED10
	adds r3, r7, r1
	ldrb r2, [r3]
	movs r4, #1
	movs r1, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r2, r8
	strb r4, [r2]
_080161C4:
	movs r0, #0
_080161C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080161D0: .4byte 0x0001ED10

	thumb_func_start sub_080161D4
sub_080161D4: @ 0x080161D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, _0801625C @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	movs r3, #0
	mov sl, r3
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08016260 @ =gScript
	ldr r0, _08016264 @ =0x00005968
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0]
	ldr r1, _08016268 @ =0x0000595E
	adds r7, r4, r1
	ldrb r1, [r7]
	bl sub_08019320
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _0801626C @ =0x00005962
	adds r2, r2, r4
	mov sb, r2
	ldrh r2, [r2]
	ldr r3, _08016270 @ =0x00005960
	adds r4, r4, r3
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x50
	bl sub_08002E60
	mov r1, r8
	strh r0, [r1]
	ldr r2, _08016274 @ =0x0001ED10
	adds r5, r5, r2
	ldrb r2, [r5]
	movs r4, #1
	movs r3, #1
	mov ip, r3
	mov r3, ip
	lsls r1, r3, #6
	movs r6, #0x41
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r1
	strb r3, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4f
	bls _08016298
	ldrb r0, [r7]
	cmp r0, #3
	beq _08016278
	movs r0, #1
	b _0801629A
	.align 2, 0
_0801625C: .4byte gUnknown_02016028
_08016260: .4byte gScript
_08016264: .4byte 0x00005968
_08016268: .4byte 0x0000595E
_0801626C: .4byte 0x00005962
_08016270: .4byte 0x00005960
_08016274: .4byte 0x0001ED10
_08016278:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	orrs r0, r4
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #6
	ands r3, r6
	orrs r3, r0
	strb r3, [r5]
	movs r0, #7
	strb r0, [r7]
	mov r3, sl
	mov r2, r8
	strh r3, [r2]
	mov r0, sb
	strh r3, [r0]
_08016298:
	movs r0, #0
_0801629A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080162A8
sub_080162A8: @ 0x080162A8
	push {r4, lr}
	ldr r4, _0801630C @ =gUnknown_02016028
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r0, _08016310 @ =gScript
	ldr r1, _08016314 @ =0x00005962
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08016318 @ =gUnknown_080C211A
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08016324
	ldr r3, _0801631C @ =0x0000C001
	adds r1, r4, #0
	adds r1, #0x50
	adds r2, r0, #0
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #2
	adds r1, r0, r1
	lsrs r2, r2, #4
	lsls r2, r2, #7
	adds r1, r1, r2
	strh r3, [r1]
	strh r3, [r1, #2]
	adds r0, r1, #0
	adds r0, #0x40
	strh r3, [r0]
	adds r1, #0x42
	strh r3, [r1]
	ldr r2, _08016320 @ =0x00002C90
	adds r1, r4, r2
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0
	b _08016326
	.align 2, 0
_0801630C: .4byte gUnknown_02016028
_08016310: .4byte gScript
_08016314: .4byte 0x00005962
_08016318: .4byte gUnknown_080C211A
_0801631C: .4byte 0x0000C001
_08016320: .4byte 0x00002C90
_08016324:
	movs r0, #1
_08016326:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801632C
sub_0801632C: @ 0x0801632C
	push {r4, r5, r6, lr}
	ldr r5, _08016364 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r0, _08016368 @ =gScript
	ldr r1, _0801636C @ =0x00005962
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08016370 @ =gUnknown_080C21B1
	adds r3, r1, r0
	ldr r0, _08016374 @ =gUnknown_080C21FD
	adds r6, r1, r0
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0801635E
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _08016378
_0801635E:
	movs r0, #1
	b _080163D4
	.align 2, 0
_08016364: .4byte gUnknown_02016028
_08016368: .4byte gScript
_0801636C: .4byte 0x00005962
_08016370: .4byte gUnknown_080C21B1
_08016374: .4byte gUnknown_080C21FD
_08016378:
	ldr r2, _080163DC @ =0x0000C001
	adds r4, r5, #0
	adds r4, #0x50
	ldrb r1, [r3]
	movs r3, #0xf
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #2
	adds r4, r0, r4
	lsrs r1, r1, #4
	lsls r1, r1, #7
	adds r4, r4, r1
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r0, r4, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r4, r5, #0
	adds r4, #0x50
	ldrb r1, [r6]
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #2
	adds r4, r0, r4
	lsrs r1, r1, #4
	lsls r1, r1, #7
	adds r4, r4, r1
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r0, r4, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r2, _080163E0 @ =0x00002C90
	adds r1, r5, r2
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0
_080163D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080163DC: .4byte 0x0000C001
_080163E0: .4byte 0x00002C90

	thumb_func_start sub_080163E4
sub_080163E4: @ 0x080163E4
	push {r4, r5, lr}
	ldr r5, _08016448 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _0801644C @ =gUnknown_0200B564
	ldrh r1, [r4, #4]
	ldrh r2, [r4, #8]
	adds r0, r4, #0
	bl sub_0801965C
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0xf0
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #8]
	adds r1, r1, r2
	movs r2, #0xff
	ands r1, r2
	strh r1, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016454
	ldr r0, _08016450 @ =0x0001ED10
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08016456
	.align 2, 0
_08016448: .4byte gUnknown_02016028
_0801644C: .4byte gUnknown_0200B564
_08016450: .4byte 0x0001ED10
_08016454:
	movs r0, #1
_08016456:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801645C
sub_0801645C: @ 0x0801645C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _080164E8 @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	movs r2, #0
	mov sb, r2
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080164EC @ =gScript
	ldr r0, _080164F0 @ =0x00005968
	adds r7, r4, r0
	ldrh r2, [r7]
	movs r1, #0
	subs r0, #0xa
	adds r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #1
	bne _08016492
	movs r1, #1
_08016492:
	adds r0, r2, #0
	bl sub_080198A4
	bl sub_08001960
	bl sub_08005C4C
	ldr r1, _080164F4 @ =0x00005962
	adds r1, r1, r4
	mov r8, r1
	ldrh r2, [r1]
	ldr r1, _080164F8 @ =0x00005960
	adds r0, r4, r1
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x78
	bl sub_08002E60
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08016504
	ldrb r0, [r6]
	cmp r0, #5
	bne _08016500
	ldr r2, _080164FC @ =0x0001ED10
	adds r3, r5, r2
	ldrb r2, [r3]
	movs r4, #1
	movs r1, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	strb r4, [r6]
	mov r0, sb
	strh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	b _08016516
	.align 2, 0
_080164E8: .4byte gUnknown_02016028
_080164EC: .4byte gScript
_080164F0: .4byte 0x00005968
_080164F4: .4byte 0x00005962
_080164F8: .4byte 0x00005960
_080164FC: .4byte 0x0001ED10
_08016500:
	movs r0, #1
	b _08016518
_08016504:
	ldr r2, _08016524 @ =0x0001ED10
	adds r3, r5, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_08016516:
	movs r0, #0
_08016518:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016524: .4byte 0x0001ED10

	thumb_func_start sub_08016528
sub_08016528: @ 0x08016528
	push {r4, r5, r6, r7, lr}
	ldr r4, _08016554 @ =gUnknown_02016028
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r2, _08016558 @ =gScript
	ldr r3, _0801655C @ =0x0000595E
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _08016594
	cmp r0, #1
	bgt _08016560
	cmp r0, #0
	beq _08016566
	b _080165CC
	.align 2, 0
_08016554: .4byte gUnknown_02016028
_08016558: .4byte gScript
_0801655C: .4byte 0x0000595E
_08016560:
	cmp r0, #2
	beq _080165B0
	b _080165CC
_08016566:
	ldr r1, _0801658C @ =0x00005968
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r3, #0x78
	subs r3, r3, r0
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsls r3, r3, #0x18
	orrs r3, r0
	ldr r2, _08016590 @ =0x00013210
	adds r0, r4, r2
	movs r1, #0xa0
	lsls r1, r1, #1
	lsrs r2, r3, #0x10
	orrs r2, r3
	bl sub_08001B54
	b _080165CC
	.align 2, 0
_0801658C: .4byte 0x00005968
_08016590: .4byte 0x00013210
_08016594:
	ldr r3, _080165AC @ =0x00005964
	adds r0, r2, r3
	adds r3, #4
	adds r1, r2, r3
	ldrh r1, [r1]
	adds r3, #4
	adds r2, r2, r3
	ldrh r2, [r2]
	bl sub_080199C8
	b _080165CC
	.align 2, 0
_080165AC: .4byte 0x00005964
_080165B0:
	ldr r1, _080165EC @ =0x00005968
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r0, #8
	orrs r1, r0
	ldr r2, _080165F0 @ =0x000132B0
	adds r0, r4, r2
	strh r1, [r0]
_080165CC:
	bl sub_08001960
	bl sub_08005C4C
	ldr r5, _080165F4 @ =gScript
	ldr r3, _080165F8 @ =0x0000595E
	adds r6, r5, r3
	ldrb r4, [r6]
	cmp r4, #1
	beq _08016650
	cmp r4, #1
	bgt _080165FC
	cmp r4, #0
	beq _08016602
	b _080166B4
	.align 2, 0
_080165EC: .4byte 0x00005968
_080165F0: .4byte 0x000132B0
_080165F4: .4byte gScript
_080165F8: .4byte 0x0000595E
_080165FC:
	cmp r4, #2
	beq _0801668C
	b _080166B4
_08016602:
	ldr r0, _08016640 @ =0x00005962
	adds r7, r5, r0
	ldrh r2, [r7]
	movs r0, #0x78
	movs r1, #0x20
	movs r3, #0x2c
	bl sub_08002E60
	ldr r2, _08016644 @ =0x00005968
	adds r1, r5, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _080166B4
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	movs r0, #0x20
	strh r0, [r1]
	ldr r3, _08016648 @ =0x0000596C
	adds r1, r5, r3
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _0801664C @ =0x0000596A
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
	strh r4, [r7]
	b _080166B4
	.align 2, 0
_08016640: .4byte 0x00005962
_08016644: .4byte 0x00005968
_08016648: .4byte 0x0000596C
_0801664C: .4byte 0x0000596A
_08016650:
	ldr r2, _08016680 @ =0x0000596C
	adds r1, r5, r2
	ldr r3, _08016684 @ =0x0000596A
	adds r0, r5, r3
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x7f
	bls _080166B4
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	subs r3, #2
	adds r1, r5, r3
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, _08016688 @ =0x00005962
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	b _080166B4
	.align 2, 0
_08016680: .4byte 0x0000596C
_08016684: .4byte 0x0000596A
_08016688: .4byte 0x00005962
_0801668C:
	ldr r1, _080166AC @ =0x00005962
	adds r0, r5, r1
	ldrh r2, [r0]
	movs r0, #0x78
	movs r1, #0
	movs r3, #0x3c
	bl sub_08002E60
	ldr r2, _080166B0 @ =0x00005968
	adds r1, r5, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080166B4
	movs r0, #1
	b _080166CA
	.align 2, 0
_080166AC: .4byte 0x00005962
_080166B0: .4byte 0x00005968
_080166B4:
	ldr r1, _080166D0 @ =gUnknown_02016028
	ldr r3, _080166D4 @ =0x0001ED10
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r3, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0
_080166CA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080166D0: .4byte gUnknown_02016028
_080166D4: .4byte 0x0001ED10

	thumb_func_start sub_080166D8
sub_080166D8: @ 0x080166D8
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0801670C @ =gUnknown_02016028
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	movs r4, #0
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_08004FB4
	ldr r3, _08016710 @ =0x0000C001
	mov r0, sp
	strh r4, [r0]
	ldr r2, _08016714 @ =gScript
	ldr r5, _08016718 @ =0x0000595E
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r5, #4
	b _0801675A
	.align 2, 0
_0801670C: .4byte gUnknown_02016028
_08016710: .4byte 0x0000C001
_08016714: .4byte gScript
_08016718: .4byte 0x0000595E
_0801671C:
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0xf
	beq _08016740
	ldr r1, _08016794 @ =gUnknown_02016078
	lsls r0, r0, #2
	adds r1, r0, r1
	lsrs r0, r2, #4
	lsls r0, r0, #7
	adds r1, r1, r0
	strh r3, [r1]
	strh r3, [r1, #2]
	adds r0, r1, #0
	adds r0, #0x40
	strh r3, [r0]
	adds r1, #0x42
	strh r3, [r1]
_08016740:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08016772
	ldr r2, _08016798 @ =gScript
	ldr r1, _0801679C @ =0x0000595E
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r5, _080167A0 @ =0x00005962
_0801675A:
	adds r2, r2, r5
	adds r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r1, _080167A4 @ =gUnknown_080C2248
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0801671C
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08016772:
	ldr r0, _080167A8 @ =gUnknown_02016028
	ldr r1, _080167AC @ =0x00002C90
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	bl sub_08001960
	bl sub_08005C4C
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08016794: .4byte gUnknown_02016078
_08016798: .4byte gScript
_0801679C: .4byte 0x0000595E
_080167A0: .4byte 0x00005962
_080167A4: .4byte gUnknown_080C2248
_080167A8: .4byte gUnknown_02016028
_080167AC: .4byte 0x00002C90

	thumb_func_start sub_080167B0
sub_080167B0: @ 0x080167B0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08016844 @ =gUnknown_02016028
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	movs r5, #0
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r0, _08016848 @ =0x00013210
	adds r4, r4, r0
	ldr r2, _0801684C @ =gScript
	ldr r1, _08016850 @ =0x00005962
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
	mov r0, sp
	strh r5, [r0]
	ldr r0, _08016854 @ =0x00009D10
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08016812
	movs r3, #0
	mov r5, sp
	movs r6, #1
_080167F4:
	adds r2, r4, r3
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08016808
	cmp r1, #8
	beq _08016808
	adds r0, #1
	strb r0, [r2]
	strh r6, [r5]
_08016808:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x61
	bls _080167F4
_08016812:
	ldr r1, _08016844 @ =gUnknown_02016028
	ldr r2, _08016858 @ =0x000121BA
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	bl sub_08001960
	bl sub_08005C4C
	movs r1, #0
	ldr r0, _0801684C @ =gScript
	ldr r2, _08016850 @ =0x00005962
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0x61
	bls _08016838
	movs r1, #1
_08016838:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08016844: .4byte gUnknown_02016028
_08016848: .4byte 0x00013210
_0801684C: .4byte gScript
_08016850: .4byte 0x00005962
_08016854: .4byte 0x00009D10
_08016858: .4byte 0x000121BA

	thumb_func_start sub_0801685C
sub_0801685C: @ 0x0801685C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080168C4 @ =gUnknown_02016028
	ldrh r1, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r7, #8]
	orrs r0, r1
	strh r0, [r7, #8]
	bl sub_08004FB4
	ldr r4, _080168C8 @ =gUnknown_0200B564
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080195B0
	bl sub_08001960
	bl sub_08005C4C
	subs r6, r4, #2
	ldrh r2, [r6]
	subs r5, r4, #4
	ldrh r3, [r5]
	movs r0, #0x90
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #0xa]
	ldrh r2, [r6]
	ldrh r3, [r5]
	movs r0, #0x60
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080168D0
	ldr r0, _080168CC @ =0x0001ED10
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _080168D2
	.align 2, 0
_080168C4: .4byte gUnknown_02016028
_080168C8: .4byte gUnknown_0200B564
_080168CC: .4byte 0x0001ED10
_080168D0:
	movs r0, #1
_080168D2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080168D8
sub_080168D8: @ 0x080168D8
	push {r4, r5, lr}
	ldr r5, _0801691C @ =gUnknown_02016028
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08016920 @ =gUnknown_0200B564
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080195B0
	ldr r0, _08016924 @ =0x000146D0
	adds r5, r5, r0
	subs r4, #2
	ldrh r0, [r4]
	lsrs r4, r0, #2
	cmp r4, #7
	bls _08016928
	movs r0, #8
	strb r0, [r5, #1]
	b _0801692A
	.align 2, 0
_0801691C: .4byte gUnknown_02016028
_08016920: .4byte gUnknown_0200B564
_08016924: .4byte 0x000146D0
_08016928:
	strb r4, [r5, #1]
_0801692A:
	cmp r4, #0xf
	bls _08016932
	movs r0, #8
	b _0801693E
_08016932:
	cmp r4, #7
	bls _0801693C
	adds r0, r4, #0
	subs r0, #8
	b _0801693E
_0801693C:
	movs r0, #0
_0801693E:
	strb r0, [r5]
	ldr r5, _08016970 @ =gUnknown_02016028
	ldr r1, _08016974 @ =0x000121BA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_08001960
	bl sub_08005C4C
	cmp r4, #0xf
	bhi _0801697C
	ldr r2, _08016978 @ =0x0001ED10
	adds r3, r5, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _0801697E
	.align 2, 0
_08016970: .4byte gUnknown_02016028
_08016974: .4byte 0x000121BA
_08016978: .4byte 0x0001ED10
_0801697C:
	movs r0, #1
_0801697E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08016984
sub_08016984: @ 0x08016984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080169E8 @ =gUnknown_02016028
	ldrh r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	ldrh r1, [r6, #8]
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strh r0, [r6, #8]
	bl sub_08004FB4
	ldr r5, _080169EC @ =gUnknown_0200B564
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r5, #2
	ldrh r2, [r0]
	subs r0, r5, #4
	ldrh r3, [r0]
	movs r0, #0x78
	movs r1, #0x1e
	bl sub_08002E60
	strh r0, [r5, #4]
	ldr r1, _080169F0 @ =0x0001ED10
	adds r4, r6, r1
	ldrb r2, [r4]
	movs r3, #0x40
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _080169F4
	movs r0, #0
	b _08016A0C
	.align 2, 0
_080169E8: .4byte gUnknown_02016028
_080169EC: .4byte gUnknown_0200B564
_080169F0: .4byte 0x0001ED10
_080169F4:
	ldrh r0, [r6, #8]
	mov r1, r8
	orrs r0, r1
	ldrh r1, [r6, #8]
	orrs r0, r7
	strh r0, [r6, #8]
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08019408
	movs r0, #1
_08016A0C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016A18
sub_08016A18: @ 0x08016A18
	push {lr}
	bl sub_08015A64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016A28
sub_08016A28: @ 0x08016A28
	push {lr}
	bl sub_08016E44
	ldr r0, _08016A40 @ =gUnknown_02016028
	ldr r1, _08016A44 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016A40: .4byte gUnknown_02016028
_08016A44: .4byte 0x000121BB

	thumb_func_start sub_08016A48
sub_08016A48: @ 0x08016A48
	ldr r0, _08016A58 @ =gUnknown_02016028
	ldr r1, _08016A5C @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08016A58: .4byte gUnknown_02016028
_08016A5C: .4byte 0x000121BB

	thumb_func_start sub_08016A60
sub_08016A60: @ 0x08016A60
	push {lr}
	bl sub_08016E44
	ldr r0, _08016A78 @ =gUnknown_02016028
	ldr r1, _08016A7C @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016A78: .4byte gUnknown_02016028
_08016A7C: .4byte 0x000121BB

	thumb_func_start sub_08016A80
sub_08016A80: @ 0x08016A80
	push {lr}
	bl sub_08016E44
	ldr r0, _08016A98 @ =gUnknown_02016028
	ldr r1, _08016A9C @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016A98: .4byte gUnknown_02016028
_08016A9C: .4byte 0x000121BB

	thumb_func_start nullsub_65
nullsub_65: @ 0x08016AA0
	bx lr
	.align 2, 0

	thumb_func_start nullsub_66
nullsub_66: @ 0x08016AA4
	bx lr
	.align 2, 0

	thumb_func_start sub_08016AA8
sub_08016AA8: @ 0x08016AA8
	push {lr}
	ldr r0, _08016AC8 @ =gScript
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08016AD0
	ldr r1, _08016ACC @ =gUnknown_02016028
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	b _08016ADC
	.align 2, 0
_08016AC8: .4byte gScript
_08016ACC: .4byte gUnknown_02016028
_08016AD0:
	ldr r0, _08016AE0 @ =gUnknown_02016078
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
_08016ADC:
	pop {r0}
	bx r0
	.align 2, 0
_08016AE0: .4byte gUnknown_02016078

	thumb_func_start sub_08016AE4
sub_08016AE4: @ 0x08016AE4
	ldr r0, _08016AF0 @ =gScript
	ldrb r1, [r0, #2]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
_08016AF0: .4byte gScript

	thumb_func_start sub_08016AF4
sub_08016AF4: @ 0x08016AF4
	push {lr}
	bl sub_08016E44
	ldr r0, _08016B0C @ =gUnknown_02016028
	ldr r1, _08016B10 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016B0C: .4byte gUnknown_02016028
_08016B10: .4byte 0x000121BB

	thumb_func_start sub_08016B14
sub_08016B14: @ 0x08016B14
	push {lr}
	bl sub_08016E44
	ldr r0, _08016B2C @ =gUnknown_02016028
	ldr r1, _08016B30 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016B2C: .4byte gUnknown_02016028
_08016B30: .4byte 0x000121BB

	thumb_func_start sub_08016B34
sub_08016B34: @ 0x08016B34
	push {lr}
	bl sub_08016E64
	ldr r0, _08016B4C @ =gUnknown_02016028
	ldr r1, _08016B50 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016B4C: .4byte gUnknown_02016028
_08016B50: .4byte 0x000121BB

	thumb_func_start sub_08016B54
sub_08016B54: @ 0x08016B54
	ldr r0, _08016B64 @ =gUnknown_02016028
	ldr r1, _08016B68 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08016B64: .4byte gUnknown_02016028
_08016B68: .4byte 0x000121BB

	thumb_func_start sub_08016B6C
sub_08016B6C: @ 0x08016B6C
	push {lr}
	ldr r2, _08016BA4 @ =gUnknown_02016028
	ldrh r0, [r2, #0x24]
	movs r0, #0
	strh r0, [r2, #0x24]
	ldr r0, _08016BA8 @ =0x000121BB
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08016BAC @ =gScript
	ldrb r1, [r2, #2]
	lsls r0, r1, #0x19
	cmp r0, #0
	bge _08016BA0
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, _08016BB0 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #7
	bne _08016BA0
	bl sub_08005C14
_08016BA0:
	pop {r0}
	bx r0
	.align 2, 0
_08016BA4: .4byte gUnknown_02016028
_08016BA8: .4byte 0x000121BB
_08016BAC: .4byte gScript
_08016BB0: .4byte gUnknown_020051E4

	thumb_func_start nullsub_67
nullsub_67: @ 0x08016BB4
	bx lr
	.align 2, 0

	thumb_func_start sub_08016BB8
sub_08016BB8: @ 0x08016BB8
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016BC4
sub_08016BC4: @ 0x08016BC4
	push {lr}
	bl sub_08016E64
	ldr r0, _08016BDC @ =gUnknown_02016028
	ldr r1, _08016BE0 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016BDC: .4byte gUnknown_02016028
_08016BE0: .4byte 0x000121BB

	thumb_func_start sub_08016BE4
sub_08016BE4: @ 0x08016BE4
	push {lr}
	bl sub_08016E64
	ldr r0, _08016BFC @ =gUnknown_02016028
	ldr r1, _08016C00 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016BFC: .4byte gUnknown_02016028
_08016C00: .4byte 0x000121BB

	thumb_func_start sub_08016C04
sub_08016C04: @ 0x08016C04
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C10
sub_08016C10: @ 0x08016C10
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C1C
sub_08016C1C: @ 0x08016C1C
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C28
sub_08016C28: @ 0x08016C28
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C34
sub_08016C34: @ 0x08016C34
	push {lr}
	bl sub_08016EE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C40
sub_08016C40: @ 0x08016C40
	push {lr}
	bl sub_08016EE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C4C
sub_08016C4C: @ 0x08016C4C
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C58
sub_08016C58: @ 0x08016C58
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C64
sub_08016C64: @ 0x08016C64
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C70
sub_08016C70: @ 0x08016C70
	push {lr}
	bl sub_08016EE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C7C
sub_08016C7C: @ 0x08016C7C
	push {lr}
	bl sub_08016EE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C88
sub_08016C88: @ 0x08016C88
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C94
sub_08016C94: @ 0x08016C94
	push {lr}
	bl sub_08016E64
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016CA0
sub_08016CA0: @ 0x08016CA0
	ldr r0, _08016CAC @ =gScript
	ldrb r1, [r0, #2]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
_08016CAC: .4byte gScript

	thumb_func_start sub_08016CB0
sub_08016CB0: @ 0x08016CB0
	push {lr}
	bl sub_08016B6C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016CBC
sub_08016CBC: @ 0x08016CBC
	push {lr}
	ldr r0, _08016CF0 @ =gScript
	ldr r1, _08016CF4 @ =0x0000598C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08016CEC
	ldr r0, _08016CF8 @ =gUnknown_02016028
	ldr r2, _08016CFC @ =0x00002C9C
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r2, _08016D00 @ =0x00002C9D
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r1, _08016D04 @ =0x00002C9E
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r3, [r0]
_08016CEC:
	pop {r0}
	bx r0
	.align 2, 0
_08016CF0: .4byte gScript
_08016CF4: .4byte 0x0000598C
_08016CF8: .4byte gUnknown_02016028
_08016CFC: .4byte 0x00002C9C
_08016D00: .4byte 0x00002C9D
_08016D04: .4byte 0x00002C9E

	thumb_func_start sub_08016D08
sub_08016D08: @ 0x08016D08
	push {lr}
	ldr r0, _08016D3C @ =gScript
	ldr r1, _08016D40 @ =0x0000598C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08016D38
	ldr r0, _08016D44 @ =gUnknown_02016028
	ldr r2, _08016D48 @ =0x00002C9C
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r2, _08016D4C @ =0x00002C9D
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r1, _08016D50 @ =0x00002C9E
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r3, [r0]
_08016D38:
	pop {r0}
	bx r0
	.align 2, 0
_08016D3C: .4byte gScript
_08016D40: .4byte 0x0000598C
_08016D44: .4byte gUnknown_02016028
_08016D48: .4byte 0x00002C9C
_08016D4C: .4byte 0x00002C9D
_08016D50: .4byte 0x00002C9E

	thumb_func_start sub_08016D54
sub_08016D54: @ 0x08016D54
	push {r4, r5, r6, r7, lr}
	ldr r1, _08016E20 @ =gScript
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	ldr r2, _08016E24 @ =gUnknown_02016078
	adds r7, r1, #0
	cmp r0, #0
	bge _08016D6A
	movs r0, #0x80
	lsls r0, r0, #4
	adds r2, r2, r0
_08016D6A:
	movs r4, #2
	movs r5, #0xc0
	lsls r5, r5, #8
	movs r3, #0
	ldr r6, _08016E28 @ =gUnknown_02016028
_08016D74:
	adds r1, r2, #0
	adds r0, r4, #0
	orrs r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, r1, #0
	movs r0, #1
	cmp r4, #1
	bne _08016E06
	movs r0, #2
_08016E06:
	adds r4, r0, #0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _08016D74
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08016E30
	ldr r1, _08016E2C @ =0x00002C92
	b _08016E32
	.align 2, 0
_08016E20: .4byte gScript
_08016E24: .4byte gUnknown_02016078
_08016E28: .4byte gUnknown_02016028
_08016E2C: .4byte 0x00002C92
_08016E30:
	ldr r1, _08016E40 @ =0x00002C90
_08016E32:
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E40: .4byte 0x00002C90

	thumb_func_start sub_08016E44
sub_08016E44: @ 0x08016E44
	ldr r2, _08016E5C @ =gUnknown_02016028
	ldrh r0, [r2, #0x22]
	movs r0, #0
	strh r0, [r2, #0x22]
	ldr r0, _08016E60 @ =0x000121BB
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08016E5C: .4byte gUnknown_02016028
_08016E60: .4byte 0x000121BB

	thumb_func_start sub_08016E64
sub_08016E64: @ 0x08016E64
	push {r4, lr}
	ldr r4, _08016EB4 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08001ACC
	ldr r0, _08016EB8 @ =gScript
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	lsrs r2, r0, #0x1f
	cmp r2, #0
	beq _08016EC4
	ldr r0, _08016EBC @ =gUnknown_02016028
	ldrh r2, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	ldrh r3, [r0, #8]
	orrs r1, r2
	strh r1, [r0, #8]
	ldrh r2, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r3, [r0, #8]
	orrs r1, r2
	strh r1, [r0, #8]
	ldrh r1, [r0, #0x22]
	movs r1, #1
	strh r1, [r0, #0x22]
	ldr r1, _08016EC0 @ =0x000131D0
	adds r0, r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r2, #0x40
	bl sub_08001B18
	b _08016ECA
	.align 2, 0
_08016EB4: .4byte gUnknown_03005314
_08016EB8: .4byte gScript
_08016EBC: .4byte gUnknown_02016028
_08016EC0: .4byte 0x000131D0
_08016EC4:
	ldr r0, _08016EE0 @ =gUnknown_02016028
	ldrh r1, [r0, #0x22]
	strh r2, [r0, #0x22]
_08016ECA:
	ldr r0, _08016EE0 @ =gUnknown_02016028
	ldr r3, _08016EE4 @ =0x000121BB
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016EE0: .4byte gUnknown_02016028
_08016EE4: .4byte 0x000121BB

	thumb_func_start sub_08016EE8
sub_08016EE8: @ 0x08016EE8
	push {r4, lr}
	ldr r4, _08016F14 @ =gUnknown_02016078
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08001ACC
	movs r0, #0xb1
	lsls r0, r0, #6
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	ldr r0, _08016F18 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08001ACC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016F14: .4byte gUnknown_02016078
_08016F18: .4byte gUnknown_03005314

	thumb_func_start sub_08016F1C
sub_08016F1C: @ 0x08016F1C
	push {lr}
	ldr r0, _08016F40 @ =gScript
	ldr r1, _08016F44 @ =0x00009D14
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08016F3C
	ldr r0, _08016F48 @ =gUnknown_020051E4
	ldrb r0, [r0]
	cmp r0, #2
	beq _08016F38
	cmp r0, #4
	bne _08016F3C
_08016F38:
	bl sub_0800882C
_08016F3C:
	pop {r0}
	bx r0
	.align 2, 0
_08016F40: .4byte gScript
_08016F44: .4byte 0x00009D14
_08016F48: .4byte gUnknown_020051E4

	thumb_func_start sub_08016F4C
sub_08016F4C: @ 0x08016F4C
	push {lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0xb
	ldr r3, _08016F64 @ =gUnknown_03005314
	adds r1, r1, r3
	lsrs r2, r2, #0x12
	bl sub_08090F74
	pop {r0}
	bx r0
	.align 2, 0
_08016F64: .4byte gUnknown_03005314

	thumb_func_start sub_08016F68
sub_08016F68: @ 0x08016F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	add r0, sp, #0xc
	strh r3, [r0]
	ldrb r0, [r7, #0x1d]
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	cmp r5, #0
	beq _08016F94
	b _080172C2
_08016F94:
	ldrh r2, [r7, #0x14]
	ldrh r0, [r7, #0x12]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r7, #0x14]
	movs r0, #0
	movs r1, #0x1f
	bl sub_08002E60
	mov sb, r0
	mov r4, sp
	adds r4, #0xe
	strh r5, [r4]
	ldr r0, _08017040 @ =0x000002DE
	bl sub_08002970
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016FBE
	b _0801711A
_08016FBE:
	ldrb r1, [r7, #0x1c]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #1
	bls _08016FD0
	b _0801711A
_08016FD0:
	mov r0, sp
	strh r6, [r0, #0xe]
	movs r3, #0x16
	ldrsh r0, [r7, r3]
	cmp r0, #0
	blt _08016FEC
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	cmp r0, #0
	blt _08016FEC
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0801709C
_08016FEC:
	add r1, sp, #0x10
	movs r0, #1
	strh r0, [r1]
	ldrh r1, [r7, #0x16]
	ldrh r6, [r7, #0x18]
	ldrh r0, [r7, #0x1a]
	mov r8, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08017050
	ldr r5, _08017044 @ =gUnknown_0200002C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E34
	strh r0, [r5]
	ldr r5, _08017048 @ =gUnknown_0200002E
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E34
	strh r0, [r5]
	ldr r5, _0801704C @ =gUnknown_02000030
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E34
	b _08017118
	.align 2, 0
_08017040: .4byte 0x000002DE
_08017044: .4byte gUnknown_0200002C
_08017048: .4byte gUnknown_0200002E
_0801704C: .4byte gUnknown_02000030
_08017050:
	ldr r5, _08017090 @ =gUnknown_0200002C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E34
	strh r0, [r5]
	ldr r5, _08017094 @ =gUnknown_0200002E
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E34
	strh r0, [r5]
	ldr r5, _08017098 @ =gUnknown_02000030
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E34
	b _08017118
	.align 2, 0
_08017090: .4byte gUnknown_0200002C
_08017094: .4byte gUnknown_0200002E
_08017098: .4byte gUnknown_02000030
_0801709C:
	add r0, sp, #0x10
	strh r5, [r0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080170E4
	ldr r5, _080170D8 @ =gUnknown_02000032
	ldrh r1, [r7, #0x16]
	mov r0, sb
	lsls r4, r0, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _080170DC @ =gUnknown_02000034
	ldrh r1, [r7, #0x18]
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _080170E0 @ =gUnknown_02000036
	ldrh r1, [r7, #0x1a]
	movs r0, #0
	b _08017110
	.align 2, 0
_080170D8: .4byte gUnknown_02000032
_080170DC: .4byte gUnknown_02000034
_080170E0: .4byte gUnknown_02000036
_080170E4:
	ldr r5, _08017124 @ =gUnknown_02000032
	ldrh r0, [r7, #0x16]
	mov r1, sb
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _08017128 @ =gUnknown_02000034
	ldrh r0, [r7, #0x18]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E60
	strh r0, [r5]
	ldr r5, _0801712C @ =gUnknown_02000036
	ldrh r0, [r7, #0x1a]
	movs r1, #0
_08017110:
	adds r2, r4, #0
	movs r3, #0x1f
	bl sub_08002E60
_08017118:
	strh r0, [r5]
_0801711A:
	ldr r3, [sp, #0x14]
	mov r8, r3
	mov r0, r8
	b _080172A6
	.align 2, 0
_08017124: .4byte gUnknown_02000032
_08017128: .4byte gUnknown_02000034
_0801712C: .4byte gUnknown_02000036
_08017130:
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801714E
	mov r0, r8
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08017146
	b _0801729A
_08017146:
	mov r0, r8
	cmp r0, #0x1b
	bls _0801714E
	b _0801729A
_0801714E:
	mov r3, r8
	lsls r1, r3, #5
	ldr r0, _08017170 @ =gUnknown_03005314
	adds r4, r1, r0
	ldr r0, [r7]
	adds r5, r0, r1
	ldr r0, [r7, #8]
	adds r2, r0, r1
	ldrb r6, [r7, #0x1c]
	cmp r6, #0xb
	bls _08017166
	b _0801729A
_08017166:
	lsls r0, r6, #2
	ldr r1, _08017174 @ =_08017178
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017170: .4byte gUnknown_03005314
_08017174: .4byte _08017178
_08017178: @ jump table
	.4byte _080171A8 @ case 0
	.4byte _080171B8 @ case 1
	.4byte _080171C8 @ case 2
	.4byte _080171D8 @ case 3
	.4byte _080171E8 @ case 4
	.4byte _080171E8 @ case 5
	.4byte _080171FA @ case 6
	.4byte _08017200 @ case 7
	.4byte _0801723C @ case 8
	.4byte _0801723C @ case 9
	.4byte _08017254 @ case 10
	.4byte _08017254 @ case 11
_080171A8:
	mov r0, sb
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080172D4
	b _0801729A
_080171B8:
	mov r1, sb
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080173B8
	b _0801729A
_080171C8:
	mov r3, sb
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017488
	b _0801729A
_080171D8:
	mov r0, sb
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017584
	b _0801729A
_080171E8:
	mov r1, sb
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08017648
	b _0801729A
_080171FA:
	mov r3, sb
	lsls r2, r3, #0x10
	b _08017222
_08017200:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _0801721E
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bne _0801721E
	mov r0, sb
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_080179A8
	b _0801729A
_0801721E:
	mov r1, sb
	lsls r2, r1, #0x10
_08017222:
	lsrs r2, r2, #0x10
	ldrh r0, [r7, #0x16]
	str r0, [sp]
	ldrh r0, [r7, #0x18]
	str r0, [sp, #4]
	ldrh r0, [r7, #0x1a]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_080177D0
	b _0801729A
_0801723C:
	mov r3, r8
	cmp r3, #0xf
	bhi _0801729A
	mov r0, sb
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017A4C
	b _0801729A
_08017254:
	mov r1, sp
	ldrh r0, [r1, #0xe]
	cmp r0, #0
	beq _08017278
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801726E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017D28
	b _0801729A
_0801726E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017E64
	b _0801729A
_08017278:
	mov r3, sb
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	str r0, [sp, #4]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08017B84
_0801729A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #0x14]
_080172A6:
	add r0, sl
	cmp r8, r0
	bge _080172AE
	b _08017130
_080172AE:
	ldrh r0, [r7, #0x12]
	cmp r0, #0
	bne _080172BE
	ldrb r0, [r7, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #0x1d]
	b _080172C2
_080172BE:
	subs r0, #1
	strh r0, [r7, #0x12]
_080172C2:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080172D4
sub_080172D4: @ 0x080172D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0x1f
	mov ip, r1
	ldr r0, _08017314 @ =0xFFFFFC1F
	mov sl, r0
	movs r1, #0x7d
	rsbs r1, r1, #0
	mov sb, r1
_080172F8:
	ldr r0, [r3]
	lsls r4, r0, #0x1b
	ldr r0, [r7]
	lsls r2, r0, #0x1b
	adds r6, r0, #0
	cmp r4, r2
	bhs _0801732C
	lsrs r0, r4, #0x1b
	adds r0, r0, r5
	lsrs r1, r2, #0x1b
	cmp r0, r1
	ble _08017318
	adds r0, r1, #0
	b _0801731C
	.align 2, 0
_08017314: .4byte 0xFFFFFC1F
_08017318:
	lsrs r0, r4, #0x1b
	adds r0, r5, r0
_0801731C:
	mov r1, ip
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0801732C:
	ldr r0, [r3]
	lsls r4, r0, #0x16
	lsls r2, r6, #0x16
	lsrs r1, r4, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bhs _08017368
	adds r0, r1, #0
	adds r0, r0, r5
	lsrs r1, r2, #0x1b
	cmp r0, r1
	ble _08017354
	adds r0, r1, #0
	lsls r0, r0, #5
	ldrh r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	b _08017368
_08017354:
	lsrs r1, r4, #0x1b
	adds r1, r5, r1
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
_08017368:
	ldr r0, [r3]
	lsls r4, r0, #0x11
	lsls r2, r6, #0x11
	lsrs r1, r4, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bhs _08017398
	adds r0, r1, #0
	adds r0, r0, r5
	lsrs r1, r2, #0x1b
	cmp r0, r1
	ble _08017384
	adds r0, r1, #0
	b _08017388
_08017384:
	lsrs r0, r4, #0x1b
	adds r0, r5, r0
_08017388:
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017398:
	adds r3, #2
	adds r7, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _080172F8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080173B8
sub_080173B8: @ 0x080173B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r2, r0, #0
	adds r5, r1, #0
	movs r6, #0
	movs r0, #0x1f
	mov r8, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sl, r0
	ldr r0, _08017408 @ =0xFFFFFC1F
	mov sb, r0
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov ip, r0
	movs r7, #0x1f
_080173E2:
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _08017412
	ldr r0, [r5]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801740C
	adds r1, r0, #0
	subs r1, r1, r4
	mov r0, r8
	ands r1, r0
	mov r0, sl
	ands r0, r3
	orrs r0, r1
	b _08017410
	.align 2, 0
_08017408: .4byte 0xFFFFFC1F
_0801740C:
	mov r0, sl
	ands r0, r3
_08017410:
	strb r0, [r2]
_08017412:
	ldrh r3, [r2]
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0801743E
	ldr r0, [r5]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _08017438
	adds r1, r0, #0
	subs r1, r1, r4
	ands r1, r7
	lsls r1, r1, #5
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	b _0801743C
_08017438:
	mov r0, sb
	ands r0, r3
_0801743C:
	strh r0, [r2]
_0801743E:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0801746A
	ldr r0, [r5]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _08017464
	adds r1, r0, #0
	subs r1, r1, r4
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #2
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	b _08017468
_08017464:
	mov r0, ip
	ands r0, r3
_08017468:
	strb r0, [r2, #1]
_0801746A:
	adds r2, #2
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _080173E2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017488
sub_08017488: @ 0x08017488
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x1f
	mov sl, r1
	mov r0, sl
	subs r0, r0, r2
	mov ip, r0
	mov r6, ip
	ands r6, r1
	lsls r0, r6, #5
	str r0, [sp]
	lsls r1, r6, #2
	str r1, [sp, #4]
_080174B8:
	ldr r1, [r3]
	lsls r1, r1, #0x1b
	ldr r0, [r7]
	lsls r2, r0, #0x1b
	adds r5, r0, #0
	cmp r1, r2
	bls _080174EC
	lsrs r0, r2, #0x1b
	cmp ip, r0
	ble _080174DA
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r3]
	b _080174EC
_080174DA:
	lsrs r0, r2, #0x1b
	mov r1, sl
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080174EC:
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsls r2, r5, #0x16
	lsrs r1, r1, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bls _08017526
	movs r4, #0x1f
	mov r0, r8
	subs r1, r4, r0
	lsrs r0, r2, #0x1b
	cmp r1, r0
	ble _08017514
	ldrh r1, [r3]
	ldr r0, _08017510 @ =0xFFFFFC1F
	ands r0, r1
	ldr r1, [sp]
	b _08017522
	.align 2, 0
_08017510: .4byte 0xFFFFFC1F
_08017514:
	lsrs r0, r2, #0x1b
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _08017548 @ =0xFFFFFC1F
	ands r0, r2
_08017522:
	orrs r0, r1
	strh r0, [r3]
_08017526:
	ldr r1, [r3]
	lsls r1, r1, #0x11
	lsls r2, r5, #0x11
	lsrs r1, r1, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bls _08017560
	cmp ip, r0
	ble _0801754C
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017560
	.align 2, 0
_08017548: .4byte 0xFFFFFC1F
_0801754C:
	lsrs r0, r2, #0x1b
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017560:
	adds r3, #2
	adds r7, #2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xf
	bls _080174B8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017584
sub_08017584: @ 0x08017584
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r3, r0, #0
	adds r5, r1, #0
	movs r6, #0
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov ip, r0
_08017598:
	ldr r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _080175C6
	ldr r0, [r5]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	adds r0, r0, r4
	cmp r0, #0x1e
	bgt _080175C0
	lsrs r0, r1, #0x1b
	adds r0, r4, r0
	ands r0, r7
	ldrb r2, [r3]
	mov r1, ip
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _080175C6
_080175C0:
	ldrb r0, [r3]
	orrs r0, r7
	strb r0, [r3]
_080175C6:
	ldr r0, [r3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _08017600
	ldr r0, [r5]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	adds r0, r0, r4
	cmp r0, #0x1e
	bgt _080175F4
	lsrs r1, r1, #0x1b
	adds r1, r4, r1
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _080175F0 @ =0xFFFFFC1F
	ands r0, r2
	b _080175FC
	.align 2, 0
_080175F0: .4byte 0xFFFFFC1F
_080175F4:
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
_080175FC:
	orrs r0, r1
	strh r0, [r3]
_08017600:
	ldr r0, [r3]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _08017634
	ldr r0, [r5]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	adds r0, r0, r4
	cmp r0, #0x1e
	bgt _0801762C
	lsrs r0, r1, #0x1b
	adds r0, r4, r0
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _08017634
_0801762C:
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
_08017634:
	adds r3, #2
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _08017598
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08017648
sub_08017648: @ 0x08017648
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	adds r4, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x1f
	mov sl, r1
_0801766C:
	mov r2, r8
	ldr r3, [r2]
	lsls r5, r3, #0x1b
	lsrs r1, r5, #0x1b
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r3, #0x16
	lsrs r2, r2, #0x1b
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x1b
	adds r0, r0, r3
	movs r1, #0xa
	bl sub_08091970
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, r6, #0
	mov r3, sb
	cmp r3, #0x1f
	bne _080176E8
	ldr r0, [sp]
	cmp r0, #4
	bne _080176E0
	adds r1, r6, #0
	mov r2, sl
	ands r1, r2
	lsls r1, r1, #2
	ldrb r0, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	ands r2, r0
	lsls r1, r2, #5
	ldrh r0, [r4]
	ldr r3, _080176DC @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	b _080177A4
	.align 2, 0
_080176DC: .4byte 0xFFFFFC1F
_080176E0:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	b _080177A4
_080176E8:
	ldr r2, [sp]
	cmp r2, #4
	bne _08017740
	lsrs r0, r5, #0x1b
	adds r1, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r3, sl
	ands r0, r3
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r2, _0801773C @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	b _0801778A
	.align 2, 0
_0801773C: .4byte 0xFFFFFC1F
_08017740:
	lsrs r1, r5, #0x1b
	adds r0, r7, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r3, sl
	ands r0, r3
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r0, r7, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r2, _080177CC @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r0, r7, #0
_0801778A:
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r2, #0x7d
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_080177A4:
	adds r4, #2
	movs r3, #2
	add r8, r3
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0xf
	bhi _080177BA
	b _0801766C
_080177BA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080177CC: .4byte 0xFFFFFC1F

	thumb_func_start sub_080177D0
sub_080177D0: @ 0x080177D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	ldr r5, [sp, #0x38]
	ldr r6, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0xc]
	adds r4, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0x1f
	mov sl, r1
_0801780C:
	mov r2, r8
	ldr r3, [r2]
	lsls r7, r3, #0x1b
	lsrs r1, r7, #0x1b
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r3, #0x16
	lsrs r2, r2, #0x1b
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x1b
	adds r0, r0, r3
	movs r1, #0xa
	bl sub_08091970
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #4]
	adds r1, r3, #0
	muls r1, r0, r1
	lsls r1, r1, #0xc
	lsrs r2, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r3, #0
	muls r1, r0, r1
	lsls r1, r1, #0xc
	lsrs r5, r1, #0x10
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	lsls r0, r0, #0xc
	lsrs r6, r0, #0x10
	cmp r2, #0x1f
	bls _08017856
	movs r2, #0x1f
_08017856:
	cmp r5, #0x1f
	bls _0801785C
	movs r5, #0x1f
_0801785C:
	cmp r6, #0x1f
	bls _08017862
	movs r6, #0x1f
_08017862:
	mov r3, sb
	cmp r3, #0x1f
	bne _080178B4
	ldr r0, [sp]
	cmp r0, #6
	bne _080178AC
	mov r1, sl
	ands r2, r1
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	mov r0, sb
	ands r5, r0
	lsls r2, r5, #5
	ldrh r0, [r4]
	ldr r3, _080178A8 @ =0xFFFFFC1F
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	mov r0, sl
	ands r6, r0
	lsls r2, r6, #2
	ldrb r0, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #1]
	b _0801797E
	.align 2, 0
_080178A8: .4byte 0xFFFFFC1F
_080178AC:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	b _0801797E
_080178B4:
	ldr r3, [sp]
	cmp r3, #6
	bne _08017918
	lsrs r0, r7, #0x1b
	adds r1, r2, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r5, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _08017914 @ =0xFFFFFC1F
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r2, sl
	ands r0, r2
	b _0801796E
	.align 2, 0
_08017914: .4byte 0xFFFFFC1F
_08017918:
	lsrs r1, r7, #0x1b
	adds r0, r2, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r0, r5, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _080179A4 @ =0xFFFFFC1F
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r0, r6, #0
	mov r2, sb
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, sl
	ands r0, r1
_0801796E:
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_0801797E:
	adds r4, #2
	movs r0, #2
	add r8, r0
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xf
	bhi _08017994
	b _0801780C
_08017994:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080179A4: .4byte 0xFFFFFC1F

	thumb_func_start sub_080179A8
sub_080179A8: @ 0x080179A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r7, #0
	movs r0, #0x1f
	mov ip, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sl, r0
	ldr r0, _080179DC @ =0xFFFFFC1F
	mov sb, r0
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov r8, r0
_080179D0:
	cmp r6, #0x1f
	bne _080179E0
	ldrh r0, [r5]
	strh r0, [r4]
	b _08017A2E
	.align 2, 0
_080179DC: .4byte 0xFFFFFC1F
_080179E0:
	ldr r3, [r5]
	lsls r0, r3, #0x1b
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	muls r1, r0, r1
	asrs r1, r1, #5
	mov r0, ip
	ands r1, r0
	ldrb r2, [r4]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r3, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	muls r1, r0, r1
	asrs r1, r1, #5
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x1b
	adds r1, r6, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4, #1]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #1]
_08017A2E:
	adds r4, #2
	adds r5, #2
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xf
	bls _080179D0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017A4C
sub_08017A4C: @ 0x08017A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r0, #0
	mov sl, r0
	movs r1, #0x1f
	mov r8, r1
_08017A70:
	cmp r7, #0x1f
	bne _08017A86
	mov r3, sb
	cmp r3, #8
	bne _08017A80
	ldrh r0, [r5]
	strh r0, [r4]
	b _08017B5C
_08017A80:
	ldrh r0, [r6]
	strh r0, [r4]
	b _08017B5C
_08017A86:
	mov r0, sb
	cmp r0, #8
	bne _08017AE8
	ldr r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	ldr r1, [r5]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, r8
	ands r0, r1
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r0, [r6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	ldr r1, [r5]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _08017AE4 @ =0xFFFFFC1F
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	ldr r0, [r6]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	ldr r1, [r5]
	b _08017B3C
	.align 2, 0
_08017AE4: .4byte 0xFFFFFC1F
_08017AE8:
	ldr r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	ldr r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, r8
	ands r0, r1
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r0, [r5]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	ldr r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _08017B80 @ =0xFFFFFC1F
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	ldr r0, [r5]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	ldr r1, [r6]
_08017B3C:
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_08017B5C:
	adds r4, #2
	adds r6, #2
	adds r5, #2
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _08017B72
	b _08017A70
_08017B72:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B80: .4byte 0xFFFFFC1F

	thumb_func_start sub_08017B84
sub_08017B84: @ 0x08017B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	str r1, [sp]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r3, #0xa
	bne _08017BE2
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	b _08017C10
_08017BE2:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
_08017C10:
	adds r2, r5, #0
	movs r3, #0x1f
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r3, sl
	ldr r5, [sp]
	movs r0, #0
	mov sl, r0
	mov r1, sb
	lsls r0, r1, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	str r2, [sp, #4]
	ldr r4, [sp, #0xc]
	lsls r4, r4, #0x10
	str r4, [sp, #8]
	asrs r6, r0, #0x10
	movs r7, #0x1f
	mov ip, r7
_08017C3C:
	ldr r1, [r5]
	lsls r2, r1, #0x1b
	lsrs r0, r2, #0x1b
	adds r0, r0, r6
	adds r4, r1, #0
	cmp r0, #0x1e
	ble _08017C54
	ldrb r0, [r3]
	mov r1, ip
	orrs r0, r1
	strb r0, [r3]
	b _08017C7C
_08017C54:
	lsrs r0, r2, #0x1b
	adds r0, r0, r6
	cmp r0, #0
	bge _08017C68
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _08017C7C
_08017C68:
	lsrs r0, r2, #0x1b
	add r0, sb
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08017C7C:
	lsls r1, r4, #0x16
	lsrs r0, r1, #0x1b
	ldr r7, [sp, #4]
	asrs r2, r7, #0x10
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017C94
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	b _08017CB8
_08017C94:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017CA8
	ldrh r1, [r3]
	ldr r0, _08017CA4 @ =0xFFFFFC1F
	ands r0, r1
	b _08017CBA
	.align 2, 0
_08017CA4: .4byte 0xFFFFFC1F
_08017CA8:
	lsrs r1, r1, #0x1b
	add r1, r8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _08017CD4 @ =0xFFFFFC1F
	ands r0, r2
_08017CB8:
	orrs r0, r1
_08017CBA:
	strh r0, [r3]
	lsls r1, r4, #0x11
	lsrs r0, r1, #0x1b
	ldr r4, [sp, #8]
	asrs r2, r4, #0x10
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017CD8
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017D04
	.align 2, 0
_08017CD4: .4byte 0xFFFFFC1F
_08017CD8:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017CEC
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	b _08017D04
_08017CEC:
	lsrs r0, r1, #0x1b
	ldr r7, [sp, #0xc]
	adds r0, r0, r7
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017D04:
	adds r3, #2
	adds r5, #2
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bls _08017C3C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017D28
sub_08017D28: @ 0x08017D28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r5, r1, #0
	movs r0, #0
	mov ip, r0
	ldr r1, _08017D70 @ =gUnknown_0200002C
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [sp]
	movs r4, #0x20
	rsbs r4, r4, #0
	mov sl, r4
	ldr r6, _08017D74 @ =0xFFFFFC1F
	mov sb, r6
	movs r7, #0x7d
	rsbs r7, r7, #0
	mov r8, r7
_08017D54:
	ldr r1, [r5]
	lsls r2, r1, #0x1b
	lsrs r0, r2, #0x1b
	ldr r4, [sp]
	adds r0, r0, r4
	adds r4, r1, #0
	cmp r0, #0x1e
	ble _08017D78
	ldrb r0, [r3]
	movs r6, #0x1f
	orrs r0, r6
	strb r0, [r3]
	b _08017DA2
	.align 2, 0
_08017D70: .4byte gUnknown_0200002C
_08017D74: .4byte 0xFFFFFC1F
_08017D78:
	lsrs r0, r2, #0x1b
	ldr r7, [sp]
	adds r0, r0, r7
	cmp r0, #0
	bge _08017D8C
	ldrb r1, [r3]
	mov r0, sl
	ands r0, r1
	strb r0, [r3]
	b _08017DA2
_08017D8C:
	lsrs r0, r2, #0x1b
	ldr r1, _08017DBC @ =gUnknown_0200002C
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	ldrb r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08017DA2:
	lsls r1, r4, #0x16
	lsrs r0, r1, #0x1b
	ldr r6, _08017DC0 @ =gUnknown_0200002E
	movs r7, #0
	ldrsh r2, [r6, r7]
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017DC4
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	b _08017DE8
	.align 2, 0
_08017DBC: .4byte gUnknown_0200002C
_08017DC0: .4byte gUnknown_0200002E
_08017DC4:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017DD4
	ldrh r1, [r3]
	mov r0, sb
	ands r0, r1
	b _08017DEA
_08017DD4:
	lsrs r1, r1, #0x1b
	ldr r6, _08017E08 @ =gUnknown_0200002E
	ldrh r6, [r6]
	adds r1, r1, r6
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
_08017DE8:
	orrs r0, r1
_08017DEA:
	strh r0, [r3]
	lsls r1, r4, #0x11
	lsrs r0, r1, #0x1b
	ldr r7, _08017E0C @ =gUnknown_02000030
	movs r4, #0
	ldrsh r2, [r7, r4]
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017E10
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017E3A
	.align 2, 0
_08017E08: .4byte gUnknown_0200002E
_08017E0C: .4byte gUnknown_02000030
_08017E10:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017E22
	ldrb r1, [r3, #1]
	mov r0, r8
	ands r0, r1
	strb r0, [r3, #1]
	b _08017E3A
_08017E22:
	lsrs r0, r1, #0x1b
	ldr r6, _08017E60 @ =gUnknown_02000030
	ldrh r6, [r6]
	adds r0, r0, r6
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017E3A:
	adds r3, #2
	adds r5, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r0, #0xf
	bhi _08017E4E
	b _08017D54
_08017E4E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017E60: .4byte gUnknown_02000030

	thumb_func_start sub_08017E64
sub_08017E64: @ 0x08017E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r5, r1, #0
	movs r0, #0
	mov ip, r0
	ldr r1, _08017EA8 @ =gUnknown_02000034
	mov sl, r1
	ldr r2, _08017EAC @ =gUnknown_02000036
	mov sb, r2
	ldr r0, _08017EB0 @ =gUnknown_02000032
	ldrh r0, [r0]
	str r0, [sp]
	movs r7, #0x1f
	movs r4, #0x20
	rsbs r4, r4, #0
	mov r8, r4
_08017E8E:
	ldr r1, [r5]
	lsls r2, r1, #0x1b
	lsrs r0, r2, #0x1b
	ldr r6, [sp]
	adds r0, r0, r6
	adds r4, r1, #0
	cmp r0, #0x1e
	ble _08017EB4
	ldrb r0, [r3]
	orrs r0, r7
	strb r0, [r3]
	b _08017EC6
	.align 2, 0
_08017EA8: .4byte gUnknown_02000034
_08017EAC: .4byte gUnknown_02000036
_08017EB0: .4byte gUnknown_02000032
_08017EB4:
	lsrs r0, r2, #0x1b
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r7
	ldrb r2, [r3]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08017EC6:
	lsls r1, r4, #0x16
	lsrs r0, r1, #0x1b
	mov r6, sl
	ldrh r2, [r6]
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017EDE
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	b _08017EEE
_08017EDE:
	lsrs r1, r1, #0x1b
	adds r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _08017F0C @ =0xFFFFFC1F
	ands r0, r2
_08017EEE:
	orrs r0, r1
	strh r0, [r3]
	lsls r2, r4, #0x11
	lsrs r0, r2, #0x1b
	mov r4, sb
	ldrh r1, [r4]
	adds r0, r0, r1
	cmp r0, #0x1e
	ble _08017F10
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017F24
	.align 2, 0
_08017F0C: .4byte 0xFFFFFC1F
_08017F10:
	lsrs r0, r2, #0x1b
	adds r0, r0, r1
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017F24:
	adds r3, #2
	adds r5, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r0, #0xf
	bls _08017E8E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017F48
sub_08017F48: @ 0x08017F48
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0xb
	ldr r2, _08017F74 @ =gUnknown_03005314
	adds r3, r0, r2
	movs r2, #0
	lsrs r1, r1, #0xc
	cmp r2, r1
	bge _08017F88
	movs r4, #0x10
	ldr r5, _08017F78 @ =0x00007FFF
_08017F60:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08017F7C
	ldrh r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	movs r0, #0
	b _08017F8A
	.align 2, 0
_08017F74: .4byte gUnknown_03005314
_08017F78: .4byte 0x00007FFF
_08017F7C:
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blt _08017F60
_08017F88:
	movs r0, #1
_08017F8A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017F90
sub_08017F90: @ 0x08017F90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	bl sub_0801870C
	ldr r0, _0801806C @ =gUnknown_02005C1C
	str r0, [sp, #0xc]
	ldr r1, _08018070 @ =0x00005894
	adds r6, r0, r1
	movs r2, #0
	mov sb, r2
	add r3, sp, #4
	mov sl, r3
	ldr r4, _08018074 @ =0x000058C9
	adds r0, r0, r4
	mov r8, r0
	adds r1, #0x28
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	str r1, [sp, #0x10]
_08017FBE:
	mov r2, r8
	ldrb r0, [r2]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	cmp r0, #0
	bne _08017FE6
	ldr r1, _08018078 @ =gScript
	ldrb r0, [r1, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08017FE6
	b _0801852A
_08017FE6:
	mov r2, sb
	cmp r2, #1
	bne _08017FF8
	ldr r3, _08018078 @ =gScript
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08017FF8
	b _0801852A
_08017FF8:
	ldrh r1, [r6, #4]
	ldr r0, [sp, #4]
	ldr r4, _0801807C @ =0xFFFF0000
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r6, #6]
	mov r1, sl
	strh r0, [r1, #2]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801809A
	movs r0, #0xf9
	lsls r0, r0, #2
	bl sub_08002970
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08018084
	mov r3, sb
	cmp r3, #2
	bne _08018084
	movs r4, #0x26
	ldrsh r0, [r6, r4]
	movs r2, #0x22
	ldrsh r1, [r6, r2]
	ldrh r2, [r6, #0x30]
	ldrh r3, [r6, #0x18]
	bl sub_08002E34
	strh r0, [r6, #6]
	ldr r3, [sp, #0xc]
	ldr r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	movs r1, #2
	ldrsb r1, [r3, r1]
	ldr r4, _08018080 @ =gUnknown_0200C3A4
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r4, #0x1c
	ldrsh r2, [r6, r4]
	str r2, [sp]
	movs r2, #0
	bl sub_0801856C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801807C @ =0xFFFF0000
	ands r7, r1
	orrs r7, r0
	ldrh r0, [r6, #4]
	adds r0, r0, r7
	strh r0, [r6, #4]
	b _080180F6
	.align 2, 0
_0801806C: .4byte gUnknown_02005C1C
_08018070: .4byte 0x00005894
_08018074: .4byte 0x000058C9
_08018078: .4byte gScript
_0801807C: .4byte 0xFFFF0000
_08018080: .4byte gUnknown_0200C3A4
_08018084:
	adds r0, r6, #0
	adds r0, #0x24
	adds r1, r6, #0
	adds r1, #0x20
	adds r2, r6, #4
	ldrh r3, [r6, #0x30]
	ldrh r4, [r6, #0x18]
	str r4, [sp]
	bl sub_08002E8C
	b _080180F6
_0801809A:
	ldr r2, [sp, #0xc]
	ldr r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	movs r1, #2
	ldrsb r1, [r2, r1]
	ldr r4, _08018130 @ =gUnknown_0200C3A4
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r4, #0x1c
	ldrsh r2, [r6, r4]
	str r2, [sp]
	movs r2, #0
	bl sub_0801856C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08018134 @ =0xFFFF0000
	ands r7, r1
	orrs r7, r0
	ldr r2, [sp, #0xc]
	ldr r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	movs r1, #3
	ldrsb r1, [r2, r1]
	ldr r4, _08018138 @ =gUnknown_0200C3A6
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r4, #0x1e
	ldrsh r2, [r6, r4]
	str r2, [sp]
	movs r2, #1
	bl sub_0801856C
	lsls r0, r0, #0x10
	ldr r1, _0801813C @ =0x0000FFFF
	ands r7, r1
	orrs r7, r0
	ldrh r0, [r6, #4]
	adds r0, r0, r7
	strh r0, [r6, #4]
	asrs r0, r7, #0x10
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	strh r0, [r6, #6]
_080180F6:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08018152
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08018140
	adds r0, r6, #0
	adds r0, #0x2c
	add r4, sp, #8
	ldrh r3, [r6, #0x32]
	ldrh r1, [r6, #0x1a]
	str r1, [sp]
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	bl sub_08002E8C
	ldrh r0, [r4]
	ldrh r1, [r6, #4]
	adds r0, r0, r1
	strh r0, [r6, #4]
	ldrh r0, [r4, #2]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	strh r0, [r6, #6]
	b _08018152
	.align 2, 0
_08018130: .4byte gUnknown_0200C3A4
_08018134: .4byte 0xFFFF0000
_08018138: .4byte gUnknown_0200C3A6
_0801813C: .4byte 0x0000FFFF
_08018140:
	adds r0, r6, #0
	adds r0, #0x2c
	adds r2, r6, #4
	ldrh r3, [r6, #0x32]
	ldrh r1, [r6, #0x1a]
	str r1, [sp]
	ldr r1, [sp, #0x10]
	bl sub_08002E8C
_08018152:
	ldr r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0xc0
	beq _080181FC
	mov r4, r8
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080181FC
	movs r1, #4
	ldrsh r0, [r6, r1]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_0801A7CC
	adds r1, r0, #0
	strh r1, [r6, #4]
	ldr r0, _080181C4 @ =gUnknown_02000040
	ldrh r0, [r0]
	cmp r0, #0
	bne _08018188
	b _0801827A
_08018188:
	lsls r0, r7, #0x10
	cmp r0, #0
	bge _080181CC
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _080181C8 @ =0xFFFF0000
	ands r5, r4
	orrs r5, r0
	mov r0, sb
	bl sub_0801A61C
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r5, r4
	orrs r5, r0
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r5, r4
	orrs r5, r0
	b _08018292
	.align 2, 0
_080181C4: .4byte gUnknown_02000040
_080181C8: .4byte 0xFFFF0000
_080181CC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080181F8 @ =0xFFFF0000
	ands r5, r1
	orrs r5, r0
	mov r0, sb
	bl sub_0801A61C
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080181F8 @ =0xFFFF0000
	ands r5, r3
	orrs r5, r0
	b _08018292
	.align 2, 0
_080181F8: .4byte 0xFFFF0000
_080181FC:
	mov r0, sb
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08018238
	mov r2, sl
	ldrh r0, [r2]
	lsls r1, r0, #0x10
	cmp r1, #0
	bge _08018238
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _08018238
	rsbs r0, r0, #0
	asrs r0, r0, #4
	asrs r1, r1, #0x14
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08018234 @ =0xFFFF0000
	ands r5, r1
	orrs r5, r0
	b _08018292
	.align 2, 0
_08018234: .4byte 0xFFFF0000
_08018238:
	mov r0, sb
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bls _08018278
	mov r3, sl
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08018278
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08018278
	asrs r1, r0, #0x14
	movs r2, #0
	ldrsh r0, [r3, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08018274 @ =0xFFFF0000
	ands r5, r3
	b _08018290
	.align 2, 0
_08018274: .4byte 0xFFFF0000
_08018278:
	ldrh r1, [r6, #4]
_0801827A:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	mov r4, sl
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080182FC @ =0xFFFF0000
	ands r5, r0
_08018290:
	orrs r5, r1
_08018292:
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08018338
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08018338
	movs r4, #6
	ldrsh r0, [r6, r4]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_0801A868
	adds r1, r0, #0
	strh r1, [r6, #6]
	ldr r0, _08018300 @ =gUnknown_02000040
	ldrh r0, [r0]
	cmp r0, #0
	beq _080183B2
	cmp r7, #0
	bge _08018308
	mov r3, sl
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	ldr r4, _08018304 @ =0x0000FFFF
	ands r5, r4
	orrs r5, r0
	mov r0, sb
	bl sub_0801A638
	asrs r2, r5, #0x10
	ldrh r1, [r6, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ands r5, r4
	orrs r5, r2
	asrs r0, r5, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	b _08018368
	.align 2, 0
_080182FC: .4byte 0xFFFF0000
_08018300: .4byte gUnknown_02000040
_08018304: .4byte 0x0000FFFF
_08018308:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	ldr r1, _08018334 @ =0x0000FFFF
	ands r5, r1
	orrs r5, r0
	mov r0, sb
	bl sub_0801A638
	asrs r2, r5, #0x10
	mov r3, sl
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r4, _08018334 @ =0x0000FFFF
	ands r5, r4
	orrs r5, r2
	b _080183C8
	.align 2, 0
_08018334: .4byte 0x0000FFFF
_08018338:
	mov r0, sb
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	cmp r0, r4
	bls _08018374
	mov r1, sl
	ldrh r0, [r1, #2]
	lsls r1, r0, #0x10
	cmp r1, #0
	bge _08018374
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _08018374
	rsbs r0, r0, #0
	asrs r0, r0, #4
	asrs r1, r1, #0x14
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r4, _08018370 @ =0x0000FFFF
_08018368:
	ands r5, r4
	orrs r5, r0
	b _080183C8
	.align 2, 0
_08018370: .4byte 0x0000FFFF
_08018374:
	mov r0, sb
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _080183B0
	add r2, sp, #4
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080183B0
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080183B0
	asrs r1, r0, #0x14
	movs r3, #2
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	asrs r0, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _080183AC @ =0x0000FFFF
	ands r5, r4
	b _080183C6
	.align 2, 0
_080183AC: .4byte 0x0000FFFF
_080183B0:
	ldrh r1, [r6, #6]
_080183B2:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	mov r2, sl
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08018408 @ =0x0000FFFF
	ands r5, r3
_080183C6:
	orrs r5, r1
_080183C8:
	ldrh r0, [r6, #8]
	adds r0, r0, r5
	strh r0, [r6, #8]
	asrs r1, r5, #0x10
	ldrh r0, [r6, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0xa]
	ldr r4, [sp, #0x10]
	strb r1, [r4, #0xc]
	mov r0, sb
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x14
	mov r0, sb
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x14
	adds r0, r2, #0
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	cmp r1, #0
	bge _0801841E
	ldrh r1, [r6, #2]
	movs r3, #2
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _0801840C
	subs r0, r2, #1
	b _0801840E
	.align 2, 0
_08018408: .4byte 0x0000FFFF
_0801840C:
	subs r0, r1, #1
_0801840E:
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #5
	bl sub_08010A40
	b _08018444
_0801841E:
	cmp r1, #0xf
	ble _08018444
	movs r2, #2
	ldrsh r1, [r6, r2]
	subs r0, #1
	cmp r1, r0
	bne _08018432
	movs r3, #0
	strh r3, [r6, #2]
	b _08018438
_08018432:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
_08018438:
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #1
	bl sub_08010A40
_08018444:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0801846C
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _0801845A
	subs r0, r4, #1
	b _0801845C
_0801845A:
	subs r0, r1, #1
_0801845C:
	strh r0, [r6]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #3
	bl sub_08010A40
	b _08018490
_0801846C:
	cmp r0, #0xf
	ble _08018490
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r0, r4, #1
	cmp r1, r0
	bne _0801847E
	movs r0, #0
	b _08018482
_0801847E:
	ldrh r0, [r6]
	adds r0, #1
_08018482:
	strh r0, [r6]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #7
	bl sub_08010A40
_08018490:
	mov r4, r8
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080184A4
	ldrh r1, [r6, #8]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r6, #8]
_080184A4:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080184B8
	ldrh r1, [r6, #0xa]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r6, #0xa]
_080184B8:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080184E8
	ldrh r0, [r6, #0x30]
	adds r0, #1
	movs r2, #0
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r6, #0x18]
	cmp r0, r3
	bls _080184FE
	mov r4, r8
	ldrb r0, [r4]
	movs r3, #9
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4]
	strh r2, [r6, #0x18]
	b _080184FE
_080184E8:
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _080184FE
	subs r0, #1
	strh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080184FE
	strh r0, [r6, #0x1c]
	strh r0, [r6, #0x1e]
_080184FE:
	mov r4, r8
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801852A
	ldrh r0, [r6, #0x32]
	adds r0, #1
	movs r2, #0
	strh r0, [r6, #0x32]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #0x1a]
	cmp r0, r1
	bls _0801852A
	ldrb r0, [r4]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4]
	strh r2, [r6, #0x1a]
_0801852A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r4, [sp, #0xc]
	adds r4, #4
	str r4, [sp, #0xc]
	movs r0, #0x38
	add r8, r0
	ldr r1, [sp, #0x10]
	adds r1, #0x38
	str r1, [sp, #0x10]
	adds r6, #0x38
	mov r2, sb
	cmp r2, #2
	bhi _0801854E
	b _08017FBE
_0801854E:
	ldr r1, _08018568 @ =gUnknown_0200C3A4
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018568: .4byte gUnknown_0200C3A4

	thumb_func_start sub_0801856C
sub_0801856C: @ 0x0801856C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	movs r1, #0
	mov ip, r1
	cmp r0, #1
	beq _08018620
	cmp r0, #1
	bgt _0801859E
	cmp r0, #0
	beq _080185A8
	b _08018620
_0801859E:
	cmp r6, #2
	beq _080185B2
	cmp r6, #3
	beq _080185CC
	b _08018620
_080185A8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	b _080185C2
_080185B2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
_080185C2:
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	b _08018620
_080185CC:
	ldr r2, _08018610 @ =gScript
	ldr r1, _08018614 @ =0x000067C4
	adds r0, r2, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080185DC
	movs r7, #0
_080185DC:
	ldrh r1, [r2, #0x10]
	ldr r0, _08018618 @ =0xFFFFF83F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #0x10]
	ldr r1, _0801861C @ =gUnknown_08D2D608
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1b
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08018620
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	mov r1, r8
	bl _call_via_r4
	lsls r0, r0, #0x10
	b _08018624
	.align 2, 0
_08018610: .4byte gScript
_08018614: .4byte 0x000067C4
_08018618: .4byte 0xFFFFF83F
_0801861C: .4byte gUnknown_08D2D608
_08018620:
	mov r1, ip
	lsls r0, r1, #0x10
_08018624:
	asrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08018630
sub_08018630: @ 0x08018630
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r2, r3
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	bne _08018654
	adds r0, r4, #0
	b _0801868A
_08018654:
	cmp r5, #0
	bne _08018672
	cmp r2, #0
	bge _08018666
	adds r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _08018686
_08018666:
	cmp r2, #0
	ble _0801868A
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	subs r0, r1, r0
	b _08018686
_08018672:
	cmp r2, #0
	bge _0801867C
	lsls r0, r4, #0x10
	asrs r0, r0, #0x11
	b _08018684
_0801867C:
	cmp r2, #0
	ble _0801868A
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
_08018684:
	adds r0, r1, r0
_08018686:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0801868A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08018694
sub_08018694: @ 0x08018694
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r2, r3
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0
	bne _080186BA
	adds r0, r1, #0
	b _08018700
_080186BA:
	cmp r4, #0
	bne _080186DE
	cmp r2, #0
	bge _080186CE
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	asrs r1, r1, #0x12
	adds r0, r0, r1
	adds r0, r3, r0
	b _080186FC
_080186CE:
	cmp r2, #0
	ble _08018700
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	asrs r1, r1, #0x12
	subs r0, r0, r1
	adds r0, r3, r0
	b _080186FC
_080186DE:
	cmp r2, #0
	bge _080186EE
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	asrs r1, r1, #0x12
	subs r0, r0, r1
	adds r0, r3, r0
	b _080186FC
_080186EE:
	cmp r2, #0
	ble _08018700
	adds r1, r3, #0
	subs r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
_080186FC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08018700:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801870C
sub_0801870C: @ 0x0801870C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r0, #0
	bl sub_08036BD8
	adds r6, r0, #0
	ldr r5, _080187A4 @ =gScript
	ldr r1, _080187A8 @ =0x00008494
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801879A
	ldr r2, [r6, #0x34]
	cmp r2, #0
	beq _0801879A
	ldr r3, _080187AC @ =0x000067B8
	adds r0, r5, r3
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801879A
	ldr r1, _080187B0 @ =0x000067C5
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0801879A
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	mov r4, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	ldrh r2, [r4, #2]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r3, _080187B4 @ =0x000058CE
	adds r0, r5, r3
	movs r4, #0
	strh r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r7, _080187B8 @ =0x00005906
	adds r0, r5, r7
	strh r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r2, _080187BC @ =0x0000593E
	adds r0, r5, r2
	strh r1, [r0]
	ldr r7, _080187C0 @ =0x000067C2
	adds r0, r5, r7
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r3
	strh r4, [r0]
_0801879A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080187A4: .4byte gScript
_080187A8: .4byte 0x00008494
_080187AC: .4byte 0x000067B8
_080187B0: .4byte 0x000067C5
_080187B4: .4byte 0x000058CE
_080187B8: .4byte 0x00005906
_080187BC: .4byte 0x0000593E
_080187C0: .4byte 0x000067C2

	thumb_func_start sub_080187C4
sub_080187C4: @ 0x080187C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r4, #0
	ldr r5, _08018814 @ =gScript
_080187DC:
	cmp r4, #0
	bne _080187E8
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08018800
_080187E8:
	cmp r4, #1
	bne _080187F4
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08018800
_080187F4:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08018818
_08018800:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _080187DC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018814: .4byte gScript

	thumb_func_start sub_08018818
sub_08018818: @ 0x08018818
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	ldr r0, _08018844 @ =gScript
	ldr r2, _08018848 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_08002FC0
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801884C
	adds r2, r4, #0
	adds r3, r5, #0
	b _08018858
	.align 2, 0
_08018844: .4byte gScript
_08018848: .4byte 0x00009D10
_0801884C:
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08018858:
	ldr r0, _08018874 @ =gScript
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r4, _08018878 @ =0x000058BC
	adds r0, r1, r4
	strh r2, [r0]
	ldr r0, _0801887C @ =0x000058BE
	adds r1, r1, r0
	strh r3, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018874: .4byte gScript
_08018878: .4byte 0x000058BC
_0801887C: .4byte 0x000058BE

	thumb_func_start sub_08018880
sub_08018880: @ 0x08018880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov sl, r6
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	mov sb, r4
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	mov r8, r5
	cmp r4, r5
	bne _080188B0
	ldr r0, _080188AC @ =gUnknown_02016028
	ldrh r1, [r0, #0x2e]
	strh r4, [r0, #0x2e]
	b _080188FE
	.align 2, 0
_080188AC: .4byte gUnknown_02016028
_080188B0:
	adds r1, r6, #1
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _080188DC @ =gScript
	ldr r1, _080188E0 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_08002FC0
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080188E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r6, #0
	b _080188EC
	.align 2, 0
_080188DC: .4byte gScript
_080188E0: .4byte 0x00009D10
_080188E4:
	mov r0, r8
	mov r1, sb
	adds r2, r7, #0
	mov r3, sl
_080188EC:
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0801890C @ =gUnknown_02016028
	lsls r1, r2, #4
	orrs r2, r1
	ldrh r1, [r0, #0x2e]
	strh r2, [r0, #0x2e]
_080188FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801890C: .4byte gUnknown_02016028

	thumb_func_start sub_08018910
sub_08018910: @ 0x08018910
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r4, r3, #0
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08018944 @ =gUnknown_0200B4B0
	adds r6, r1, r0
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	bne _08018978
	cmp r3, #0
	bne _08018948
	strh r3, [r6, #0x18]
	strh r3, [r6, #0x1c]
	strh r3, [r6, #0x1e]
	b _08018978
	.align 2, 0
_08018944: .4byte gUnknown_0200B4B0
_08018948:
	ldr r0, _08018980 @ =gUnknown_08D2D628
	adds r0, r2, r0
	ldrb r5, [r0]
	ldr r0, _08018984 @ =gUnknown_08D2D62E
	adds r0, r2, r0
	ldrb r0, [r0]
	muls r0, r4, r0
	strh r0, [r6, #0x18]
	mov r4, sp
	mov r2, sp
	adds r2, #2
	adds r0, r7, #0
	mov r1, sp
	bl sub_080270A0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r5, r0
	strh r0, [r6, #0x1c]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r5, r0
	strh r0, [r6, #0x1e]
_08018978:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018980: .4byte gUnknown_08D2D628
_08018984: .4byte gUnknown_08D2D62E

	thumb_func_start sub_08018988
sub_08018988: @ 0x08018988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r0, r5, #2
	ldr r1, _08018AB4 @ =gUnknown_02005C1C
	adds r4, r0, r1
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	ldr r2, _08018AB8 @ =0x00005894
	adds r1, r1, r2
	adds r6, r0, r1
	movs r0, #0xf9
	lsls r0, r0, #2
	bl sub_08002970
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080189C4
	cmp r5, #2
	beq _080189D8
_080189C4:
	ldrb r1, [r4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0xc0
	beq _08018AA4
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08018AA4
_080189D8:
	ldr r0, _08018ABC @ =gScript
	ldr r1, _08018AC0 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0x44
	beq _080189F6
	cmp r1, #0x44
	blt _08018A0A
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08018A0A
	subs r0, #2
	cmp r1, r0
	blt _08018A0A
_080189F6:
	ldrb r1, [r4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	beq _08018AA4
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08018AA4
_08018A0A:
	mov sl, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_0801A548
	ldr r2, _08018ABC @ =gScript
	mov sb, r2
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08018A44
	adds r0, r5, #0
	bl sub_0801A61C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_08002FC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
_08018A44:
	mov r1, sb
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08018A72
	adds r0, r5, #0
	bl sub_0801A638
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r2, sl
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r1, r4, #0
	bl sub_08002FC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	ldrh r2, [r7, #2]
	adds r0, r0, r2
	strh r0, [r7, #2]
_08018A72:
	mov r0, r8
	cmp r0, #0
	bne _08018A7C
	movs r1, #1
	mov r8, r1
_08018A7C:
	adds r2, r6, #0
	adds r2, #0x35
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	mov r2, r8
	strh r2, [r6, #0x18]
	strh r0, [r6, #0x30]
	ldrh r0, [r7]
	lsls r0, r0, #4
	strh r0, [r6, #0x20]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	strh r0, [r6, #0x22]
	ldrh r0, [r6, #4]
	strh r0, [r6, #0x24]
	ldrh r0, [r6, #6]
	strh r0, [r6, #0x26]
_08018AA4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AB4: .4byte gUnknown_02005C1C
_08018AB8: .4byte 0x00005894
_08018ABC: .4byte gScript
_08018AC0: .4byte 0x000067AC

	thumb_func_start sub_08018AC4
sub_08018AC4: @ 0x08018AC4
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08018B0C @ =gUnknown_0200B4B0
	adds r4, r1, r0
	cmp r3, #0
	bne _08018AE0
	movs r3, #1
_08018AE0:
	adds r2, r4, #0
	adds r2, #0x35
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	strh r3, [r4, #0x1a]
	strh r5, [r4, #0x32]
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08018B10
	strh r5, [r4, #0x2c]
	strh r5, [r4, #0x2e]
	ldrh r0, [r6]
	lsls r0, r0, #4
	strh r0, [r4, #0x28]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	b _08018B28
	.align 2, 0
_08018B0C: .4byte gUnknown_0200B4B0
_08018B10:
	ldrh r2, [r4, #4]
	strh r2, [r4, #0x2c]
	ldrh r3, [r4, #6]
	strh r3, [r4, #0x2e]
	ldrh r1, [r6]
	lsls r1, r1, #4
	strh r1, [r4, #0x28]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	adds r1, r1, r2
	strh r1, [r4, #0x28]
	adds r0, r0, r3
_08018B28:
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018B30
sub_08018B30: @ 0x08018B30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08018B6C @ =gScript
	ldr r2, _08018B70 @ =0x000067AC
	adds r0, r1, r2
	ldrh r0, [r0]
	mov ip, r1
	cmp r0, #0xcb
	beq _08018B54
	cmp r0, #0xcb
	blt _08018B78
	cmp r0, #0xd8
	bgt _08018B78
	cmp r0, #0xd7
	blt _08018B78
_08018B54:
	ldr r0, _08018B74 @ =0x0000591D
	add r0, ip
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08018B64
	b _08018E9E
_08018B64:
	bl sub_08018ED0
	b _08018E9E
	.align 2, 0
_08018B6C: .4byte gScript
_08018B70: .4byte 0x000067AC
_08018B74: .4byte 0x0000591D
_08018B78:
	ldr r4, _08018CA4 @ =gUnknown_02016028
	ldr r0, _08018CA8 @ =0x0001ED11
	adds r4, r4, r0
	ldrb r3, [r4]
	lsls r1, r3, #0x1f
	lsrs r1, r1, #0x1f
	ldr r0, _08018CAC @ =0x000058E5
	add r0, ip
	ldrb r5, [r0]
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1f
	ldr r0, _08018CB0 @ =0x0000591D
	add r0, ip
	ldrb r7, [r0]
	lsls r0, r7, #0x1e
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #1
	movs r3, #3
	rsbs r3, r3, #0
	ands r3, r2
	orrs r3, r1
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1f
	ldr r0, _08018CB4 @ =0x00005955
	add r0, ip
	ldrb r6, [r0]
	lsls r0, r6, #0x1e
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #2
	movs r2, #5
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	lsls r0, r5, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #3
	movs r3, #9
	rsbs r3, r3, #0
	ands r3, r2
	orrs r3, r1
	lsls r1, r3, #0x1b
	lsrs r1, r1, #0x1f
	lsls r0, r7, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4]
	movs r1, #2
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	bne _08018C26
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	bne _08018C26
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _08018C26
	b _08018D2E
_08018C26:
	ldr r0, _08018CB8 @ =0x000067B2
	add r0, ip
	ldrh r5, [r0]
	ldr r0, _08018CBC @ =0x000067B4
	add r0, ip
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08018CC0 @ =0x000058B8
	add r0, ip
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08018CC4 @ =0x000058F0
	add r0, ip
	ldrh r7, [r0]
	ldr r0, _08018CC8 @ =0x00005928
	add r0, ip
	ldrh r6, [r0]
	ldr r0, _08018CCC @ =0x000067C5
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08018CE0
	movs r4, #0
	ldr r1, _08018CA4 @ =gUnknown_02016028
	mov r8, r1
_08018C5A:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018CD0 @ =0x000146D0
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018CD4 @ =0x00014810
	add r0, r8
	adds r0, r2, r0
	subs r1, r7, r3
	strh r1, [r0]
	ldr r0, _08018CD8 @ =gUnknown_0202A978
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018CDC @ =gUnknown_0200C3B6
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018C5A
	b _08018D2E
	.align 2, 0
_08018CA4: .4byte gUnknown_02016028
_08018CA8: .4byte 0x0001ED11
_08018CAC: .4byte 0x000058E5
_08018CB0: .4byte 0x0000591D
_08018CB4: .4byte 0x00005955
_08018CB8: .4byte 0x000067B2
_08018CBC: .4byte 0x000067B4
_08018CC0: .4byte 0x000058B8
_08018CC4: .4byte 0x000058F0
_08018CC8: .4byte 0x00005928
_08018CCC: .4byte 0x000067C5
_08018CD0: .4byte 0x000146D0
_08018CD4: .4byte 0x00014810
_08018CD8: .4byte gUnknown_0202A978
_08018CDC: .4byte gUnknown_0200C3B6
_08018CE0:
	movs r4, #0
	ldr r2, _08018DE0 @ =gUnknown_02016028
	mov r8, r2
_08018CE6:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018DE4 @ =0x000146D0
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018DE8 @ =0x00014810
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, r7
	strh r1, [r0]
	ldr r0, _08018DEC @ =gUnknown_0202A978
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018DF0 @ =gUnknown_0200C3B6
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018CE6
_08018D2E:
	ldr r2, _08018DF4 @ =gScript
	ldr r1, _08018DF8 @ =0x000058E5
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _08018D60
	ldr r0, _08018DFC @ =0x0000591D
	add r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08018D60
	ldr r0, _08018E00 @ =0x00005955
	add r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08018D60
	b _08018E76
_08018D60:
	ldr r0, _08018E04 @ =0x000067B2
	add r0, ip
	ldrh r5, [r0]
	ldr r0, _08018E08 @ =0x000067B4
	add r0, ip
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08018E0C @ =0x000058BA
	add r0, ip
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08018E10 @ =0x000058F2
	add r0, ip
	ldrh r7, [r0]
	ldr r0, _08018E14 @ =0x0000592A
	add r0, ip
	ldrh r6, [r0]
	ldr r0, _08018E18 @ =0x000067C5
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08018E28
	movs r4, #0
	ldr r2, _08018DE0 @ =gUnknown_02016028
	mov r8, r2
_08018D94:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018E1C @ =0x00014A90
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018E20 @ =0x00014BD0
	add r0, r8
	adds r0, r2, r0
	subs r1, r7, r3
	strh r1, [r0]
	ldr r0, _08018E24 @ =gUnknown_0202AD38
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018DF0 @ =gUnknown_0200C3B6
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018D94
	b _08018E76
	.align 2, 0
_08018DE0: .4byte gUnknown_02016028
_08018DE4: .4byte 0x000146D0
_08018DE8: .4byte 0x00014810
_08018DEC: .4byte gUnknown_0202A978
_08018DF0: .4byte gUnknown_0200C3B6
_08018DF4: .4byte gScript
_08018DF8: .4byte 0x000058E5
_08018DFC: .4byte 0x0000591D
_08018E00: .4byte 0x00005955
_08018E04: .4byte 0x000067B2
_08018E08: .4byte 0x000067B4
_08018E0C: .4byte 0x000058BA
_08018E10: .4byte 0x000058F2
_08018E14: .4byte 0x0000592A
_08018E18: .4byte 0x000067C5
_08018E1C: .4byte 0x00014A90
_08018E20: .4byte 0x00014BD0
_08018E24: .4byte gUnknown_0202AD38
_08018E28:
	movs r4, #0
	ldr r2, _08018EAC @ =gUnknown_02016028
	mov r8, r2
_08018E2E:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018EB0 @ =0x00014A90
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018EB4 @ =0x00014BD0
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, r7
	strh r1, [r0]
	ldr r0, _08018EB8 @ =gUnknown_0202AD38
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018EBC @ =gUnknown_0200C3B6
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018E2E
_08018E76:
	ldr r2, _08018EC0 @ =gScript
	ldr r0, _08018EC4 @ =0x000067B2
	adds r3, r2, r0
	ldr r1, _08018EC8 @ =0x000067B6
	adds r0, r2, r1
	ldrh r4, [r0]
	ldrb r1, [r2, #0xe]
	lsrs r1, r1, #6
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r2, _08018ECC @ =0x000058E4
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #1
	muls r0, r4, r0
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
_08018E9E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018EAC: .4byte gUnknown_02016028
_08018EB0: .4byte 0x00014A90
_08018EB4: .4byte 0x00014BD0
_08018EB8: .4byte gUnknown_0202AD38
_08018EBC: .4byte gUnknown_0200C3B6
_08018EC0: .4byte gScript
_08018EC4: .4byte 0x000067B2
_08018EC8: .4byte 0x000067B6
_08018ECC: .4byte 0x000058E4

	thumb_func_start sub_08018ED0
sub_08018ED0: @ 0x08018ED0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r3, _08018F64 @ =gUnknown_03004E15
	ldr r4, _08018F68 @ =gUnknown_02016028
	ldr r0, _08018F6C @ =0x0001ED11
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08018F70 @ =gUnknown_03004B0C
	ldr r5, _08018F74 @ =gScript
	ldr r2, _08018F78 @ =0x000067B2
	adds r2, r2, r5
	mov sb, r2
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _08018F7C @ =gUnknown_03004B0E
	ldr r2, _08018F80 @ =0x000067B4
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08018F84 @ =gUnknown_03004B10
	ldr r0, _08018F88 @ =0x000067B6
	adds r5, r5, r0
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08018F8C @ =0x00014810
	adds r6, r4, r1
	ldr r2, _08018F90 @ =0x00014950
	adds r2, r2, r4
	mov sl, r2
	adds r0, r6, #0
	mov r1, sl
	bl _call_via_r3
	ldr r0, _08018F94 @ =0x00014BD0
	adds r1, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	mov r8, r2
	adds r0, r6, #0
	bl sub_08001B18
	ldr r0, _08018F98 @ =0x00014D10
	adds r4, r4, r0
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001B18
	ldrh r0, [r5]
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018F64: .4byte gUnknown_03004E15
_08018F68: .4byte gUnknown_02016028
_08018F6C: .4byte 0x0001ED11
_08018F70: .4byte gUnknown_03004B0C
_08018F74: .4byte gScript
_08018F78: .4byte 0x000067B2
_08018F7C: .4byte gUnknown_03004B0E
_08018F80: .4byte 0x000067B4
_08018F84: .4byte gUnknown_03004B10
_08018F88: .4byte 0x000067B6
_08018F8C: .4byte 0x00014810
_08018F90: .4byte 0x00014950
_08018F94: .4byte 0x00014BD0
_08018F98: .4byte 0x00014D10

	thumb_func_start sub_08018F9C
sub_08018F9C: @ 0x08018F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r0, _08019054 @ =gScript
	ldr r2, _08019058 @ =0x000058B8
	adds r1, r0, r2
	ldrh r1, [r1]
	str r1, [sp, #4]
	ldr r7, _0801905C @ =0x000058F0
	adds r1, r0, r7
	ldrh r1, [r1]
	mov sl, r1
	ldr r1, _08019060 @ =0x00005928
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	mov r2, r8
	ldrh r4, [r2]
	movs r5, #0
	ldr r6, _08019064 @ =gUnknown_02016028
_08018FD8:
	adds r0, r4, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp]
	adds r2, r0, #0
	muls r2, r7, r2
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	lsls r3, r5, #1
	ldr r1, _08019068 @ =0x000146D0
	adds r0, r6, r1
	adds r0, r3, r0
	ldr r7, [sp, #4]
	adds r1, r2, r7
	strh r1, [r0]
	ldr r1, _0801906C @ =0x00014810
	adds r0, r6, r1
	adds r0, r3, r0
	mov r7, sl
	adds r1, r2, r7
	strh r1, [r0]
	ldr r0, _08019070 @ =gUnknown_0202A978
	adds r3, r3, r0
	add r2, sb
	strh r2, [r3]
	ldr r1, [sp, #8]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x9f
	bls _08018FD8
	ldr r2, _08019054 @ =gScript
	ldrb r1, [r2, #0xe]
	lsrs r1, r1, #6
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r2, _08019074 @ =0x000058E4
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #1
	ldr r7, [sp, #8]
	muls r0, r7, r0
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019054: .4byte gScript
_08019058: .4byte 0x000058B8
_0801905C: .4byte 0x000058F0
_08019060: .4byte 0x00005928
_08019064: .4byte gUnknown_02016028
_08019068: .4byte 0x000146D0
_0801906C: .4byte 0x00014810
_08019070: .4byte gUnknown_0202A978
_08019074: .4byte 0x000058E4

	thumb_func_start sub_08019078
sub_08019078: @ 0x08019078
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	lsls r1, r0, #8
	movs r2, #0xf0
	orrs r1, r2
	lsls r1, r1, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r6, #1
	ldr r5, _0801909C @ =gUnknown_02029238
_08019090:
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _080190A0
	lsrs r3, r1, #0x10
	b _080190A2
	.align 2, 0
_0801909C: .4byte gUnknown_02029238
_080190A0:
	lsrs r3, r2, #0x10
_080190A2:
	lsls r0, r4, #1
	adds r0, r0, r5
	strh r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08019090
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080190B8
sub_080190B8: @ 0x080190B8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r7, #0xf0
	cmp r1, #3
	bne _0801919C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0xef
	ble _080190D8
	movs r5, #0
	b _080190E2
_080190D8:
	lsls r0, r1, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080190E2:
	movs r2, #0x50
	ldr r3, _080190FC @ =gUnknown_02029238
_080190E6:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08019100
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r5, [r0]
	b _08019106
	.align 2, 0
_080190FC: .4byte gUnknown_02029238
_08019100:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r7, [r0]
_08019106:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08019124
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _08019124
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08019124:
	lsls r0, r2, #0x10
	ldr r1, _0801913C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080190E6
	lsrs r4, r6, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0xef
	ble _08019140
	movs r5, #0
	b _0801914A
	.align 2, 0
_0801913C: .4byte 0xFFFF0000
_08019140:
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801914A:
	movs r2, #0x50
	ldr r6, _08019164 @ =gUnknown_02029238
_0801914E:
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _08019168
	lsls r0, r2, #1
	adds r0, r0, r6
	strh r5, [r0]
	b _0801916E
	.align 2, 0
_08019164: .4byte gUnknown_02029238
_08019168:
	lsls r0, r2, #1
	adds r0, r0, r6
	strh r7, [r0]
_0801916E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0801918C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0801918C
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801918C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0801914E
	b _0801926C
_0801919C:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0xef
	ble _080191AC
	movs r5, #0
	b _080191B4
_080191AC:
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080191B4:
	movs r2, #0x50
	ldr r3, _080191D0 @ =gUnknown_02029238
_080191B8:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080191D4
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	b _080191DA
	.align 2, 0
_080191D0: .4byte gUnknown_02029238
_080191D4:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r5, [r0]
_080191DA:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080191F6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xef
	bgt _080191F6
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080191F6:
	lsls r0, r2, #0x10
	ldr r1, _08019210 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080191B8
	lsrs r4, r6, #0x10
	asrs r1, r6, #0x10
	cmp r1, #0xef
	ble _08019214
	movs r5, #0
	b _0801921C
	.align 2, 0
_08019210: .4byte 0xFFFF0000
_08019214:
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801921C:
	movs r2, #0x50
	ldr r6, _08019238 @ =gUnknown_02029238
_08019220:
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0801923C
	lsls r0, r2, #1
	adds r0, r0, r6
	movs r1, #0
	strh r1, [r0]
	b _08019242
	.align 2, 0
_08019238: .4byte gUnknown_02029238
_0801923C:
	lsls r0, r2, #1
	adds r0, r0, r6
	strh r5, [r0]
_08019242:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0801925E
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xef
	bgt _0801925E
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801925E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08019220
_0801926C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019274
sub_08019274: @ 0x08019274
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #0xf0
	cmp r1, #5
	bne _080192CE
	ldr r2, _0801929C @ =gUnknown_02029376
	movs r1, #0
	cmp r1, r3
	bge _080192B4
	movs r6, #1
	movs r5, #0
_08019290:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080192A0
	strh r5, [r2]
	b _080192A2
	.align 2, 0
_0801929C: .4byte gUnknown_02029376
_080192A0:
	strh r4, [r2]
_080192A2:
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r2, #2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	blt _08019290
_080192B4:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0801931A
_080192BC:
	strh r4, [r2]
	subs r2, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _080192BC
	b _0801931A
_080192CE:
	ldr r2, _080192E8 @ =gUnknown_02029376
	movs r1, #0
	cmp r1, r3
	bge _08019300
	movs r6, #1
	movs r5, #0
_080192DA:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080192EC
	strh r5, [r2]
	b _080192EE
	.align 2, 0
_080192E8: .4byte gUnknown_02029376
_080192EC:
	strh r4, [r2]
_080192EE:
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r2, #2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	blt _080192DA
_08019300:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0801931A
	movs r3, #0
_0801930A:
	strh r3, [r2]
	subs r2, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _0801930A
_0801931A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019320
sub_08019320: @ 0x08019320
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0xf0
	ldr r6, _08019378 @ =0x000078F0
	movs r5, #0x78
	cmp r1, #3
	bne _08019380
	movs r1, #0
	ldr r2, _0801937C @ =gUnknown_02029238
_08019338:
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r3, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x4f
	bls _08019338
	movs r1, #0
	cmp r1, r4
	bhs _080193C2
	ldr r2, _0801937C @ =gUnknown_02029238
_0801935A:
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r6, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _0801935A
	b _080193C2
	.align 2, 0
_08019378: .4byte 0x000078F0
_0801937C: .4byte gUnknown_02029238
_08019380:
	movs r1, #0
	ldr r2, _080193C8 @ =gUnknown_02029238
_08019384:
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r6, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x4f
	bls _08019384
	movs r1, #0
	cmp r1, r4
	bhs _080193C2
	ldr r3, _080193C8 @ =gUnknown_02029238
	movs r2, #0
_080193A8:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _080193A8
_080193C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080193C8: .4byte gUnknown_02029238

	thumb_func_start sub_080193CC
sub_080193CC: @ 0x080193CC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #3
	bne _080193E2
	lsls r0, r2, #8
	movs r1, #0xf0
	orrs r0, r1
	b _080193E6
_080193E2:
	movs r0, #0xf0
	subs r0, r0, r2
_080193E6:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r3, _08019404 @ =gUnknown_02029238
_080193EE:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x9f
	bls _080193EE
	pop {r0}
	bx r0
	.align 2, 0
_08019404: .4byte gUnknown_02029238

	thumb_func_start sub_08019408
sub_08019408: @ 0x08019408
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	cmp r1, #0
	beq _0801951A
	adds r0, r2, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r2, [r3]
	ldrh r4, [r3, #2]
	str r1, [sp, #4]
	movs r3, #0
	lsls r0, r1, #1
	rsbs r0, r0, #0
	adds r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r1, #0x10
	cmp r5, #0
	blt _0801951A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_08019454:
	asrs r7, r5, #0x10
	adds r5, r7, #0
	ldr r0, [sp]
	asrs r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #8]
	subs r3, r1, r7
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r6, r1, r7
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r4, r8
	ldr r2, [sp]
	asrs r4, r2
	mov r0, sl
	adds r2, r0, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	adds r1, r6, #0
	str r3, [sp, #0xc]
	bl sub_0801960C
	mov r1, sl
	subs r4, r1, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0xc]
	adds r0, r3, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0801960C
	ldr r2, [sp, #8]
	mov r4, r8
	subs r6, r2, r4
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r4, r2, #0
	add r4, r8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r2, r0, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0801960C
	mov r1, sl
	subs r5, r1, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801960C
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080194F4
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	str r4, [sp, #4]
	asrs r0, r0, #0xe
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080194F4:
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, r1
	bge _08019454
_0801951A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801952C
sub_0801952C: @ 0x0801952C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	movs r6, #0
	cmp r6, r8
	bhs _080195A2
	mov r0, r8
	muls r0, r1, r0
	mov sb, r0
_08019550:
	adds r0, r6, #0
	muls r0, r6, r0
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #4
	mov r1, sb
	subs r0, r1, r0
	bl sub_08090FB8
	adds r4, r0, #0
	ldrh r0, [r7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r5, r0, r4
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r2, [r7, #2]
	subs r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801960C
	ldrh r2, [r7, #2]
	adds r2, r6, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801960C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r8
	blo _08019550
_080195A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080195B0
sub_080195B0: @ 0x080195B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsrs r1, r1, #0x11
	ldrh r4, [r0]
	subs r3, r4, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	lsrs r2, r2, #0x11
	ldrh r0, [r0, #2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _08019602
	lsls r3, r3, #0x10
	mov r8, r3
	lsls r7, r1, #0x10
_080195E2:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	adds r2, r4, #0
	bl sub_0801960C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	cmp r5, r6
	blo _080195E2
_08019602:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801960C
sub_0801960C: @ 0x0801960C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r2, #0x10
	lsrs r0, r4, #0x10
	cmp r0, #0x9f
	bhi _0801964C
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08019626
	movs r3, #0
_08019626:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08019630
	movs r1, #0xf0
_08019630:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r2, r3
	bgt _0801964C
	ldr r0, _08019654 @ =gUnknown_02016028
	asrs r1, r4, #0xf
	ldr r4, _08019658 @ =0x00013210
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r0, r2, #8
	orrs r0, r3
	strh r0, [r1]
_0801964C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019654: .4byte gUnknown_02016028
_08019658: .4byte 0x00013210

	thumb_func_start sub_0801965C
sub_0801965C: @ 0x0801965C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r2, r8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, _080197C4 @ =0xFFFF0000
	mov sl, r7
	ldr r0, [sp]
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r4, r8
	ldrh r4, [r4, #2]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	ldr r7, _080197C8 @ =0x0000FFFF
	mov sb, r7
	ldr r0, [sp]
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r4, r5, #0
	adds r4, #0xd5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r7, r8
	ldrh r7, [r7]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	adds r0, r4, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r4, r8
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r7, sb
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #4]
	adds r5, #0x2b
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	adds r0, r5, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r4, r8
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	ldr r1, [sp, #8]
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #8]
	movs r7, #0
	str r7, [sp, #0xc]
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x10]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x14]
	movs r2, #0x96
	lsls r2, r2, #4
	mov sl, r2
_08019772:
	mov r0, sp
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0xc]
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0xc]
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	bne _080197D8
	lsls r2, r6, #0x10
	asrs r1, r2, #0x10
	cmp r1, sl
	bne _080197BC
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	beq _0801987A
	cmp r1, sl
	beq _080197CC
_080197BC:
	lsrs r2, r2, #0x10
	mov sb, r2
	b _080197D8
	.align 2, 0
_080197C4: .4byte 0xFFFF0000
_080197C8: .4byte 0x0000FFFF
_080197CC:
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	cmp r0, sl
	beq _080197D8
	lsrs r1, r1, #0x10
	mov sb, r1
_080197D8:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	mov r7, sb
	lsls r4, r7, #0x10
	adds r3, r0, #0
	cmp r1, sl
	bne _080197FA
	asrs r0, r4, #0x10
	cmp r0, sl
	beq _080197F0
	lsrs r6, r4, #0x10
	b _080197FA
_080197F0:
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	cmp r0, sl
	beq _08019804
	lsrs r6, r1, #0x10
_080197FA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r3, r6, #0x10
	cmp r0, sl
	bne _08019816
_08019804:
	asrs r1, r4, #0x10
	cmp r1, sl
	beq _0801980E
	lsrs r5, r4, #0x10
	b _08019816
_0801980E:
	asrs r0, r3, #0x10
	cmp r0, r1
	beq _08019816
	lsrs r5, r3, #0x10
_08019816:
	adds r2, r6, #0
	asrs r3, r3, #0x10
	mov ip, r3
	asrs r4, r4, #0x10
	cmp ip, r4
	ble _08019824
	mov r2, sb
_08019824:
	adds r3, r5, #0
	lsls r0, r5, #0x10
	lsls r1, r2, #0x10
	asrs r7, r0, #0x10
	mov r8, r7
	cmp r0, r1
	ble _08019834
	adds r3, r2, #0
_08019834:
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
	adds r2, r6, #0
	cmp ip, r4
	bge _08019840
	mov r2, sb
_08019840:
	adds r3, r5, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r8, r0
	bge _0801984C
	adds r3, r2, #0
_0801984C:
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08019858
	movs r1, #0
_08019858:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08019862
	movs r3, #0xf0
_08019862:
	ldr r0, _0801989C @ =gUnknown_02016028
	ldr r4, [sp, #0xc]
	lsls r2, r4, #1
	ldr r7, _080198A0 @ =0x00013210
	adds r0, r0, r7
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_0801987A:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, #0x9f
	bhi _0801988A
	b _08019772
_0801988A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801989C: .4byte gUnknown_02016028
_080198A0: .4byte 0x00013210

	thumb_func_start sub_080198A4
sub_080198A4: @ 0x080198A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080198E8
	movs r1, #0
	ldr r2, _080198E4 @ =0xFFFF0000
	ldr r0, [sp, #0x54]
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x54]
	add r3, sp, #0x54
	strh r1, [r3, #2]
	movs r1, #0x78
	ldr r0, [sp, #0x58]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x58]
	add r1, sp, #0x58
	movs r0, #0x14
	strh r0, [r1, #2]
	adds r5, r3, #0
	b _080198F8
	.align 2, 0
_080198E4: .4byte 0xFFFF0000
_080198E8:
	add r2, sp, #0x54
	strh r0, [r2]
	strh r0, [r2, #2]
	add r1, sp, #0x58
	strh r3, [r1]
	movs r0, #0x14
	strh r0, [r1, #2]
	adds r5, r2, #0
_080198F8:
	adds r4, r1, #0
	movs r6, #0
	add r0, sp, #4
	mov r8, r0
	add r1, sp, #0x2c
	mov sb, r1
_08019904:
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r2, r6, #0
	movs r3, #0x13
	bl sub_08002E60
	mov r2, r8
	adds r1, r2, r6
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _08019904
	movs r6, #0
	movs r3, #0x13
_08019928:
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r2, r1
	subs r0, r3, r6
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _08019928
	movs r6, #0
	mov r3, sb
	mov r2, r8
	movs r4, #0xf0
_08019948:
	adds r1, r3, r6
	adds r0, r2, r6
	ldrb r0, [r0]
	subs r0, r4, r0
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x27
	bls _08019948
	movs r6, #0
	ldr r7, _080199C0 @ =gUnknown_02029238
	ldr r5, _080199C4 @ =0x0000FFFF
	mov ip, r5
_08019964:
	lsls r5, r6, #1
	adds r5, r5, r7
	mov sl, r5
	adds r4, r6, #0
	adds r4, #0x28
	lsls r4, r4, #1
	adds r4, r4, r7
	adds r3, r6, #0
	adds r3, #0x50
	lsls r3, r3, #1
	adds r3, r3, r7
	adds r2, r6, #0
	adds r2, #0x78
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r1, r8
	adds r0, r1, r6
	ldrb r1, [r0]
	lsls r1, r1, #8
	mov r5, sb
	adds r0, r5, r6
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r2]
	mov r1, ip
	ands r0, r1
	strh r0, [r3]
	ands r0, r1
	strh r0, [r4]
	ands r0, r1
	mov r2, sl
	strh r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x27
	bls _08019964
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080199C0: .4byte gUnknown_02029238
_080199C4: .4byte 0x0000FFFF

	thumb_func_start sub_080199C8
sub_080199C8: @ 0x080199C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r4, r1, #0
	mov sb, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sb
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r0, #0
	muls r6, r4, r6
	lsls r6, r6, #8
	lsrs r6, r6, #0x10
	mov r5, sb
	adds r5, #0x40
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r0, r4, #4
	adds r4, r4, r0
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r0, r2, #4
	adds r2, r2, r0
	lsls r2, r2, #0xb
	mov r5, sl
	ldrh r5, [r5]
	mov ip, r5
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, ip
	subs r3, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r3
	lsls r1, r1, #0x10
	mov r5, sl
	ldrh r5, [r5, #2]
	mov sl, r5
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, sl
	subs r5, r0, r6
	asrs r2, r2, #0x10
	adds r0, r2, r5
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp]
	add r8, ip
	mov r1, r8
	subs r0, r1, r4
	lsls r0, r0, #0x10
	add r6, sl
	subs r1, r6, r2
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	subs r5, r5, r2
	lsls r5, r5, #0x10
	lsrs r3, r3, #0x10
	orrs r3, r5
	str r3, [sp, #4]
	add r4, r8
	lsls r4, r4, #0x10
	adds r2, r2, r6
	lsls r2, r2, #0x10
	lsrs r4, r4, #0x10
	orrs r4, r2
	str r4, [sp, #0xc]
	mov r0, sb
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	cmp r1, #0
	ble _08019AC2
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x50
	b _08019ACE
_08019AC2:
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x50
	subs r0, r0, r1
_08019ACE:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
	lsls r2, r2, #0x10
	mov r8, r2
	movs r5, #0x96
	lsls r5, r5, #0x14
	mov sl, r5
	ldr r0, _08019B44 @ =gUnknown_02029238
	mov sb, r0
_08019AE2:
	mov r1, r8
	asrs r0, r1, #0x10
	cmp r0, r6
	bgt _08019B6E
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _08019B6E
	mov r0, sp
	add r1, sp, #4
	adds r2, r6, #0
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	add r0, sp, #8
	add r1, sp, #0xc
	adds r2, r6, #0
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	asrs r5, r1, #0x10
	cmp r0, r5
	bne _08019B24
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	cmp r0, r5
	beq _08019B6E
	lsrs r4, r1, #0x10
_08019B24:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	lsls r2, r4, #0x10
	cmp r1, r5
	bne _08019B36
	asrs r0, r2, #0x10
	cmp r0, r1
	beq _08019B36
	lsrs r3, r2, #0x10
_08019B36:
	lsls r0, r3, #0x10
	cmp r2, r0
	bge _08019B48
	lsrs r1, r2, #0x10
	lsrs r3, r0, #0x10
	b _08019B4C
	.align 2, 0
_08019B44: .4byte gUnknown_02029238
_08019B48:
	lsrs r1, r0, #0x10
	lsrs r3, r2, #0x10
_08019B4C:
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08019B54
	movs r1, #0
_08019B54:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08019B5E
	movs r3, #0xf0
_08019B5E:
	lsls r2, r6, #1
	add r2, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_08019B6E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x9f
	bls _08019AE2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08019B88
sub_08019B88: @ 0x08019B88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _08019BBC
	cmp r1, r0
	bge _08019BA8
	ldrh r0, [r5, #2]
	ldrh r1, [r4, #2]
	b _08019BAC
_08019BA8:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
_08019BAC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bgt _08019BBC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bge _08019BC2
_08019BBC:
	movs r0, #0x96
	lsls r0, r0, #4
	b _08019BE8
_08019BC2:
	movs r6, #2
	ldrsh r3, [r5, r6]
	subs r2, r2, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r6, #0
	ldrsh r1, [r4, r6]
	subs r0, r0, r1
	muls r0, r2, r0
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r1, r1, r3
	bl sub_08090F7C
	adds r1, r0, #0
	ldrh r0, [r5]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08019BE8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019BF0
sub_08019BF0: @ 0x08019BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r4, _08019C3C @ =gScript
	ldr r6, _08019C40 @ =0x000067B4
	adds r1, r4, r6
	strh r2, [r1]
	ldr r7, _08019C44 @ =0x000067B6
	adds r1, r4, r7
	strh r3, [r1]
	movs r2, #0
	mov sb, r4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	mov r6, sb
	ldr r4, _08019C48 @ =0x000058E5
	movs r7, #2
	mov ip, r7
	movs r0, #4
	mov sl, r0
_08019C26:
	cmp r3, r8
	beq _08019C2E
	cmp r2, r3
	bne _08019C8C
_08019C2E:
	cmp r5, #1
	beq _08019C62
	cmp r5, #1
	bgt _08019C4C
	cmp r5, #0
	beq _08019C52
	b _08019C8C
	.align 2, 0
_08019C3C: .4byte gScript
_08019C40: .4byte 0x000067B4
_08019C44: .4byte 0x000067B6
_08019C48: .4byte 0x000058E5
_08019C4C:
	cmp r5, #2
	beq _08019C76
	b _08019C8C
_08019C52:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r1, [r0]
	mov r7, ip
	b _08019C70
_08019C62:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r1, [r0]
	mov r7, sl
_08019C70:
	orrs r1, r7
	strb r1, [r0]
	b _08019C8C
_08019C76:
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, r1, r4
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	mov r7, sl
	orrs r0, r7
	strb r0, [r1]
_08019C8C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _08019C26
	ldr r0, _08019CC0 @ =0x000067AC
	add r0, sb
	ldrh r0, [r0]
	cmp r0, #0xcb
	beq _08019CAC
	cmp r0, #0xcb
	blt _08019CCC
	cmp r0, #0xd8
	bgt _08019CCC
	cmp r0, #0xd7
	blt _08019CCC
_08019CAC:
	movs r0, #5
	bl sub_08005900
	ldr r0, _08019CC4 @ =sub_0803D61C
	ldr r1, _08019CC8 @ =gUnknown_03004E14
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
	b _08019CF6
	.align 2, 0
_08019CC0: .4byte 0x000067AC
_08019CC4: .4byte sub_0803D61C_start
_08019CC8: .4byte gUnknown_03004E14
_08019CCC:
	cmp r5, #1
	beq _08019CE8
	cmp r5, #1
	bgt _08019CDA
	cmp r5, #0
	beq _08019CE0
	b _08019CF6
_08019CDA:
	cmp r5, #2
	beq _08019CF0
	b _08019CF6
_08019CE0:
	movs r0, #3
	bl sub_08005900
	b _08019CF6
_08019CE8:
	movs r0, #4
	bl sub_08005900
	b _08019CF6
_08019CF0:
	movs r0, #2
	bl sub_08005900
_08019CF6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08019D04
sub_08019D04: @ 0x08019D04
	push {r4, r5, r6, r7, lr}
	ldr r2, _08019D6C @ =gScript
	ldr r0, _08019D70 @ =0x000067B4
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08019D74 @ =0x000067B6
	adds r1, r2, r0
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08019D78 @ =0x000067C5
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #3
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	movs r3, #0
	adds r5, r2, #0
	mov ip, r5
	ldr r6, _08019D7C @ =0x000058E5
	adds r7, r4, #0
	adds r4, r1, #0
_08019D3A:
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #3
	add r1, ip
	adds r1, r1, r6
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	ands r0, r4
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #2
	bls _08019D3A
	ldrb r1, [r5, #3]
	lsls r0, r1, #0x19
	cmp r0, #0
	bge _08019D80
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #3]
	b _08019D8E
	.align 2, 0
_08019D6C: .4byte gScript
_08019D70: .4byte 0x000067B4
_08019D74: .4byte 0x000067B6
_08019D78: .4byte 0x000067C5
_08019D7C: .4byte 0x000058E5
_08019D80:
	ldr r0, _08019D94 @ =gUnknown_02016028
	ldr r1, _08019D98 @ =0x000121BB
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_08019D8E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019D94: .4byte gUnknown_02016028
_08019D98: .4byte 0x000121BB

	thumb_func_start sub_08019D9C
sub_08019D9C: @ 0x08019D9C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08019DB8 @ =gScript
	ldr r1, _08019DBC @ =0x000067B8
	adds r2, r0, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019DC0
	movs r0, #0
	b _08019DC2
	.align 2, 0
_08019DB8: .4byte gScript
_08019DBC: .4byte 0x000067B8
_08019DC0:
	ldrh r0, [r2]
_08019DC2:
	bl sub_08036BD8
	adds r7, r0, #0
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r2, r2, r0
	lsls r2, r2, #0xc
	ldr r4, _08019E34 @ =0xFFFF0000
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r3, #6
	ldrsh r1, [r7, r3]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xb6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r3, _08019E38 @ =0x0000FFFF
	lsrs r6, r2, #0x10
	orrs r6, r0
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r6, r4
	orrs r6, r0
	asrs r0, r6, #0x10
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ands r6, r3
	orrs r6, r0
	ldr r1, _08019E3C @ =gUnknown_02016028
	movs r0, #0x80
	subs r0, r0, r6
	ldrh r2, [r1, #0x14]
	strh r0, [r1, #0x14]
	asrs r2, r6, #0x10
	movs r0, #0x78
	subs r0, r0, r2
	ldrh r2, [r1, #0x1c]
	strh r0, [r1, #0x1c]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019E34: .4byte 0xFFFF0000
_08019E38: .4byte 0x0000FFFF
_08019E3C: .4byte gUnknown_02016028

	thumb_func_start sub_08019E40
sub_08019E40: @ 0x08019E40
	push {r4, r5, r6, lr}
	ldr r5, _08019EBC @ =gScript
	ldr r1, _08019EC0 @ =0x00009D14
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08019EB4
	ldr r2, _08019EC4 @ =0x000067C4
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08019EB4
	ldrb r0, [r5]
	cmp r0, #0xc
	bgt _08019E66
	cmp r0, #2
	bge _08019EB4
_08019E66:
	ldr r3, _08019EC8 @ =0x000067BA
	adds r6, r5, r3
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019EB4
	ldr r1, _08019ECC @ =gUnknown_02016028
	ldrh r2, [r1, #8]
	ldr r0, _08019ED0 @ =0x0000E1FF
	ands r0, r2
	ldrh r2, [r1, #8]
	strh r0, [r1, #8]
	ldr r2, _08019ED4 @ =0x00002C9C
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r2, #0x1f
	strb r2, [r0]
	ldr r3, _08019ED8 @ =0x00002C9D
	adds r0, r1, r3
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, _08019EDC @ =0x00002C9E
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
	bl sub_080030A4
	ldr r1, _08019EE0 @ =0x000067BC
	adds r4, r5, r1
	ldr r2, _08019EE4 @ =0x000067BE
	adds r1, r5, r2
	ldrh r1, [r1]
	bl sub_08091B58
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r6]
_08019EB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019EBC: .4byte gScript
_08019EC0: .4byte 0x00009D14
_08019EC4: .4byte 0x000067C4
_08019EC8: .4byte 0x000067BA
_08019ECC: .4byte gUnknown_02016028
_08019ED0: .4byte 0x0000E1FF
_08019ED4: .4byte 0x00002C9C
_08019ED8: .4byte 0x00002C9D
_08019EDC: .4byte 0x00002C9E
_08019EE0: .4byte 0x000067BC
_08019EE4: .4byte 0x000067BE

	thumb_func_start sub_08019EE8
sub_08019EE8: @ 0x08019EE8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08019F38 @ =0x09AF3790
	adds r0, r5, #0
	movs r1, #0x2c
	bl sub_0800289C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08090F88
	adds r0, r5, #0
	movs r1, #0x2d
	bl sub_0800289C
	movs r1, #0
	movs r2, #0x40
	bl sub_08016F4C
	adds r4, #0x2e
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800289C
	bl sub_08019F44
	ldr r0, _08019F3C @ =gUnknown_02016028
	ldr r1, _08019F40 @ =0x00002C96
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019F38: .4byte 0x09AF3790
_08019F3C: .4byte gUnknown_02016028
_08019F40: .4byte 0x00002C96

	thumb_func_start sub_08019F44
sub_08019F44: @ 0x08019F44
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08019F8C @ =gUnknown_02016078
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r3, r0, #0
	movs r0, #0
_08019F58:
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0x40
	adds r6, r3, #0
	adds r6, #0x40
	adds r7, r0, #1
_08019F64:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08019F64
	adds r4, r5, #0
	adds r3, r6, #0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08019F58
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019F8C: .4byte gUnknown_02016078

	thumb_func_start sub_08019F90
sub_08019F90: @ 0x08019F90
	push {r4, lr}
	ldr r0, _08019FCC @ =gScript
	ldr r1, _08019FD0 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08019FD4 @ =gUnknown_080C2BE8
	adds r0, r0, r1
	ldr r2, _08019FD8 @ =gUnknown_02016028
	ldrh r3, [r0, #2]
	ldr r4, _08019FDC @ =0x00003678
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #4]
	adds r4, #2
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #6]
	adds r4, #2
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r0, [r0, #8]
	ldr r1, _08019FE0 @ =0x0000367E
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019FCC: .4byte gScript
_08019FD0: .4byte 0x000067AC
_08019FD4: .4byte gUnknown_080C2BE8
_08019FD8: .4byte gUnknown_02016028
_08019FDC: .4byte 0x00003678
_08019FE0: .4byte 0x0000367E

	thumb_func_start sub_08019FE4
sub_08019FE4: @ 0x08019FE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801A008 @ =gScript
	ldr r1, _0801A00C @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801A010 @ =gUnknown_080C2BE8
	adds r5, r0, r1
	ldrb r0, [r5]
	cmp r0, #0xf0
	bne _0801A014
	movs r3, #0xf
	movs r1, #0xf2
	b _0801A040
	.align 2, 0
_0801A008: .4byte gScript
_0801A00C: .4byte 0x000067AC
_0801A010: .4byte gUnknown_080C2BE8
_0801A014:
	cmp r0, #0xef
	beq _0801A02C
	cmp r0, #0xee
	bne _0801A032
	movs r0, #3
	bl sub_080029BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	cmp r0, #0xff
	bne _0801A02E
_0801A02C:
	movs r3, #0x10
_0801A02E:
	movs r1, #0xf1
	b _0801A040
_0801A032:
	ldrb r1, [r5]
	adds r0, r1, #0
	subs r0, #0xf1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, #0
	beq _0801A050
_0801A040:
	ldr r0, _0801A054 @ =gSave
	adds r0, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0801A058
	cmp r0, #0
	bne _0801A058
_0801A050:
	movs r0, #0
	b _0801A1A4
	.align 2, 0
_0801A054: .4byte gSave
_0801A058:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0801A0A4 @ =gUnknown_080C2AF8
	adds r6, r0, r1
	ldr r7, _0801A0A8 @ =gUnknown_02016028
	ldr r2, _0801A0AC @ =0x00003684
	adds r0, r7, r2
	movs r2, #0
	strh r3, [r0]
	ldrh r1, [r6]
	ldr r3, _0801A0B0 @ =0x00003686
	adds r0, r7, r3
	strh r1, [r0]
	ldr r1, _0801A0B4 @ =0x00003670
	adds r0, r7, r1
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r2, _0801A0B8 @ =0x00003674
	adds r1, r7, r2
	ldrh r0, [r6, #8]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _0801A0BC
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0801A0BC
	ldrh r2, [r5, #8]
	cmp r2, #0
	bne _0801A0BC
	subs r3, #0x1a
	adds r0, r7, r3
	strh r2, [r0]
	strh r2, [r0, #2]
	b _0801A1A2
	.align 2, 0
_0801A0A4: .4byte gUnknown_080C2AF8
_0801A0A8: .4byte gUnknown_02016028
_0801A0AC: .4byte 0x00003684
_0801A0B0: .4byte 0x00003686
_0801A0B4: .4byte 0x00003670
_0801A0B8: .4byte 0x00003674
_0801A0BC:
	ldrh r0, [r5, #6]
	ldrh r3, [r5, #2]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	ldrh r1, [r5, #8]
	ldrh r2, [r5, #4]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x11
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldr r5, _0801A110 @ =0xFFFF0000
	lsrs r1, r1, #0x11
	adds r2, r2, r1
	lsls r2, r2, #0x10
	ldr r1, _0801A114 @ =0x0000FFFF
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r0, r8
	orrs r0, r2
	mov r8, r0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r4, r5
	orrs r4, r0
	mov r2, r8
	asrs r0, r2, #0x10
	subs r0, #0x50
	lsls r0, r0, #0x10
	ands r4, r1
	orrs r4, r0
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _0801A10C
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0801A118
_0801A10C:
	ands r4, r5
	b _0801A13C
	.align 2, 0
_0801A110: .4byte 0xFFFF0000
_0801A114: .4byte 0x0000FFFF
_0801A118:
	movs r0, #8
	ldrsh r2, [r6, r0]
	lsls r0, r2, #3
	cmp r1, r0
	blt _0801A126
	lsls r0, r2, #0x13
	b _0801A136
_0801A126:
	adds r0, r1, #0
	adds r0, #0xf0
	ldrh r1, [r6, #2]
	cmp r0, r1
	blt _0801A13C
	adds r0, r1, #0
	subs r0, #0xf0
	lsls r0, r0, #0x10
_0801A136:
	lsrs r0, r0, #0x10
	ands r4, r5
	orrs r4, r0
_0801A13C:
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0801A14C
	asrs r3, r4, #0x10
	adds r2, r3, #0
	cmp r2, #0
	bge _0801A158
_0801A14C:
	ldr r0, _0801A154 @ =0x0000FFFF
	ands r4, r0
	b _0801A186
	.align 2, 0
_0801A154: .4byte 0x0000FFFF
_0801A158:
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	lsls r0, r1, #3
	cmp r2, r0
	blt _0801A170
	lsls r1, r1, #0x13
	ldr r0, _0801A16C @ =0x0000FFFF
	ands r4, r0
	orrs r4, r1
	b _0801A186
	.align 2, 0
_0801A16C: .4byte 0x0000FFFF
_0801A170:
	adds r0, r2, #0
	adds r0, #0xa0
	ldrh r1, [r6, #4]
	cmp r0, r1
	blt _0801A186
	adds r0, r1, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	ldr r1, _0801A1B0 @ =0x0000FFFF
	ands r4, r1
	orrs r4, r0
_0801A186:
	ldr r1, _0801A1B4 @ =gUnknown_02019694
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801A192
	adds r0, #7
_0801A192:
	asrs r0, r0, #3
	strh r0, [r1]
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _0801A19E
	adds r0, #7
_0801A19E:
	asrs r0, r0, #3
	strh r0, [r1, #2]
_0801A1A2:
	movs r0, #1
_0801A1A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A1B0: .4byte 0x0000FFFF
_0801A1B4: .4byte gUnknown_02019694

	thumb_func_start sub_0801A1B8
sub_0801A1B8: @ 0x0801A1B8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r6, _0801A208 @ =gScript
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #3
	adds r3, r3, r6
	lsrs r1, r1, #0x14
	ldr r6, _0801A20C @ =0x000058B0
	adds r0, r3, r6
	strh r1, [r0]
	lsrs r2, r2, #0x14
	ldr r1, _0801A210 @ =0x000058B2
	adds r0, r3, r1
	strh r2, [r0]
	lsls r1, r4, #4
	ldr r2, _0801A214 @ =0x000058B4
	adds r0, r3, r2
	strh r1, [r0]
	lsls r1, r5, #4
	adds r6, #6
	adds r0, r3, r6
	strh r1, [r0]
	movs r1, #0xf
	ands r4, r1
	adds r2, #4
	adds r0, r3, r2
	strh r4, [r0]
	ands r5, r1
	adds r6, #4
	adds r3, r3, r6
	strh r5, [r3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A208: .4byte gScript
_0801A20C: .4byte 0x000058B0
_0801A210: .4byte 0x000058B2
_0801A214: .4byte 0x000058B4

	thumb_func_start sub_0801A218
sub_0801A218: @ 0x0801A218
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0801A21E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801A238
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0801A21E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A238
sub_0801A238: @ 0x0801A238
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _0801A26C @ =gScript
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _0801A266
	cmp r0, #3
	bne _0801A270
_0801A266:
	movs r3, #0
	b _0801A27C
	.align 2, 0
_0801A26C: .4byte gScript
_0801A270:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r3, #0
	cmp r0, r6
	bgt _0801A27C
	ldrh r3, [r5]
_0801A27C:
	ldr r0, _0801A294 @ =gScript
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0801A290
	cmp r0, #3
	bne _0801A298
_0801A290:
	movs r2, #0
	b _0801A2A4
	.align 2, 0
_0801A294: .4byte gScript
_0801A298:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #0
	cmp r0, r7
	bgt _0801A2A4
	ldrh r2, [r5, #2]
_0801A2A4:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0801A1B8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A2B4
sub_0801A2B4: @ 0x0801A2B4
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r4, #0
	mov r5, sp
_0801A2C0:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_0801A2DC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0801A2C0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A2DC
sub_0801A2DC: @ 0x0801A2DC
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A338
	cmp r5, #0
	bne _0801A318
	ldr r1, _0801A310 @ =gScript
	ldrb r0, [r1, #0xf]
	lsls r0, r0, #0x1f
	adds r6, r1, #0
	movs r4, #0
	cmp r0, #0
	beq _0801A352
	ldr r1, _0801A314 @ =0x000058E5
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	adds r4, r5, #0
	b _0801A352
	.align 2, 0
_0801A310: .4byte gScript
_0801A314: .4byte 0x000058E5
_0801A318:
	ldr r3, _0801A330 @ =gScript
	lsls r4, r5, #3
	subs r0, r4, r5
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, _0801A334 @ =0x000058E5
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0801A350
	.align 2, 0
_0801A330: .4byte gScript
_0801A334: .4byte 0x000058E5
_0801A338:
	ldr r3, _0801A38C @ =gScript
	lsls r4, r5, #3
	subs r1, r4, r5
	lsls r1, r1, #3
	adds r1, r1, r3
	ldr r0, _0801A390 @ =0x000058E5
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0801A350:
	adds r6, r3, #0
_0801A352:
	subs r0, r4, r5
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r1, _0801A390 @ =0x000058E5
	adds r4, r0, r1
	ldrb r3, [r4]
	lsls r0, r3, #0x1f
	cmp r0, #0
	beq _0801A394
	lsls r2, r5, #2
	adds r2, r2, r6
	ldrb r0, [r2, #0x1d]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	ldrb r2, [r2, #0x1d]
	movs r0, #4
	ands r0, r2
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	b _0801A3A2
	.align 2, 0
_0801A38C: .4byte gScript
_0801A390: .4byte 0x000058E5
_0801A394:
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
_0801A3A2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A3AC
sub_0801A3AC: @ 0x0801A3AC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
	lsls r5, r2, #0x10
_0801A3BA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	asrs r3, r5, #0x10
	bl sub_0801A3D8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0801A3BA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A3D8
sub_0801A3D8: @ 0x0801A3D8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	cmp r1, #0
	beq _0801A3F4
	cmp r1, #1
	beq _0801A410
	b _0801A42A
_0801A3F4:
	ldr r0, _0801A40C @ =gScript
	lsls r1, r4, #2
	adds r1, r1, r0
	lsls r3, r5, #6
	ldrb r2, [r1, #0x1c]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1e]
	b _0801A42A
	.align 2, 0
_0801A40C: .4byte gScript
_0801A410:
	ldr r0, _0801A430 @ =gScript
	lsls r2, r4, #2
	adds r2, r2, r0
	movs r0, #3
	adds r1, r5, #0
	ands r1, r0
	ldrb r3, [r2, #0x1d]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x1d]
	strb r6, [r2, #0x1f]
_0801A42A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A430: .4byte gScript

	thumb_func_start sub_0801A434
sub_0801A434: @ 0x0801A434
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r7, [sp, #0x24]
	ldr r4, [sp, #0x28]
	mov sb, r4
	ldr r6, [sp, #0x2c]
	mov sl, r6
	ldr r4, [sp, #0x30]
	mov ip, r4
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	mov r4, sp
	strh r5, [r4]
	movs r4, #2
	add r4, sp
	mov r8, r4
	strh r6, [r4]
	ldr r5, _0801A504 @ =gScript
	ldr r6, _0801A508 @ =0x00005958
	adds r4, r5, r6
	strb r0, [r4]
	ldr r4, _0801A50C @ =0x00005978
	adds r0, r5, r4
	strh r1, [r0]
	adds r6, #1
	adds r0, r5, r6
	strb r2, [r0]
	ldr r1, _0801A510 @ =0x0000595A
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sp
	ldrh r0, [r0]
	adds r4, #0x14
	adds r6, r5, r4
	movs r2, #1
	adds r1, r2, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r4, [r6]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6]
	mov r4, r8
	ldrh r1, [r4]
	ands r2, r1
	lsls r2, r2, #4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r6, _0801A514 @ =0x0000595B
	adds r0, r5, r6
	mov r1, sl
	strb r1, [r0]
	ldr r2, _0801A518 @ =0x0000595C
	adds r0, r5, r2
	mov r4, ip
	strb r4, [r0]
	adds r6, #5
	adds r1, r5, r6
	movs r0, #0xa
	strh r0, [r1]
	ldr r1, _0801A51C @ =0x0000597C
	adds r0, r5, r1
	strh r3, [r0]
	strh r7, [r0, #2]
	ldr r2, _0801A520 @ =0x000067AC
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r4, #0xb3
	lsls r4, r4, #7
	adds r0, r5, r4
	strh r1, [r0]
	adds r6, #0x22
	adds r1, r5, r6
	ldr r0, _0801A524 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _0801A528 @ =0x00005984
	adds r1, r5, r0
	movs r0, #0
	bl sub_08036C00
	ldr r1, _0801A52C @ =0x00005988
	adds r5, r5, r1
	adds r0, r5, #0
	bl sub_0801A530
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A504: .4byte gScript
_0801A508: .4byte 0x00005958
_0801A50C: .4byte 0x00005978
_0801A510: .4byte 0x0000595A
_0801A514: .4byte 0x0000595B
_0801A518: .4byte 0x0000595C
_0801A51C: .4byte 0x0000597C
_0801A520: .4byte 0x000067AC
_0801A524: .4byte 0x0000FFFF
_0801A528: .4byte 0x00005984
_0801A52C: .4byte 0x00005988

	thumb_func_start sub_0801A530
sub_0801A530: @ 0x0801A530
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801A544 @ =gScript
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	bl sub_0801A548
	pop {r0}
	bx r0
	.align 2, 0
_0801A544: .4byte gScript

	thumb_func_start sub_0801A548
sub_0801A548: @ 0x0801A548
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801A570 @ =gScript
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r3, _0801A574 @ =0x000058B4
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r1]
	ldr r0, _0801A578 @ =0x000058B6
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0801A570: .4byte gScript
_0801A574: .4byte 0x000058B4
_0801A578: .4byte 0x000058B6

	thumb_func_start sub_0801A57C
sub_0801A57C: @ 0x0801A57C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801A590 @ =gScript
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	bl sub_0801A594
	pop {r0}
	bx r0
	.align 2, 0
_0801A590: .4byte gScript

	thumb_func_start sub_0801A594
sub_0801A594: @ 0x0801A594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801A5B4 @ =gScript
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r3, _0801A5B8 @ =0x000058B0
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0801A5BC @ =0x000058B2
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0801A5B4: .4byte gScript
_0801A5B8: .4byte 0x000058B0
_0801A5BC: .4byte 0x000058B2

	thumb_func_start sub_0801A5C0
sub_0801A5C0: @ 0x0801A5C0
	ldr r3, _0801A5E4 @ =gScript
	ldrb r1, [r3, #0xe]
	lsrs r1, r1, #6
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	ldr r1, _0801A5E8 @ =0x000058C0
	adds r3, r3, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	ldrh r1, [r2, #6]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_0801A5E4: .4byte gScript
_0801A5E8: .4byte 0x000058C0

	thumb_func_start sub_0801A5EC
sub_0801A5EC: @ 0x0801A5EC
	push {lr}
	ldr r0, _0801A600 @ =gScript
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0801A600: .4byte gScript

	thumb_func_start sub_0801A604
sub_0801A604: @ 0x0801A604
	push {lr}
	ldr r0, _0801A618 @ =gScript
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0801A618: .4byte gScript

	thumb_func_start sub_0801A61C
sub_0801A61C: @ 0x0801A61C
	lsls r0, r0, #0x10
	ldr r1, _0801A634 @ =gScript
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_0801A634: .4byte gScript

	thumb_func_start sub_0801A638
sub_0801A638: @ 0x0801A638
	lsls r0, r0, #0x10
	ldr r1, _0801A64C @ =gScript
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r0, #1
	lsls r0, r0, #8
	bx lr
	.align 2, 0
_0801A64C: .4byte gScript

	thumb_func_start sub_0801A650
sub_0801A650: @ 0x0801A650
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_0801A678
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0801A694
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A678
sub_0801A678: @ 0x0801A678
	lsls r0, r0, #0x10
	ldr r1, _0801A690 @ =gScript
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_0801A690: .4byte gScript

	thumb_func_start sub_0801A694
sub_0801A694: @ 0x0801A694
	lsls r0, r0, #0x10
	ldr r1, _0801A6A8 @ =gScript
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r0, #1
	bx lr
	.align 2, 0
_0801A6A8: .4byte gScript

	thumb_func_start sub_0801A6AC
sub_0801A6AC: @ 0x0801A6AC
	ldr r1, _0801A6BC @ =gUnknown_08D2D634
	ldr r0, _0801A6C0 @ =gScript
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0801A6BC: .4byte gUnknown_08D2D634
_0801A6C0: .4byte gScript

	thumb_func_start sub_0801A6C4
sub_0801A6C4: @ 0x0801A6C4
	lsls r0, r0, #0x10
	ldr r1, _0801A6D4 @ =gScript
	lsrs r0, r0, #0xf
	adds r1, #0x14
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0801A6D4: .4byte gScript

	thumb_func_start sub_0801A6D8
sub_0801A6D8: @ 0x0801A6D8
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801A704 @ =gScript
	ldr r1, _0801A708 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0801A70C @ =0x0000032A
	cmp r1, r0
	bgt _0801A718
	subs r0, #1
	cmp r1, r0
	bge _0801A738
	subs r0, #0x64
	cmp r1, r0
	bgt _0801A710
	subs r0, #3
	cmp r1, r0
	bge _0801A738
	cmp r1, #0xe8
	beq _0801A72E
	b _0801A75C
	.align 2, 0
_0801A704: .4byte gScript
_0801A708: .4byte 0x000067AC
_0801A70C: .4byte 0x0000032A
_0801A710:
	ldr r0, _0801A714 @ =0x00000322
	b _0801A728
	.align 2, 0
_0801A714: .4byte 0x00000322
_0801A718:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	blt _0801A75C
	adds r0, #1
	cmp r1, r0
	ble _0801A738
	adds r0, #2
_0801A728:
	cmp r1, r0
	beq _0801A738
	b _0801A75C
_0801A72E:
	ldr r0, _0801A734 @ =0x0000064D
	b _0801A75E
	.align 2, 0
_0801A734: .4byte 0x0000064D
_0801A738:
	ldr r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	blt _0801A75C
	lsls r0, r1, #1
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0801A75C
	cmp r0, #0xd
	bne _0801A754
	ldr r0, _0801A750 @ =0x0000061F
	b _0801A75E
	.align 2, 0
_0801A750: .4byte 0x0000061F
_0801A754:
	ldr r0, _0801A758 @ =0x000005DB
	b _0801A75E
	.align 2, 0
_0801A758: .4byte 0x000005DB
_0801A75C:
	movs r0, #0
_0801A75E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A764
sub_0801A764: @ 0x0801A764
	push {lr}
	cmp r0, #0
	beq _0801A774
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r1, r0, #0x1c
	cmp r1, #0
	bne _0801A778
_0801A774:
	movs r0, #0
	b _0801A7A2
_0801A778:
	cmp r1, #0xb
	bne _0801A784
	ldr r0, _0801A780 @ =0x000003F3
	b _0801A7A2
	.align 2, 0
_0801A780: .4byte 0x000003F3
_0801A784:
	cmp r1, #0xc
	bne _0801A790
	ldr r0, _0801A78C @ =0x0000021B
	b _0801A7A2
	.align 2, 0
_0801A78C: .4byte 0x0000021B
_0801A790:
	cmp r1, #0xd
	beq _0801A7A0
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	b _0801A7A2
_0801A7A0:
	ldr r0, _0801A7A8 @ =0x0000061F
_0801A7A2:
	pop {r1}
	bx r1
	.align 2, 0
_0801A7A8: .4byte 0x0000061F

	thumb_func_start sub_0801A7AC
sub_0801A7AC: @ 0x0801A7AC
	push {lr}
	cmp r0, #0
	beq _0801A7BC
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0801A7C0
_0801A7BC:
	movs r0, #0
	b _0801A7C6
_0801A7C0:
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
_0801A7C6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A7CC
sub_0801A7CC: @ 0x0801A7CC
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0801A7F0 @ =gUnknown_02000040
	movs r0, #0
	strh r0, [r2]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801A7F4
	bl sub_0801A5EC
	b _0801A7FA
	.align 2, 0
_0801A7F0: .4byte gUnknown_02000040
_0801A7F4:
	lsrs r0, r2, #0x10
	bl sub_0801A61C
_0801A7FA:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A80A
	lsls r0, r2, #0x14
	lsrs r2, r0, #0x10
_0801A80A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801A834
	ldr r0, _0801A828 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0801A830
	ldr r1, _0801A82C @ =gUnknown_02000040
	movs r0, #1
	strh r0, [r1]
	adds r0, r2, r4
	b _0801A856
	.align 2, 0
_0801A828: .4byte gScript
_0801A82C: .4byte gUnknown_02000040
_0801A830:
	movs r4, #0
	b _0801A85A
_0801A834:
	cmp r0, r2
	ble _0801A85A
	ldr r0, _0801A84C @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0801A854
	ldr r1, _0801A850 @ =gUnknown_02000040
	movs r0, #1
	strh r0, [r1]
	subs r0, r4, r2
	b _0801A856
	.align 2, 0
_0801A84C: .4byte gScript
_0801A850: .4byte gUnknown_02000040
_0801A854:
	subs r0, r2, #1
_0801A856:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801A85A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A868
sub_0801A868: @ 0x0801A868
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0801A88C @ =gUnknown_02000040
	movs r0, #0
	strh r0, [r2]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801A890
	bl sub_0801A604
	b _0801A896
	.align 2, 0
_0801A88C: .4byte gUnknown_02000040
_0801A890:
	lsrs r0, r2, #0x10
	bl sub_0801A638
_0801A896:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A8A6
	lsls r0, r2, #0x14
	lsrs r2, r0, #0x10
_0801A8A6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801A8D0
	ldr r0, _0801A8C4 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0801A8CC
	ldr r1, _0801A8C8 @ =gUnknown_02000040
	movs r0, #1
	strh r0, [r1]
	adds r0, r2, r4
	b _0801A8F2
	.align 2, 0
_0801A8C4: .4byte gScript
_0801A8C8: .4byte gUnknown_02000040
_0801A8CC:
	movs r4, #0
	b _0801A8F6
_0801A8D0:
	cmp r0, r2
	ble _0801A8F6
	ldr r0, _0801A8E8 @ =gScript
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0801A8F0
	ldr r1, _0801A8EC @ =gUnknown_02000040
	movs r0, #1
	strh r0, [r1]
	subs r0, r4, r2
	b _0801A8F2
	.align 2, 0
_0801A8E8: .4byte gScript
_0801A8EC: .4byte gUnknown_02000040
_0801A8F0:
	subs r0, r2, #1
_0801A8F2:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801A8F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A904
sub_0801A904: @ 0x0801A904
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x14
	mov r8, r6
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _0801A946
	cmp r4, r6
	bge _0801A946
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0801A946
	cmp r2, r1
	blt _0801A950
_0801A946:
	ldr r0, _0801A94C @ =gUnknown_08D2D63C
	b _0801A968
	.align 2, 0
_0801A94C: .4byte gUnknown_08D2D63C
_0801A950:
	ldr r0, _0801A974 @ =gScript
	lsls r1, r5, #2
	adds r0, #0x5c
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r1, r4, #1
	lsls r2, r2, #1
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	adds r1, r1, r2
	adds r0, r0, r1
_0801A968:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A974: .4byte gScript

	thumb_func_start sub_0801A978
sub_0801A978: @ 0x0801A978
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x14
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x14
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	cmp r1, #0
	blt _0801A9B4
	cmp r1, r6
	bge _0801A9B4
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0801A9B4
	cmp r2, r3
	blt _0801A9BC
_0801A9B4:
	ldr r0, _0801A9B8 @ =gUnknown_08D2D640
	b _0801A9D0
	.align 2, 0
_0801A9B8: .4byte gUnknown_08D2D640
_0801A9BC:
	adds r0, r5, #0
	bl sub_0801A904
	ldr r1, [r0]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1c
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
_0801A9D0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A9D8
sub_0801A9D8: @ 0x0801A9D8
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AA10 @ =gScript
	ldrb r0, [r0, #8]
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0801AA14
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	ldr r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _0801AA14
	movs r0, #1
	b _0801AA16
	.align 2, 0
_0801AA10: .4byte gScript
_0801AA14:
	movs r0, #0
_0801AA16:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801AA1C
sub_0801AA1C: @ 0x0801AA1C
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801AA68
	cmp r0, #2
	beq _0801AA4E
	cmp r0, #2
	bgt _0801AA3E
	cmp r0, #1
	beq _0801AA48
	b _0801AA68
_0801AA3E:
	cmp r0, #3
	beq _0801AA54
	cmp r0, #4
	beq _0801AA60
	b _0801AA68
_0801AA48:
	movs r1, #2
	ldrsh r0, [r4, r1]
	b _0801AA58
_0801AA4E:
	movs r1, #2
	ldrsh r0, [r4, r1]
	b _0801AA64
_0801AA54:
	movs r1, #0
	ldrsh r0, [r4, r1]
_0801AA58:
	cmp r0, #0
	ble _0801AA68
_0801AA5C:
	movs r0, #1
	b _0801AA6A
_0801AA60:
	movs r1, #0
	ldrsh r0, [r4, r1]
_0801AA64:
	cmp r0, #0
	blt _0801AA5C
_0801AA68:
	movs r0, #0
_0801AA6A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801AA70
sub_0801AA70: @ 0x0801AA70
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AA90 @ =gScript
	ldrb r0, [r0, #8]
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _0801AA94
	movs r0, #0
	b _0801AAAC
	.align 2, 0
_0801AA90: .4byte gScript
_0801AA94:
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	ldr r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1d
_0801AAAC:
	pop {r1}
	bx r1

	thumb_func_start sub_0801AAB0
sub_0801AAB0: @ 0x0801AAB0
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AAF4 @ =gScript
	ldrb r0, [r0, #8]
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0801AAF8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	ldr r1, [r0]
	lsls r0, r1, #0x13
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0801AAF8
	lsls r0, r1, #6
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0801AAF8
	lsls r0, r0, #1
	b _0801AAFA
	.align 2, 0
_0801AAF4: .4byte gScript
_0801AAF8:
	movs r0, #1
_0801AAFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801AB00
sub_0801AB00: @ 0x0801AB00
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AB18 @ =gScript
	ldr r1, _0801AB1C @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801AB24
	ldr r1, _0801AB20 @ =0x04000001
	b _0801AB26
	.align 2, 0
_0801AB18: .4byte gScript
_0801AB1C: .4byte 0x0000829B
_0801AB20: .4byte 0x04000001
_0801AB24:
	ldr r1, _0801AB34 @ =0x04000011
_0801AB26:
	adds r0, r3, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0801AB34: .4byte 0x04000011

	thumb_func_start sub_0801AB38
sub_0801AB38: @ 0x0801AB38
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801AB50
sub_0801AB50: @ 0x0801AB50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r0, #0
	bl sub_08036BD8
	adds r7, r0, #0
	mov r4, sp
	mov r1, sp
	bl sub_08036BEC
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	adds r0, r7, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, _0801ACC8 @ =0x04000001
	mov r2, sp
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801AB8A
	b _0801ACC4
_0801AB8A:
	ldrh r1, [r7]
	mov r0, sp
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	ldrh r6, [r7, #2]
	adds r1, r1, r6
	strh r1, [r4, #2]
	adds r0, r7, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x11
	subs r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #5
	bl sub_08036BD8
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _0801ACCC @ =gScript
	ldr r1, _0801ACD0 @ =0x00008370
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _0801AC4E
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov sb, r5
	adds r5, r1, #0
	adds r2, r3, #0
	adds r2, #0xac
_0801ABDA:
	ldrb r1, [r2, #0x10]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0801AC40
	ldrb r0, [r2, #0x1e]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AC40
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801AC00
	ldrb r0, [r2, #0x1f]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801AC40
_0801AC00:
	ldrb r0, [r2, #0x1c]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0801AC40
	mov r0, sp
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801AC1A
	rsbs r1, r1, #0
_0801AC1A:
	adds r0, r3, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	add r0, r8
	cmp r1, r0
	bge _0801AC40
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov r6, ip
	subs r1, r6, r1
	cmp r1, #0
	bge _0801AC3A
	rsbs r1, r1, #0
_0801AC3A:
	add r0, sb
	cmp r1, r0
	blt _0801ACC4
_0801AC40:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #0xd0
	adds r3, #0xd0
	cmp r4, r5
	blo _0801ABDA
_0801AC4E:
	mov r4, sp
	adds r0, r7, #0
	mov r1, sp
	bl sub_08036BEC
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	adds r5, r7, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	ldrh r1, [r1]
	ldrh r2, [r4, #2]
	bl sub_0801AF00
	adds r4, r0, #0
	adds r6, r5, #0
	cmp r4, #0
	beq _0801ACA8
	mov r5, sp
_0801AC7C:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801ACC4
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ACC4
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	adds r0, r4, #0
	bl sub_0801AFA4
	adds r4, r0, #0
	cmp r4, #0
	bne _0801AC7C
_0801ACA8:
	adds r0, r7, #0
	mov r1, sp
	bl sub_08036BEC
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #8
	mov r2, sp
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801ACD4
_0801ACC4:
	movs r0, #0
	b _0801AD30
	.align 2, 0
_0801ACC8: .4byte 0x04000001
_0801ACCC: .4byte gScript
_0801ACD0: .4byte 0x00008370
_0801ACD4:
	ldr r0, _0801AD40 @ =gScript
	ldr r1, _0801AD44 @ =0x000067AC
	adds r6, r0, r1
	ldrh r0, [r6]
	bl sub_0801B0C4
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AD2E
	add r5, sp, #4
_0801ACE8:
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	ldr r2, _0801AD48 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r4, #7]
	lsls r0, r0, #4
	strh r0, [r5, #2]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1a
	adds r0, #0x10
	strh r0, [r5, #4]
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r5, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ACC4
	ldrh r0, [r6]
	adds r1, r4, #0
	bl sub_0801B0F8
	adds r4, r0, #0
	cmp r4, #0
	bne _0801ACE8
_0801AD2E:
	movs r0, #1
_0801AD30:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801AD40: .4byte gScript
_0801AD44: .4byte 0x000067AC
_0801AD48: .4byte 0xFFFF0000

	thumb_func_start sub_0801AD4C
sub_0801AD4C: @ 0x0801AD4C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r3, #0xb
	bhi _0801AD5E
	cmp r2, #0x3f
	bls _0801AD68
_0801AD5E:
	ldr r0, _0801AD64 @ =gUnknown_02000038
	b _0801AD78
	.align 2, 0
_0801AD64: .4byte gUnknown_02000038
_0801AD68:
	ldr r0, _0801AD7C @ =gScript
	ldr r1, _0801AD80 @ =0x00004088
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r3, #9
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r0, r0, r1
_0801AD78:
	pop {r1}
	bx r1
	.align 2, 0
_0801AD7C: .4byte gScript
_0801AD80: .4byte 0x00004088

	thumb_func_start sub_0801AD84
sub_0801AD84: @ 0x0801AD84
	lsls r0, r0, #0x10
	ldr r1, _0801AD98 @ =gScript
	ldr r2, _0801AD9C @ =0x000058AC
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
_0801AD98: .4byte gScript
_0801AD9C: .4byte 0x000058AC

	thumb_func_start sub_0801ADA0
sub_0801ADA0: @ 0x0801ADA0
	push {r4, lr}
	adds r4, r1, #0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	bl sub_0801ADCC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	bne _0801ADC2
	movs r0, #0
	b _0801ADC6
_0801ADC2:
	adds r0, r2, #4
	adds r0, r4, r0
_0801ADC6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801ADCC
sub_0801ADCC: @ 0x0801ADCC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldrb r2, [r0, #1]
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0xc0
	bne _0801ADE8
	ldr r0, _0801ADE4 @ =gUnknown_08D2D644
	adds r0, r1, r0
	b _0801AE0C
	.align 2, 0
_0801ADE4: .4byte gUnknown_08D2D644
_0801ADE8:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0801ADFC
	ldr r0, _0801ADF8 @ =gUnknown_08D2D648
	adds r0, r1, r0
	b _0801AE0C
	.align 2, 0
_0801ADF8: .4byte gUnknown_08D2D648
_0801ADFC:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0801AE08
	adds r0, r1, #0
	b _0801AE0E
_0801AE08:
	ldr r0, _0801AE14 @ =gUnknown_08D2D64C
	adds r0, r3, r0
_0801AE0C:
	ldrb r0, [r0]
_0801AE0E:
	pop {r1}
	bx r1
	.align 2, 0
_0801AE14: .4byte gUnknown_08D2D64C

	thumb_func_start sub_0801AE18
sub_0801AE18: @ 0x0801AE18
	push {lr}
	ldrb r1, [r0, #1]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0xc0
	bne _0801AE2C
	ldr r0, _0801AE28 @ =gUnknown_08D2D644
	b _0801AE4E
	.align 2, 0
_0801AE28: .4byte gUnknown_08D2D644
_0801AE2C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801AE3C
	ldr r0, _0801AE38 @ =gUnknown_08D2D648
	b _0801AE4E
	.align 2, 0
_0801AE38: .4byte gUnknown_08D2D648
_0801AE3C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801AE4C
	ldr r0, _0801AE48 @ =gUnknown_08D2D650
	b _0801AE4E
	.align 2, 0
_0801AE48: .4byte gUnknown_08D2D650
_0801AE4C:
	ldr r0, _0801AE54 @ =gUnknown_08D2D64C
_0801AE4E:
	pop {r1}
	bx r1
	.align 2, 0
_0801AE54: .4byte gUnknown_08D2D64C

	thumb_func_start sub_0801AE58
sub_0801AE58: @ 0x0801AE58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801AED4 @ =gScript
	ldr r1, _0801AED8 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #2
	bl sub_0801B45C
	adds r6, r0, #0
	ldr r1, _0801AEDC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r4
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #2]
	movs r5, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801AEF4
	add r4, sp, #4
_0801AE94:
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #4
	ldr r2, _0801AEDC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #4
	strh r0, [r4, #2]
	ldrb r0, [r6]
	lsrs r0, r0, #6
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r4, #4]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1a
	adds r0, #0x10
	strh r0, [r4, #6]
	adds r0, r4, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801AEE0
	cmp r7, #0
	beq _0801AED0
	strh r5, [r7]
_0801AED0:
	adds r0, r6, #0
	b _0801AEF6
	.align 2, 0
_0801AED4: .4byte gScript
_0801AED8: .4byte 0x000067AC
_0801AEDC: .4byte 0xFFFF0000
_0801AEE0:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #0xc
	cmp r5, #0x31
	bhi _0801AEF4
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AE94
_0801AEF4:
	movs r0, #0
_0801AEF6:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801AF00
sub_0801AF00: @ 0x0801AF00
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801AF78 @ =gScript
	ldr r1, _0801AF7C @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0xa
	bl sub_0801B45C
	adds r6, r0, #0
	ldr r1, _0801AF80 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r4
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #2]
	movs r5, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801AF98
	add r4, sp, #4
_0801AF3A:
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #4
	ldr r2, _0801AF80 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #4
	strh r0, [r4, #2]
	ldr r0, [r6]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r4, #4]
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r4, #6]
	adds r0, r4, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801AF84
	adds r0, r6, #0
	b _0801AF9A
	.align 2, 0
_0801AF78: .4byte gScript
_0801AF7C: .4byte 0x000067AC
_0801AF80: .4byte 0xFFFF0000
_0801AF84:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #0xc
	cmp r5, #0x31
	bhi _0801AF98
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AF3A
_0801AF98:
	movs r0, #0
_0801AF9A:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801AFA4
sub_0801AFA4: @ 0x0801AFA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r4, r7, #0
	adds r4, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0801B018 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r0, sp
	strh r3, [r0, #2]
	movs r6, #0
	ldrh r1, [r7, #8]
	movs r0, #0x31
	subs r0, r0, r1
	cmp r6, r0
	bge _0801B036
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801B036
	add r5, sp, #4
_0801AFDA:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r2, _0801B018 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #4
	strh r0, [r5, #2]
	ldr r0, [r4]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r5, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r5, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B01C
	adds r0, r4, #0
	b _0801B038
	.align 2, 0
_0801B018: .4byte 0xFFFF0000
_0801B01C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0xc
	ldrh r1, [r7, #8]
	movs r0, #0x31
	subs r0, r0, r1
	cmp r6, r0
	bge _0801B036
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AFDA
_0801B036:
	movs r0, #0
_0801B038:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B040
sub_0801B040: @ 0x0801B040
	push {r4, r5, r6, lr}
	sub sp, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0801B09C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	strh r2, [r0, #2]
	ldr r5, _0801B0A0 @ =gUnknown_0200B590
	movs r6, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B0BA
	add r4, sp, #4
_0801B06A:
	ldrh r1, [r5, #4]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0801B09C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	subs r0, #0x10
	strh r0, [r4, #2]
	movs r0, #0x10
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	adds r0, r4, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B0A4
	adds r0, r5, #0
	b _0801B0BC
	.align 2, 0
_0801B09C: .4byte 0xFFFF0000
_0801B0A0: .4byte gUnknown_0200B590
_0801B0A4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0xc
	cmp r6, #0x13
	bhi _0801B0BA
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B06A
_0801B0BA:
	movs r0, #0
_0801B0BC:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B0C4
sub_0801B0C4: @ 0x0801B0C4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	bl sub_0801B4E4
	adds r1, r0, #0
	movs r2, #0
	ldr r3, _0801B0E0 @ =0x000005DB
_0801B0D6:
	ldrh r0, [r1, #4]
	cmp r0, r4
	bne _0801B0E4
	adds r0, r1, #0
	b _0801B0F2
	.align 2, 0
_0801B0E0: .4byte 0x000005DB
_0801B0E4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #8
	cmp r2, r3
	bls _0801B0D6
	movs r0, #0
_0801B0F2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B0F8
sub_0801B0F8: @ 0x0801B0F8
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	bl sub_0801B4E4
	adds r1, r0, #0
	subs r0, r4, r1
	asrs r0, r0, #3
	cmp r0, #0
	bge _0801B112
	adds r0, #7
_0801B112:
	lsls r0, r0, #0xd
	adds r1, r4, #0
	adds r1, #8
	lsrs r2, r0, #0x10
	ldr r0, _0801B12C @ =0x000005DB
	cmp r2, r0
	bhi _0801B13C
	adds r3, r0, #0
_0801B122:
	ldrh r0, [r1, #4]
	cmp r0, r5
	bne _0801B130
	adds r0, r1, #0
	b _0801B13E
	.align 2, 0
_0801B12C: .4byte 0x000005DB
_0801B130:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #8
	cmp r2, r3
	bls _0801B122
_0801B13C:
	movs r0, #0
_0801B13E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B144
sub_0801B144: @ 0x0801B144
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0801B18C @ =gScript
	ldr r1, _0801B190 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B480
	adds r5, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r5, r5, r0
	ldrb r1, [r5]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0801B1B4
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0801B194
	adds r0, r5, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B194
	ldrh r0, [r5]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x14
	b _0801B1B6
	.align 2, 0
_0801B18C: .4byte gScript
_0801B190: .4byte 0x000067AC
_0801B194:
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0801B1B4
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B1B4
	ldr r0, [r5]
	lsls r0, r0, #5
	lsrs r0, r0, #0x14
	b _0801B1B6
_0801B1B4:
	adds r0, r6, #0
_0801B1B6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B1BC
sub_0801B1BC: @ 0x0801B1BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r2, #0
	str r3, [sp, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, _0801B1FC @ =gScript
	ldr r1, _0801B200 @ =0x000067AC
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_0801B520
	ldr r1, _0801B204 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r4
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #2]
	ldr r0, _0801B208 @ =0x00005FE0
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0
	mov sl, r1
	b _0801B2AA
	.align 2, 0
_0801B1FC: .4byte gScript
_0801B200: .4byte 0x000067AC
_0801B204: .4byte 0xFFFF0000
_0801B208: .4byte 0x00005FE0
_0801B20C:
	adds r4, r1, #0
	mov r1, sb
	ldr r7, [r1, #4]
	movs r0, #0
	mov r8, r0
	ldrb r1, [r4, #8]
	cmp r8, r1
	bhs _0801B296
	add r6, sp, #4
_0801B21E:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801B234
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #0x1b
	lsrs r5, r0, #0x1b
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x16
	lsrs r3, r0, #0x1b
	b _0801B240
_0801B234:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r5, r0, #0x1d
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r3, r0, #0x1d
_0801B240:
	ldrb r1, [r7, #1]
	lsls r1, r1, #4
	ldr r2, _0801B280 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r7, #2]
	lsls r0, r0, #4
	strh r0, [r6, #2]
	adds r0, r5, #1
	lsls r0, r0, #4
	strh r0, [r6, #4]
	adds r0, r3, #1
	lsls r0, r0, #4
	strh r0, [r6, #6]
	adds r0, r6, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B284
	mov r1, sl
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	mov r1, r8
	ldr r0, [sp, #0x30]
	strh r1, [r0]
	movs r0, #1
	b _0801B2C2
	.align 2, 0
_0801B280: .4byte 0xFFFF0000
_0801B284:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r7, #4
	ldrb r0, [r4, #8]
	cmp r8, r0
	blo _0801B21E
_0801B296:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x10
	add sb, r1
	cmp r0, #0x18
	bhi _0801B2C0
	mov r0, sb
_0801B2AA:
	ldrb r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B2C0
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801B20C
_0801B2C0:
	movs r0, #0
_0801B2C2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801B2D4
sub_0801B2D4: @ 0x0801B2D4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B3D8
	adds r2, r0, #0
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0801B2E6:
	lsls r0, r1, #1
	adds r0, r2, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r3
	beq _0801B30C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xb
	bls _0801B2E6
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801B30C
	movs r0, #1
	b _0801B30E
_0801B30C:
	movs r0, #0
_0801B30E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B314
sub_0801B314: @ 0x0801B314
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r0, #0
	ldr r0, _0801B338 @ =gUnknown_02016028
	ldr r4, _0801B33C @ =0x00003686
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #1
	beq _0801B35E
	cmp r0, #1
	bgt _0801B340
	cmp r0, #0
	beq _0801B346
	b _0801B38A
	.align 2, 0
_0801B338: .4byte gUnknown_02016028
_0801B33C: .4byte 0x00003686
_0801B340:
	cmp r0, #2
	beq _0801B372
	b _0801B38A
_0801B346:
	cmp r1, #0x1f
	bls _0801B358
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #4
	adds r3, r3, r0
_0801B358:
	cmp r2, #0x1f
	bhi _0801B376
	b _0801B386
_0801B35E:
	cmp r1, #0x1f
	bls _0801B386
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #4
	adds r3, r3, r4
	b _0801B386
_0801B372:
	cmp r2, #0x1f
	bls _0801B386
_0801B376:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	adds r3, r3, r2
	b _0801B394
_0801B386:
	adds r0, r2, #0
	b _0801B394
_0801B38A:
	ldr r0, _0801B390 @ =gUnknown_08D2D654
	b _0801B39E
	.align 2, 0
_0801B390: .4byte gUnknown_08D2D654
_0801B394:
	lsls r0, r0, #5
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r0, r3, #0
_0801B39E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B3A4
sub_0801B3A4: @ 0x0801B3A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801B3B0 @ =gUnknown_080C5BB8
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801B3B0: .4byte gUnknown_080C5BB8

	thumb_func_start sub_0801B3B4
sub_0801B3B4: @ 0x0801B3B4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B3D4 @ =gUnknown_08D2E1D8
	movs r1, #0
	bl sub_0800289C
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B3D4: .4byte gUnknown_08D2E1D8

	thumb_func_start sub_0801B3D8
sub_0801B3D8: @ 0x0801B3D8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B3F4 @ =gUnknown_08D34F44
	movs r1, #0
	bl sub_0800289C
	movs r1, #0x1a
	muls r1, r4, r1
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B3F4: .4byte gUnknown_08D34F44

	thumb_func_start sub_0801B3F8
sub_0801B3F8: @ 0x0801B3F8
	movs r0, #0
	bx lr

	thumb_func_start sub_0801B3FC
sub_0801B3FC: @ 0x0801B3FC
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B410 @ =gUnknown_08D3B4E0
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B410: .4byte gUnknown_08D3B4E0

	thumb_func_start sub_0801B414
sub_0801B414: @ 0x0801B414
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B428 @ =gUnknown_08F3C344
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B428: .4byte gUnknown_08F3C344

	thumb_func_start sub_0801B42C
sub_0801B42C: @ 0x0801B42C
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B440 @ =gUnknown_08F9003C
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B440: .4byte gUnknown_08F9003C

	thumb_func_start sub_0801B444
sub_0801B444: @ 0x0801B444
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B458 @ =0x0904D9CC
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B458: .4byte 0x0904D9CC

	thumb_func_start sub_0801B45C
sub_0801B45C: @ 0x0801B45C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	cmp r1, #2
	beq _0801B46E
	movs r0, #1
	orrs r2, r0
_0801B46E:
	ldr r0, _0801B47C @ =0x0911DEB4
	adds r1, r2, #0
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B47C: .4byte 0x0911DEB4

	thumb_func_start sub_0801B480
sub_0801B480: @ 0x0801B480
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B494 @ =0x0912C390
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B494: .4byte 0x0912C390

	thumb_func_start sub_0801B498
sub_0801B498: @ 0x0801B498
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801B4BC @ =0x09132B58
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _0801B4C0 @ =gScript
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B4BC: .4byte 0x09132B58
_0801B4C0: .4byte gScript

	thumb_func_start sub_0801B4C4
sub_0801B4C4: @ 0x0801B4C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B4E0 @ =0x09165C10
	movs r1, #0
	bl sub_0800289C
	lsls r4, r4, #4
	adds r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B4E0: .4byte 0x09165C10

	thumb_func_start sub_0801B4E4
sub_0801B4E4: @ 0x0801B4E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B500 @ =0x09169C1C
	movs r1, #0
	bl sub_0800289C
	lsls r4, r4, #3
	adds r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B500: .4byte 0x09169C1C

	thumb_func_start sub_0801B504
sub_0801B504: @ 0x0801B504
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B51C @ =0x0916CB08
	bl sub_0800289C
	ldr r1, [r0]
	adds r1, #0x14
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0801B51C: .4byte 0x0916CB08

	thumb_func_start sub_0801B520
sub_0801B520: @ 0x0801B520
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B538 @ =0x0916CB08
	bl sub_0800289C
	ldr r1, [r0, #4]
	adds r1, #0x14
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0801B538: .4byte 0x0916CB08

	thumb_func_start sub_0801B53C
sub_0801B53C: @ 0x0801B53C
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B554 @ =0x0916CB08
	bl sub_0800289C
	ldr r1, [r0, #8]
	adds r1, #0x14
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0801B554: .4byte 0x0916CB08

	thumb_func_start sub_0801B558
sub_0801B558: @ 0x0801B558
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B570 @ =0x0916CB08
	bl sub_0800289C
	ldr r1, [r0, #0xc]
	adds r1, #0x14
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0801B570: .4byte 0x0916CB08

	thumb_func_start sub_0801B574
sub_0801B574: @ 0x0801B574
	push {r4, r5, lr}
	ldr r3, _0801B5C8 @ =gScript
	ldr r4, _0801B5CC @ =0x000084BC
	adds r2, r3, r4
	movs r4, #0
	str r4, [r2]
	ldr r5, _0801B5D0 @ =0x000084B8
	adds r2, r3, r5
	str r0, [r2]
	ldr r2, _0801B5D4 @ =0x00009476
	adds r0, r3, r2
	strh r1, [r0]
	ldr r5, _0801B5D8 @ =0x00009478
	adds r0, r3, r5
	strh r4, [r0]
	ldr r1, _0801B5DC @ =0x0000947A
	adds r0, r3, r1
	strh r4, [r0]
	adds r2, #6
	adds r1, r3, r2
	ldr r0, _0801B5E0 @ =0x0000FFFF
	strh r0, [r1]
	ldr r4, _0801B5E4 @ =0x0000947E
	adds r1, r3, r4
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r5, #8
	adds r3, r3, r5
	ldrb r1, [r3]
	subs r0, #0x10
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B5C8: .4byte gScript
_0801B5CC: .4byte 0x000084BC
_0801B5D0: .4byte 0x000084B8
_0801B5D4: .4byte 0x00009476
_0801B5D8: .4byte 0x00009478
_0801B5DC: .4byte 0x0000947A
_0801B5E0: .4byte 0x0000FFFF
_0801B5E4: .4byte 0x0000947E

	thumb_func_start sub_0801B5E8
sub_0801B5E8: @ 0x0801B5E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0801B78C @ =0xFFFFF030
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #5
	bls _0801B600
	b _0801B776
_0801B600:
	ldr r7, _0801B790 @ =gScript
	ldr r1, _0801B794 @ =0x000067AC
	adds r0, r7, r1
	ldrh r0, [r0]
	lsls r2, r6, #2
	mov r8, r2
	ldr r3, _0801B798 @ =0x00008498
	adds r4, r7, r3
	add r4, r8
	lsls r5, r6, #1
	ldr r1, _0801B79C @ =0x00000FBC
	add r1, sp
	str r5, [r1]
	ldr r2, _0801B7A0 @ =0x000084AC
	adds r1, r7, r2
	adds r5, r5, r1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08027E74
	ldr r0, [r4]
	mov r4, r8
	ldr r1, _0801B7A4 @ =0x00000FC8
	add r1, sp
	str r4, [r1]
	ldr r2, _0801B79C @ =0x00000FBC
	add r2, sp
	ldr r2, [r2]
	ldr r3, _0801B7A8 @ =0x00000FC4
	add r3, sp
	str r2, [r3]
	cmp r0, #0
	bne _0801B646
	b _0801B776
_0801B646:
	ldrh r5, [r5]
	ldr r3, _0801B7AC @ =0x00000FB4
	add r3, sp
	str r5, [r3]
	ldr r4, _0801B7B0 @ =0x00009474
	adds r0, r7, r4
	ldrh r0, [r0]
	ldr r5, _0801B7B4 @ =0x00000FB8
	add r5, sp
	str r0, [r5]
	ldr r1, _0801B7B8 @ =0x00009480
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	mov sl, r0
	ldr r2, _0801B7BC @ =0x000084C0
	adds r0, r7, r2
	ldr r0, [r0]
	movs r3, #0xfb
	lsls r3, r3, #4
	add r3, sp
	str r0, [r3]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	cmp r6, #0
	bne _0801B68A
	ldr r4, _0801B7C0 @ =0x00008494
	adds r0, r7, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0801B69E
_0801B68A:
	cmp r6, #2
	bne _0801B6A2
	ldr r0, _0801B790 @ =gScript
	ldr r5, _0801B7C0 @ =0x00008494
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801B6A2
	mov r1, sp
_0801B69E:
	movs r0, #1
	strh r0, [r1]
_0801B6A2:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B6C6
	ldr r4, _0801B7C4 @ =gUnknown_0200F064
	add r1, sp, #4
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08001B18
	ldr r0, _0801B7C8 @ =0xFFFFF060
	adds r4, r4, r0
	add r1, sp, #0x10
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_08001B18
_0801B6C6:
	ldr r7, _0801B790 @ =gScript
	ldr r1, _0801B7B8 @ =0x00009480
	adds r3, r7, r1
	movs r0, #7
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r2, _0801B7B0 @ =0x00009474
	adds r2, r2, r7
	mov r8, r2
	movs r1, #0
	strh r1, [r2]
	movs r4, #0x11
	rsbs r4, r4, #0
	mov sb, r4
	ands r0, r4
	subs r1, #0x21
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3]
	ldr r5, _0801B798 @ =0x00008498
	adds r0, r7, r5
	ldr r1, _0801B7A4 @ =0x00000FC8
	add r1, sp
	ldr r1, [r1]
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r2, _0801B7A0 @ =0x000084AC
	adds r4, r7, r2
	ldr r5, _0801B7A8 @ =0x00000FC4
	add r5, sp
	ldr r5, [r5]
	adds r4, r5, r4
	adds r1, r4, #0
	movs r2, #1
	ldr r5, _0801B7CC @ =0x00000FCC
	add r5, sp
	str r3, [r5]
	bl exec_cmd
	ldr r0, _0801B7AC @ =0x00000FB4
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _0801B7B4 @ =0x00000FB8
	add r1, sp
	ldrh r2, [r1]
	mov r1, r8
	strh r2, [r1]
	mov r2, sl
	lsls r1, r2, #4
	ldr r4, _0801B7CC @ =0x00000FCC
	add r4, sp
	ldr r3, [r4]
	ldrb r0, [r3]
	mov r5, sb
	ands r5, r0
	orrs r5, r1
	strb r5, [r3]
	ldr r3, _0801B7BC @ =0x000084C0
	adds r0, r7, r3
	movs r4, #0xfb
	lsls r4, r4, #4
	add r4, sp
	ldr r4, [r4]
	str r4, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B776
	add r0, sp, #4
	ldr r5, _0801B7D0 @ =0x00009464
	adds r1, r7, r5
	movs r2, #0xa
	bl sub_08001B18
	add r0, sp, #0x10
	ldr r2, _0801B7D4 @ =0x000084C4
	adds r1, r7, r2
	movs r2, #0xfa
	lsls r2, r2, #4
	bl sub_08001B18
_0801B776:
	movs r3, #0xfd
	lsls r3, r3, #4
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B78C: .4byte 0xFFFFF030
_0801B790: .4byte gScript
_0801B794: .4byte 0x000067AC
_0801B798: .4byte 0x00008498
_0801B79C: .4byte 0x00000FBC
_0801B7A0: .4byte 0x000084AC
_0801B7A4: .4byte 0x00000FC8
_0801B7A8: .4byte 0x00000FC4
_0801B7AC: .4byte 0x00000FB4
_0801B7B0: .4byte 0x00009474
_0801B7B4: .4byte 0x00000FB8
_0801B7B8: .4byte 0x00009480
_0801B7BC: .4byte 0x000084C0
_0801B7C0: .4byte 0x00008494
_0801B7C4: .4byte gUnknown_0200F064
_0801B7C8: .4byte 0xFFFFF060
_0801B7CC: .4byte 0x00000FCC
_0801B7D0: .4byte 0x00009464
_0801B7D4: .4byte 0x000084C4

	thumb_func_start sub_0801B7D8
sub_0801B7D8: @ 0x0801B7D8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _0801B7F0 @ =gScript
	ldr r0, _0801B7F4 @ =0x0000947A
	adds r3, r2, r0
	ldrh r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	beq _0801B7F8
	subs r0, #1
	strh r0, [r3]
	b _0801B972
	.align 2, 0
_0801B7F0: .4byte gScript
_0801B7F4: .4byte 0x0000947A
_0801B7F8:
	mov r0, sp
	strh r1, [r0]
	ldr r1, _0801B81C @ =0x0000845A
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _0801B87A
	adds r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	subs r0, #6
	cmp r0, #0x10
	bhi _0801B87A
	lsls r0, r0, #2
	ldr r1, _0801B820 @ =_0801B824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B81C: .4byte 0x0000845A
_0801B820: .4byte _0801B824
_0801B824: @ jump table
	.4byte _0801B874 @ case 0
	.4byte _0801B87A @ case 1
	.4byte _0801B87A @ case 2
	.4byte _0801B87A @ case 3
	.4byte _0801B87A @ case 4
	.4byte _0801B87A @ case 5
	.4byte _0801B87A @ case 6
	.4byte _0801B868 @ case 7
	.4byte _0801B87A @ case 8
	.4byte _0801B87A @ case 9
	.4byte _0801B87A @ case 10
	.4byte _0801B87A @ case 11
	.4byte _0801B868 @ case 12
	.4byte _0801B87A @ case 13
	.4byte _0801B87A @ case 14
	.4byte _0801B868 @ case 15
	.4byte _0801B868 @ case 16
_0801B868:
	ldr r0, _0801B8F0 @ =gScript
	ldr r2, _0801B8F4 @ =0x00008484
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B87A
_0801B874:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_0801B87A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B89E
	ldr r4, _0801B8F8 @ =gUnknown_0200F064
	ldr r1, _0801B8FC @ =gUnknown_02000048
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08001B18
	ldr r0, _0801B900 @ =0xFFFFF060
	adds r4, r4, r0
	ldr r1, _0801B904 @ =gUnknown_02000058
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_08001B18
_0801B89E:
	ldr r6, _0801B8F0 @ =gScript
	ldr r1, _0801B908 @ =0x00009480
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0801B90C @ =0x00009478
	adds r5, r6, r2
	ldrh r0, [r5]
	ldr r1, _0801B910 @ =0x00009474
	adds r4, r6, r1
	strh r0, [r4]
	ldr r2, _0801B914 @ =0x000084B8
	adds r0, r6, r2
	ldr r0, [r0]
	ldr r2, _0801B918 @ =0x00009476
	adds r1, r6, r2
	movs r2, #0
	bl exec_cmd
	ldrh r0, [r4]
	strh r0, [r5]
	ldr r1, _0801B91C @ =0x0000845A
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _0801B94E
	ldr r2, _0801B920 @ =0x0000845C
	adds r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #0x12
	beq _0801B92C
	cmp r0, #0x12
	bgt _0801B924
	cmp r0, #0xd
	beq _0801B92C
	b _0801B94E
	.align 2, 0
_0801B8F0: .4byte gScript
_0801B8F4: .4byte 0x00008484
_0801B8F8: .4byte gUnknown_0200F064
_0801B8FC: .4byte gUnknown_02000048
_0801B900: .4byte 0xFFFFF060
_0801B904: .4byte gUnknown_02000058
_0801B908: .4byte 0x00009480
_0801B90C: .4byte 0x00009478
_0801B910: .4byte 0x00009474
_0801B914: .4byte 0x000084B8
_0801B918: .4byte 0x00009476
_0801B91C: .4byte 0x0000845A
_0801B920: .4byte 0x0000845C
_0801B924:
	cmp r0, #0x16
	bgt _0801B94E
	cmp r0, #0x15
	blt _0801B94E
_0801B92C:
	ldr r0, _0801B940 @ =gScript
	ldr r1, _0801B944 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801B948
	mov r1, sp
	movs r0, #1
	b _0801B94C
	.align 2, 0
_0801B940: .4byte gScript
_0801B944: .4byte 0x00008494
_0801B948:
	mov r1, sp
	movs r0, #0
_0801B94C:
	strh r0, [r1]
_0801B94E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B972
	ldr r0, _0801B97C @ =gUnknown_02000048
	ldr r4, _0801B980 @ =gUnknown_0200F064
	adds r1, r4, #0
	movs r2, #0xa
	bl sub_08001B18
	ldr r0, _0801B984 @ =gUnknown_02000058
	ldr r2, _0801B988 @ =0xFFFFF060
	adds r4, r4, r2
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_08001B18
_0801B972:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B97C: .4byte gUnknown_02000048
_0801B980: .4byte gUnknown_0200F064
_0801B984: .4byte gUnknown_02000058
_0801B988: .4byte 0xFFFFF060

	thumb_func_start exec_cmd
exec_cmd: @ 0x0801B98C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	mov sb, r1
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0801B9B8 @ =gScript
	ldr r1, _0801B9BC @ =0x00009480
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B9C0
	bl sub_08027E60
	str r0, [sp, #0xc]
	b _0801B9C8
	.align 2, 0
_0801B9B8: .4byte gScript
_0801B9BC: .4byte 0x00009480
_0801B9C0:
	ldr r3, _0801BA0C @ =0x000084C0
	adds r0, r2, r3
	ldr r1, [sp, #0xc]
	str r1, [r0]
_0801B9C8:
	ldr r1, _0801BA10 @ =gScript
	ldr r2, _0801BA14 @ =0x00009470
	adds r0, r1, r2
	mov r3, sb
	str r3, [r0]
	adds r2, #4
	adds r0, r1, r2
	ldrh r5, [r0]
	ldr r3, _0801BA18 @ =0x000084C4
	adds r6, r1, r3
	mov r1, sp
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	add r0, sp, #8
	mov sl, r0
_0801B9E8:
	ldr r0, [sp, #0xc]
	mov r1, sl
	mov r2, sb
	bl sub_08021878
	ldr r1, _0801BA10 @ =gScript
	ldr r2, _0801BA1C @ =0x000084BC
	adds r1, r1, r2
	str r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0801BA02
	b _0801BEB4
_0801BA02:
	lsls r0, r0, #2
	ldr r1, _0801BA20 @ =_0801BA24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BA0C: .4byte 0x000084C0
_0801BA10: .4byte gScript
_0801BA14: .4byte 0x00009470
_0801BA18: .4byte 0x000084C4
_0801BA1C: .4byte 0x000084BC
_0801BA20: .4byte _0801BA24
_0801BA24: @ jump table
	.4byte _0801BA60 @ case 0
	.4byte _0801BA88 @ case 1
	.4byte _0801BA94 @ case 2
	.4byte _0801BAB8 @ case 3
	.4byte _0801BAE4 @ case 4
	.4byte _0801BB82 @ case 5
	.4byte _0801BBB4 @ case 6
	.4byte _0801BC18 @ case 7
	.4byte _0801BC40 @ case 8
	.4byte _0801BC94 @ case 9
	.4byte _0801BCA0 @ case 10
	.4byte _0801BCAC @ case 11
	.4byte _0801BCB2 @ case 12
	.4byte _0801BCBC @ case 13
	.4byte _0801BCD8 @ case 14
_0801BA60:
	lsls r2, r5, #2
	adds r2, r2, r6
	mov r3, sl
	ldrb r1, [r3]
	lsls r1, r1, #1
	ldr r0, _0801BA84 @ =gUnknown_0200F064
	adds r1, r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r5, #1
	b _0801BEB0
	.align 2, 0
_0801BA84: .4byte gUnknown_0200F064
_0801BA88:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [sp, #8]
	str r1, [r0]
	adds r0, r5, #1
	b _0801BEB0
_0801BA94:
	lsls r2, r5, #2
	adds r2, r2, r6
	mov r3, sl
	ldrb r1, [r3]
	lsls r1, r1, #1
	ldr r0, _0801BAB4 @ =gUnknown_0200F064
	adds r1, r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r5, #1
	b _0801BEB0
	.align 2, 0
_0801BAB4: .4byte gUnknown_0200F064
_0801BAB8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r2, _0801BAE0 @ =gUnknown_0200F064
	adds r0, r0, r2
	ldr r1, [sp, #8]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	b _0801BEB4
	.align 2, 0
_0801BAE0: .4byte gUnknown_0200F064
_0801BAE4:
	ldr r4, _0801BB54 @ =gScript
	ldr r3, _0801BB58 @ =0x00009474
	adds r7, r4, r3
	strh r5, [r7]
	ldr r0, _0801BB5C @ =0x00009480
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bl sub_08021920
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	lsls r1, r5, #2
	subs r1, #4
	adds r1, r6, r1
	bl exec_extended
	mov r1, sp
	strh r0, [r1, #2]
	ldrb r4, [r4]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0801BB2A
	b _0801BEC6
_0801BB2A:
	movs r0, #0x40
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0801BB38
	b _0801BEB4
_0801BB38:
	ldrh r0, [r7]
	cmp r0, r5
	beq _0801BB60
	adds r5, r0, #0
	add r1, sp, #4
	movs r0, #1
	strh r0, [r1]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	b _0801BB68
	.align 2, 0
_0801BB54: .4byte gScript
_0801BB58: .4byte 0x00009474
_0801BB5C: .4byte 0x00009480
_0801BB60:
	add r0, sp, #4
	strh r1, [r0]
	movs r4, #0
	adds r1, r0, #0
_0801BB68:
	mov r2, r8
	subs r0, r5, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801BB78
	b _0801BEB4
_0801BB78:
	lsls r0, r5, #2
	adds r0, r0, r6
	str r4, [r0]
	adds r0, r5, #1
	b _0801BEB0
_0801BB82:
	ldr r2, _0801BBA8 @ =gScript
	ldr r3, _0801BBAC @ =0x00009480
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	bl sub_08027E60
	str r0, [sp, #0xc]
	mov r1, sl
	ldrb r0, [r1]
	adds r4, r0, #1
	lsls r2, r5, #2
	adds r2, r2, r6
	lsls r1, r4, #1
	ldr r3, _0801BBB0 @ =gUnknown_0200F064
	adds r1, r1, r3
	b _0801BC28
	.align 2, 0
_0801BBA8: .4byte gScript
_0801BBAC: .4byte 0x00009480
_0801BBB0: .4byte gUnknown_0200F064
_0801BBB4:
	ldr r3, _0801BC08 @ =gScript
	ldr r0, _0801BC0C @ =0x00009480
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r4, [r0]
	mov r1, sl
	ldrb r2, [r1]
	lsls r2, r2, #1
	ldr r0, _0801BC10 @ =gUnknown_0200F064
	adds r2, r2, r0
	ldrh r5, [r2]
	lsls r1, r5, #2
	adds r1, r1, r6
	ldr r0, [r1]
	strh r0, [r2]
	ldr r0, [r1, #4]
	mov r1, sb
	strh r0, [r1]
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	str r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _0801BC14 @ =0x000084C0
	adds r3, r3, r2
	ldr r3, [r3]
	str r3, [sp, #0xc]
	b _0801BEB4
	.align 2, 0
_0801BC08: .4byte gScript
_0801BC0C: .4byte 0x00009480
_0801BC10: .4byte gUnknown_0200F064
_0801BC14: .4byte 0x000084C0
_0801BC18:
	mov r3, sl
	ldrb r0, [r3]
	adds r4, r0, #1
	lsls r2, r5, #2
	adds r2, r2, r6
	lsls r1, r4, #1
	ldr r0, _0801BC3C @ =gUnknown_0200F064
	adds r1, r1, r0
_0801BC28:
	ldrh r0, [r1]
	str r0, [r2]
	mov r3, sb
	ldrh r0, [r3]
	str r0, [r2, #4]
	strh r5, [r1]
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	strh r0, [r3]
	b _0801BEB4
	.align 2, 0
_0801BC3C: .4byte gUnknown_0200F064
_0801BC40:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r4, [r0]
	mov r0, sl
	ldrb r2, [r0]
	lsls r2, r2, #1
	ldr r1, _0801BC90 @ =gUnknown_0200F064
	adds r2, r2, r1
	ldrh r5, [r2]
	lsls r1, r5, #2
	adds r1, r1, r6
	ldr r0, [r1]
	strh r0, [r2]
	ldr r1, [r1, #4]
	mov r2, sb
	strh r1, [r2]
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	str r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0801BC82
	b _0801BEB4
_0801BC82:
	movs r0, #1
	mov r3, sp
	strh r0, [r3, #2]
	bl sub_0801BF18
	b _0801BEB4
	.align 2, 0
_0801BC90: .4byte gUnknown_0200F064
_0801BC94:
	movs r0, #1
	mov r1, sp
	strh r0, [r1, #2]
	bl sub_0801BF18
	b _0801BEB4
_0801BCA0:
	ldr r0, [sp, #8]
	ldr r2, _0801BCA8 @ =gUnknown_0200F064
	strh r0, [r2, #2]
	b _0801BEB4
	.align 2, 0
_0801BCA8: .4byte gUnknown_0200F064
_0801BCAC:
	ldr r0, [sp, #8]
	adds r0, r5, r0
	b _0801BEB0
_0801BCB2:
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	mov r3, sb
	strh r0, [r3]
	b _0801BEB4
_0801BCBC:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _0801BCCE
	b _0801BEB4
_0801BCCE:
	ldr r0, [sp, #8]
	lsrs r0, r0, #8
	mov r1, sb
	strh r0, [r1]
	b _0801BEB4
_0801BCD8:
	ldr r0, [sp, #8]
	cmp r0, #0x13
	bls _0801BCE0
	b _0801BEB4
_0801BCE0:
	lsls r0, r0, #2
	ldr r1, _0801BCEC @ =_0801BCF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BCEC: .4byte _0801BCF0
_0801BCF0: @ jump table
	.4byte _0801BD40 @ case 0
	.4byte _0801BD4E @ case 1
	.4byte _0801BD64 @ case 2
	.4byte _0801BD7A @ case 3
	.4byte _0801BD90 @ case 4
	.4byte _0801BDD4 @ case 5
	.4byte _0801BDEC @ case 6
	.4byte _0801BDFA @ case 7
	.4byte _0801BDA8 @ case 8
	.4byte _0801BDBE @ case 9
	.4byte _0801BE08 @ case 10
	.4byte _0801BE20 @ case 11
	.4byte _0801BE3C @ case 12
	.4byte _0801BE54 @ case 13
	.4byte _0801BE6C @ case 14
	.4byte _0801BE84 @ case 15
	.4byte _0801BEA0 @ case 16
	.4byte _0801BEAE @ case 17
	.4byte _0801BEAE @ case 18
	.4byte _0801BEB4 @ case 19
_0801BD40:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r1, #4
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	b _0801BEB4
_0801BD4E:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BD64:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BD7A:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	ldr r1, [r2]
	ldr r0, [r0]
	muls r0, r1, r0
	str r0, [r2]
	b _0801BEB4
_0801BD90:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r4, r1, #4
	ldr r0, [r4]
	ldr r1, [r1]
	bl sub_08091970
	str r0, [r4]
	b _0801BEB4
_0801BDA8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BDBE:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r2, r1, #4
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _0801BEB4
_0801BDD4:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r4, r1, #4
	ldr r0, [r4]
	ldr r1, [r1]
	bl sub_08091A08
	str r0, [r4]
	b _0801BEB4
_0801BDEC:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r1, #4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0801BEB4
_0801BDFA:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r1, #4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	b _0801BEB4
_0801BE08:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0801BE9C
	b _0801BE9A
_0801BE20:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	ldr r1, [r2]
	ldr r0, [r0]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [r2]
	b _0801BEB4
_0801BE3C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bge _0801BE9C
	b _0801BE9A
_0801BE54:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	ble _0801BE9C
	b _0801BE9A
_0801BE6C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bgt _0801BE9C
	b _0801BE9A
_0801BE84:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r6
	subs r2, r0, #4
	movs r3, #0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	blt _0801BE9C
_0801BE9A:
	movs r3, #1
_0801BE9C:
	str r3, [r2]
	b _0801BEB4
_0801BEA0:
	lsls r1, r5, #2
	adds r1, r1, r6
	subs r0, r1, #4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r5, #1
	b _0801BEB0
_0801BEAE:
	subs r0, r5, #1
_0801BEB0:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801BEB4:
	mov r2, sp
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _0801BEBE
	b _0801B9E8
_0801BEBE:
	ldr r0, _0801BED8 @ =gScript
	ldr r3, _0801BEDC @ =0x00009474
	adds r0, r0, r3
	strh r5, [r0]
_0801BEC6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BED8: .4byte gScript
_0801BEDC: .4byte 0x00009474
