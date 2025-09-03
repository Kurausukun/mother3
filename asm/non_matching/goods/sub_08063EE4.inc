	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	movs r4, #0
	ldr r5, _080642D4
_08063EEE:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080642D8
	bl sub_08064564
	adds r4, #1
	cmp r4, r5
	bls _08063EEE
	ldr r1, _080642DC
	movs r0, #0xf0
	bl sub_08064564
	movs r0, #0x99
	lsls r0, r0, #1
	ldr r1, _080642E0
	mov r8, r1
	bl sub_08064564
	movs r0, #0x96
	mov r1, r8
	bl sub_08064564
	ldr r5, _080642E4
	movs r0, #0x78
	adds r1, r5, #0
	bl sub_08064564
	ldr r1, _080642E8
	movs r0, #0x7b
	bl sub_08064564
	ldr r0, _080642EC
	ldr r1, _080642F0
	bl sub_08064564
	ldr r0, _080642F4
	ldr r4, _080642F8
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xd9
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _080642FC
	ldr r1, _08064300
	bl sub_08064564
	movs r0, #0x99
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_08064564
	ldr r4, _08064304
	movs r0, #0x79
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xb8
	lsls r0, r0, #1
	ldr r1, _08064308
	bl sub_08064564
	movs r0, #0x8a
	lsls r0, r0, #1
	ldr r1, _0806430C
	bl sub_08064564
	ldr r0, _08064310
	ldr r1, _08064314
	bl sub_08064564
	ldr r0, _08064318
	ldr r1, _0806431C
	bl sub_08064564
	movs r0, #0xce
	lsls r0, r0, #1
	ldr r6, _08064320
	adds r1, r6, #0
	bl sub_08064564
	movs r0, #0x57
	mov r1, r8
	bl sub_08064564
	movs r0, #0xd3
	lsls r0, r0, #1
	ldr r1, _08064324
	bl sub_08064564
	movs r0, #0xeb
	lsls r0, r0, #1
	mov r1, r8
	bl sub_08064564
	ldr r0, _08064328
	adds r1, r4, #0
	bl sub_08064564
	ldr r5, _0806432C
	movs r0, #3
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xb1
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064330
	ldr r1, _08064334
	bl sub_08064564
	ldr r0, _08064338
	ldr r1, _0806433C
	bl sub_08064564
	ldr r0, _08064340
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064344
	ldr r1, _08064348
	bl sub_08064564
	movs r0, #0xaf
	lsls r0, r0, #1
	ldr r1, _0806434C
	bl sub_08064564
	ldr r0, _08064350
	ldr r4, _08064354
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064358
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _0806435C
	ldr r1, _08064360
	bl sub_08064564
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064364
	ldr r1, _08064368
	bl sub_08064564
	ldr r0, _0806436C
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _08064370
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _08064374
	adds r1, r6, #0
	bl sub_08064564
	movs r0, #0x81
	lsls r0, r0, #2
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _08064378
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _0806437C
	ldr r4, _08064380
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064384
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xf7
	lsls r0, r0, #1
	ldr r4, _08064388
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _0806438C
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _08064390
	movs r0, #0x7c
	bl sub_08064564
	ldr r4, _08064394
	movs r0, #0x62
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x63
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x64
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x65
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064398
	ldr r4, _0806439C
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643A0
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xdd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643A4
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xde
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643A8
	ldr r1, _080643AC
	bl sub_08064564
	movs r0, #0x91
	lsls r0, r0, #1
	ldr r1, _080643B0
	bl sub_08064564
	ldr r1, _080643B4
	movs r0, #0x69
	bl sub_08064564
	ldr r0, _080643B8
	mov r8, r0
	movs r0, #0xae
	mov r1, r8
	bl sub_08064564
	ldr r1, _080643BC
	movs r0, #0x66
	bl sub_08064564
	movs r0, #0xaf
	mov r1, r8
	bl sub_08064564
	ldr r0, _080643C0
	ldr r6, _080643C4
	adds r1, r6, #0
	bl sub_08064564
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_08064564
	ldr r4, _080643C8
	movs r0, #0xb5
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xb6
	adds r1, r4, #0
	bl sub_08064564
	ldr r5, _080643CC
	movs r0, #0xb9
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xba
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xfa
	lsls r0, r0, #1
	mov r1, r8
	bl sub_08064564
	ldr r0, _080643D0
	adds r1, r6, #0
	bl sub_08064564
	ldr r0, _080643D4
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _080643D8
	mov r1, r8
	bl sub_08064564
	ldr r0, _080643DC
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0x9e
	lsls r0, r0, #2
	ldr r1, _080643E0
	bl sub_08064564
	movs r0, #0xd2
	lsls r0, r0, #1
	ldr r1, _080643E4
	bl sub_08064564
	ldr r0, _080643E8
	ldr r4, _080643EC
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0x8c
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _080643F0
	movs r0, #0x50
	bl sub_08064564
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, _080643F4
	bl sub_08064564
	ldr r4, _080643F8
	movs r0, #0x92
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _080643FC
	movs r0, #0x90
	bl sub_08064564
	movs r0, #0x93
	adds r1, r4, #0
	bl sub_08064564
	ldr r1, _08064400
	movs r0, #1
	bl sub_08064564
	ldr r1, _08064404
	movs r0, #0xf1
	bl sub_08064564
	ldr r1, _08064408
	movs r0, #0xc3
	bl sub_08064564
	ldr r0, _0806440C
	ldr r5, _08064410
	adds r1, r5, #0
	bl sub_08064564
	ldr r1, _08064414
	movs r0, #0x45
	bl sub_08064564
	ldr r0, _08064418
	ldr r1, _0806441C
	bl sub_08064564
	movs r0, #0xa5
	lsls r0, r0, #1
	ldr r1, _08064420
	bl sub_08064564
	ldr r1, _08064424
	movs r0, #0xde
	bl sub_08064564
	movs r0, #0xa2
	lsls r0, r0, #1
	ldr r1, _08064428
	bl sub_08064564
	ldr r1, _0806442C
	movs r0, #0xf2
	bl sub_08064564
	ldr r0, _08064430
	ldr r1, _08064434
	bl sub_08064564
	movs r0, #0xab
	lsls r0, r0, #1
	ldr r1, _08064438
	bl sub_08064564
	ldr r1, _0806443C
	movs r0, #0x51
	bl sub_08064564
	ldr r0, _08064440
	ldr r1, _08064444
	bl sub_08064564
	ldr r1, _08064448
	movs r0, #0xc4
	bl sub_08064564
	ldr r1, _0806444C
	movs r0, #0xb7
	bl sub_08064564
	ldr r1, _08064450
	movs r0, #0xd2
	bl sub_08064564
	ldr r1, _08064454
	movs r0, #0x94
	bl sub_08064564
	ldr r0, _08064458
	ldr r1, _0806445C
	bl sub_08064564
	movs r0, #0x8f
	lsls r0, r0, #1
	ldr r1, _08064460
	bl sub_08064564
	movs r0, #0x95
	lsls r0, r0, #1
	ldr r1, _08064464
	bl sub_08064564
	ldr r0, _08064468
	ldr r1, _0806446C
	bl sub_08064564
	ldr r0, _08064470
	ldr r1, _08064474
	bl sub_08064564
	movs r0, #0xb5
	lsls r0, r0, #1
	ldr r1, _08064478
	bl sub_08064564
	movs r0, #0xb9
	lsls r0, r0, #1
	ldr r1, _0806447C
	bl sub_08064564
	ldr r1, _08064480
	movs r0, #0xe0
	bl sub_08064564
	ldr r1, _08064484
	movs r0, #0x43
	bl sub_08064564
	movs r0, #0xe9
	lsls r0, r0, #1
	ldr r1, _08064488
	bl sub_08064564
	movs r0, #0xb3
	lsls r0, r0, #1
	ldr r1, _0806448C
	bl sub_08064564
	ldr r0, _08064490
	b _08064494
	.align 2, 0
_080642D4: .4byte 0x00000289
_080642D8: .4byte sub_080AFD04
_080642DC: .4byte sub_080AF744
_080642E0: .4byte sub_080AFCE4
_080642E4: .4byte sub_080AFCC4
_080642E8: .4byte sub_080AFCA4
_080642EC: .4byte 0x00000141
_080642F0: .4byte sub_080AFC84
_080642F4: .4byte 0x00000153
_080642F8: .4byte sub_080AFC64
_080642FC: .4byte 0x00000101
_08064300: .4byte sub_080AFC44
_08064304: .4byte sub_080AFC24
_08064308: .4byte sub_080AFC04
_0806430C: .4byte sub_080AFBE4
_08064310: .4byte 0x00000215
_08064314: .4byte sub_080AFBC4
_08064318: .4byte 0x0000022A
_0806431C: .4byte sub_080AFB84
_08064320: .4byte sub_080AFBA4
_08064324: .4byte sub_080AFB64
_08064328: .4byte 0x0000026B
_0806432C: .4byte sub_080AFB44
_08064330: .4byte 0x00000139
_08064334: .4byte sub_080AFB24
_08064338: .4byte 0x00000147
_0806433C: .4byte sub_080AFB04
_08064340: .4byte 0x0000010F
_08064344: .4byte 0x0000015D
_08064348: .4byte sub_080AFAE4
_0806434C: .4byte sub_080AFAC4
_08064350: .4byte 0x000001DD
_08064354: .4byte sub_080AFAA4
_08064358: .4byte 0x000001E5
_0806435C: .4byte 0x00000125
_08064360: .4byte sub_080AFA84
_08064364: .4byte 0x00000117
_08064368: .4byte sub_080AFA64
_0806436C: .4byte 0x0000019B
_08064370: .4byte 0x00000202
_08064374: .4byte 0x00000203
_08064378: .4byte 0x00000205
_0806437C: .4byte 0x00000279
_08064380: .4byte sub_080AFA44
_08064384: .4byte 0x0000027A
_08064388: .4byte sub_080AFA24
_0806438C: .4byte 0x00000242
_08064390: .4byte sub_080AFA04
_08064394: .4byte sub_080AF9E4
_08064398: .4byte 0x00000197
_0806439C: .4byte sub_080AF9C4
_080643A0: .4byte 0x00000195
_080643A4: .4byte 0x000001BB
_080643A8: .4byte 0x000001BD
_080643AC: .4byte sub_080AF9A4
_080643B0: .4byte sub_080AF984
_080643B4: .4byte sub_080AF964
_080643B8: .4byte sub_080AF944
_080643BC: .4byte sub_080AF924
_080643C0: .4byte 0x0000018F
_080643C4: .4byte sub_080AF904
_080643C8: .4byte sub_080AF8E4
_080643CC: .4byte sub_080AF8C4
_080643D0: .4byte 0x000001A5
_080643D4: .4byte 0x00000241
_080643D8: .4byte 0x00000235
_080643DC: .4byte 0x000001A9
_080643E0: .4byte sub_080AF8A4
_080643E4: .4byte sub_080AF884
_080643E8: .4byte 0x0000026E
_080643EC: .4byte sub_080AF864
_080643F0: .4byte sub_080AF844
_080643F4: .4byte sub_080AF824
_080643F8: .4byte sub_080AF804
_080643FC: .4byte sub_080AF7E4
_08064400: .4byte sub_080AF7C4
_08064404: .4byte sub_080AF7A4
_08064408: .4byte sub_080AF784
_0806440C: .4byte 0x00000209
_08064410: .4byte sub_080AF764
_08064414: .4byte sub_080AF724
_08064418: .4byte 0x00000103
_0806441C: .4byte sub_080AF704
_08064420: .4byte sub_080AF6E4
_08064424: .4byte sub_080AF6C4
_08064428: .4byte sub_080AF6A4
_0806442C: .4byte sub_080AF684
_08064430: .4byte 0x0000014D
_08064434: .4byte sub_080AF664
_08064438: .4byte sub_080AF644
_0806443C: .4byte sub_080AF624
_08064440: .4byte 0x0000020E
_08064444: .4byte sub_080AF604
_08064448: .4byte sub_080AF5E4
_0806444C: .4byte sub_080AF5C4
_08064450: .4byte sub_080AF5A4
_08064454: .4byte sub_080AF584
_08064458: .4byte 0x0000011D
_0806445C: .4byte sub_080AF564
_08064460: .4byte sub_080AF544
_08064464: .4byte sub_080AF524
_08064468: .4byte 0x0000012B
_0806446C: .4byte sub_080AF504
_08064470: .4byte 0x000001E7
_08064474: .4byte sub_080AF4E4
_08064478: .4byte sub_080AF4C4
_0806447C: .4byte sub_080AF4A4
_08064480: .4byte sub_080AF484
_08064484: .4byte sub_080AF464
_08064488: .4byte sub_080AF444
_0806448C: .4byte sub_080AF424
_08064490: .4byte 0x0000020D
_08064494:
	adds r1, r5, #0
	bl sub_08064564
	movs r0, #0xc4
	lsls r0, r0, #1
	ldr r1, _08064518
	bl sub_08064564
	ldr r0, _0806451C
	ldr r1, _08064520
	bl sub_08064564
	ldr r0, _08064524
	ldr r4, _08064528
	adds r1, r4, #0
	bl sub_08064564
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _0806452C
	adds r1, r4, #0
	bl sub_08064564
	ldr r0, _08064530
	adds r1, r5, #0
	bl sub_08064564
	ldr r0, _08064534
	ldr r1, _08064538
	bl sub_08064564
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r1, _0806453C
	bl sub_08064564
	ldr r0, _08064540
	ldr r1, _08064544
	bl sub_08064564
	ldr r0, _08064548
	ldr r1, _0806454C
	bl sub_08064564
	ldr r0, _08064550
	ldr r1, _08064554
	bl sub_08064564
	movs r0, #0x9b
	lsls r0, r0, #2
	ldr r1, _08064558
	bl sub_08064564
	ldr r0, _0806455C
	ldr r1, _08064560
	bl sub_08064564
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064518: .4byte sub_080AF404
_0806451C: .4byte 0x00000189
_08064520: .4byte sub_080AF3E4
_08064524: .4byte 0x000001FB
_08064528: .4byte sub_080AF3C4
_0806452C: .4byte 0x000001FD
_08064530: .4byte 0x0000023B
_08064534: .4byte 0x0000010D
_08064538: .4byte sub_080AF3A4
_0806453C: .4byte sub_080AF384
_08064540: .4byte 0x00000237
_08064544: .4byte sub_080AF364
_08064548: .4byte 0x00000243
_0806454C: .4byte sub_080AF344
_08064550: .4byte 0x0000023A
_08064554: .4byte sub_080AF324
_08064558: .4byte sub_080AF304
_0806455C: .4byte 0x0000026D
_08064560: .4byte sub_080AF2E4
	.syntax divided
