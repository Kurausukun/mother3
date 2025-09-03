	.syntax unified
sub_08064590:
	push {r4, lr}
	movs r4, #0
_08064594:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806473C
	bl sub_08064808
	adds r4, #1
	cmp r4, #0x3f
	bls _08064594
	ldr r1, _08064740
	movs r0, #1
	bl sub_08064808
	ldr r1, _08064744
	movs r0, #9
	bl sub_08064808
	ldr r1, _08064748
	movs r0, #0x16
	bl sub_08064808
	ldr r1, _0806474C
	movs r0, #0x17
	bl sub_08064808
	ldr r1, _08064750
	movs r0, #0x18
	bl sub_08064808
	ldr r1, _08064754
	movs r0, #0x19
	bl sub_08064808
	ldr r1, _08064758
	movs r0, #0x1a
	bl sub_08064808
	ldr r1, _0806475C
	movs r0, #0x23
	bl sub_08064808
	ldr r1, _08064760
	movs r0, #0x30
	bl sub_08064808
	ldr r1, _08064764
	movs r0, #0x26
	bl sub_08064808
	ldr r1, _08064768
	movs r0, #2
	bl sub_08064808
	ldr r1, _0806476C
	movs r0, #3
	bl sub_08064808
	ldr r1, _08064770
	movs r0, #6
	bl sub_08064808
	ldr r1, _08064774
	movs r0, #7
	bl sub_08064808
	ldr r1, _08064778
	movs r0, #0xa
	bl sub_08064808
	ldr r1, _0806477C
	movs r0, #0xe
	bl sub_08064808
	ldr r1, _08064780
	movs r0, #0xf
	bl sub_08064808
	ldr r1, _08064784
	movs r0, #0x20
	bl sub_08064808
	ldr r1, _08064788
	movs r0, #0xc
	bl sub_08064808
	ldr r1, _0806478C
	movs r0, #0x27
	bl sub_08064808
	ldr r1, _08064790
	movs r0, #0xd
	bl sub_08064808
	ldr r1, _08064794
	movs r0, #0x33
	bl sub_08064808
	ldr r1, _08064798
	movs r0, #5
	bl sub_08064808
	ldr r1, _0806479C
	movs r0, #8
	bl sub_08064808
	ldr r1, _080647A0
	movs r0, #0x10
	bl sub_08064808
	ldr r1, _080647A4
	movs r0, #0x12
	bl sub_08064808
	ldr r1, _080647A8
	movs r0, #0x21
	bl sub_08064808
	ldr r1, _080647AC
	movs r0, #0x13
	bl sub_08064808
	ldr r1, _080647B0
	movs r0, #0x14
	bl sub_08064808
	ldr r1, _080647B4
	movs r0, #0x22
	bl sub_08064808
	ldr r1, _080647B8
	movs r0, #0x15
	bl sub_08064808
	ldr r1, _080647BC
	movs r0, #0x1b
	bl sub_08064808
	ldr r1, _080647C0
	movs r0, #0x31
	bl sub_08064808
	ldr r1, _080647C4
	movs r0, #0x1c
	bl sub_08064808
	ldr r1, _080647C8
	movs r0, #0x1d
	bl sub_08064808
	ldr r1, _080647CC
	movs r0, #0x32
	bl sub_08064808
	ldr r1, _080647D0
	movs r0, #0x1e
	bl sub_08064808
	ldr r1, _080647D4
	movs r0, #0x24
	bl sub_08064808
	ldr r1, _080647D8
	movs r0, #0x25
	bl sub_08064808
	ldr r1, _080647DC
	movs r0, #0x28
	bl sub_08064808
	ldr r1, _080647E0
	movs r0, #0x29
	bl sub_08064808
	ldr r1, _080647E4
	movs r0, #0x2a
	bl sub_08064808
	ldr r1, _080647E8
	movs r0, #0x2b
	bl sub_08064808
	ldr r1, _080647EC
	movs r0, #0x2c
	bl sub_08064808
	ldr r1, _080647F0
	movs r0, #0x2d
	bl sub_08064808
	ldr r1, _080647F4
	movs r0, #0x2e
	bl sub_08064808
	ldr r1, _080647F8
	movs r0, #0x2f
	bl sub_08064808
	ldr r1, _080647FC
	movs r0, #4
	bl sub_08064808
	ldr r1, _08064800
	movs r0, #0xb
	bl sub_08064808
	ldr r1, _08064804
	movs r0, #0x11
	bl sub_08064808
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806473C: .4byte sub_080B56A0
_08064740: .4byte sub_080B5680
_08064744: .4byte sub_080B5660
_08064748: .4byte sub_080B5640
_0806474C: .4byte sub_080B5620
_08064750: .4byte sub_080B5600
_08064754: .4byte sub_080B55E0
_08064758: .4byte sub_080B55C0
_0806475C: .4byte sub_080B55A0
_08064760: .4byte sub_080B5580
_08064764: .4byte sub_080B5560
_08064768: .4byte sub_080B5540
_0806476C: .4byte sub_080B5520
_08064770: .4byte sub_080B5500
_08064774: .4byte sub_080B54E0
_08064778: .4byte sub_080B54C0
_0806477C: .4byte sub_080B54A0
_08064780: .4byte sub_080B5480
_08064784: .4byte sub_080B5460
_08064788: .4byte sub_080B5440
_0806478C: .4byte sub_080B5420
_08064790: .4byte sub_080B5400
_08064794: .4byte sub_080B53E0
_08064798: .4byte sub_080B53C0
_0806479C: .4byte sub_080B53A0
_080647A0: .4byte sub_080B5380
_080647A4: .4byte sub_080B5360
_080647A8: .4byte sub_080B5340
_080647AC: .4byte sub_080B5320
_080647B0: .4byte sub_080B5300
_080647B4: .4byte sub_080B52E0
_080647B8: .4byte sub_080B52C0
_080647BC: .4byte sub_080B52A0
_080647C0: .4byte sub_080B5280
_080647C4: .4byte sub_080B5260
_080647C8: .4byte sub_080B5240
_080647CC: .4byte sub_080B5220
_080647D0: .4byte sub_080B5200
_080647D4: .4byte sub_080B51E0
_080647D8: .4byte sub_080B51C0
_080647DC: .4byte sub_080B51A0
_080647E0: .4byte sub_080B5180
_080647E4: .4byte sub_080B5160
_080647E8: .4byte sub_080B5140
_080647EC: .4byte sub_080B5120
_080647F0: .4byte sub_080B5100
_080647F4: .4byte sub_080B50E0
_080647F8: .4byte sub_080B50C0
_080647FC: .4byte sub_080B50A0
_08064800: .4byte sub_080B5080
_08064804: .4byte sub_080B5060
	.syntax divided
