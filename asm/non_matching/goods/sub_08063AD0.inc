	.syntax unified
sub_08063AD0:
	push {r4, r5, lr}
	movs r4, #0
_08063AD4:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08063D88
	bl sub_08063EB4
	adds r4, #1
	cmp r4, #0xff
	bls _08063AD4
	ldr r1, _08063D8C
	movs r0, #1
	bl sub_08063EB4
	ldr r1, _08063D90
	movs r0, #5
	bl sub_08063EB4
	ldr r1, _08063D94
	movs r0, #0x32
	bl sub_08063EB4
	ldr r1, _08063D98
	movs r0, #0x31
	bl sub_08063EB4
	ldr r1, _08063D9C
	movs r0, #0x37
	bl sub_08063EB4
	ldr r1, _08063DA0
	movs r0, #0x33
	bl sub_08063EB4
	ldr r1, _08063DA4
	movs r0, #0x41
	bl sub_08063EB4
	ldr r1, _08063DA8
	movs r0, #0x42
	bl sub_08063EB4
	ldr r1, _08063DAC
	movs r0, #2
	bl sub_08063EB4
	ldr r1, _08063DB0
	movs r0, #4
	bl sub_08063EB4
	ldr r1, _08063DB4
	movs r0, #3
	bl sub_08063EB4
	ldr r1, _08063DB8
	movs r0, #0x4a
	bl sub_08063EB4
	ldr r1, _08063DBC
	movs r0, #0x52
	bl sub_08063EB4
	ldr r1, _08063DC0
	movs r0, #0x5a
	bl sub_08063EB4
	ldr r1, _08063DC4
	movs r0, #0x5b
	bl sub_08063EB4
	ldr r1, _08063DC8
	movs r0, #0x95
	bl sub_08063EB4
	ldr r1, _08063DCC
	movs r0, #6
	bl sub_08063EB4
	ldr r1, _08063DD0
	movs r0, #0x60
	bl sub_08063EB4
	ldr r1, _08063DD4
	movs r0, #0x62
	bl sub_08063EB4
	ldr r1, _08063DD8
	movs r0, #0x6f
	bl sub_08063EB4
	ldr r1, _08063DDC
	movs r0, #0x69
	bl sub_08063EB4
	ldr r1, _08063DE0
	movs r0, #0x3a
	bl sub_08063EB4
	ldr r1, _08063DE4
	movs r0, #0x9b
	bl sub_08063EB4
	ldr r1, _08063DE8
	movs r0, #0x9c
	bl sub_08063EB4
	ldr r1, _08063DEC
	movs r0, #0x10
	bl sub_08063EB4
	ldr r1, _08063DF0
	movs r0, #0x75
	bl sub_08063EB4
	ldr r1, _08063DF4
	movs r0, #0x7f
	bl sub_08063EB4
	ldr r1, _08063DF8
	movs r0, #0xe
	bl sub_08063EB4
	ldr r1, _08063DFC
	movs r0, #0xf
	bl sub_08063EB4
	ldr r1, _08063E00
	movs r0, #0x25
	bl sub_08063EB4
	ldr r1, _08063E04
	movs r0, #0x86
	bl sub_08063EB4
	ldr r1, _08063E08
	movs r0, #0xa2
	bl sub_08063EB4
	ldr r1, _08063E0C
	movs r0, #0x83
	bl sub_08063EB4
	ldr r1, _08063E10
	movs r0, #0xa4
	bl sub_08063EB4
	ldr r1, _08063E14
	movs r0, #0xa3
	bl sub_08063EB4
	ldr r1, _08063E18
	movs r0, #0x7c
	bl sub_08063EB4
	ldr r1, _08063E1C
	movs r0, #7
	bl sub_08063EB4
	ldr r1, _08063E20
	movs r0, #0x76
	bl sub_08063EB4
	ldr r1, _08063E24
	movs r0, #0x7d
	bl sub_08063EB4
	ldr r1, _08063E28
	movs r0, #0xac
	bl sub_08063EB4
	ldr r1, _08063E2C
	movs r0, #0x39
	bl sub_08063EB4
	ldr r1, _08063E30
	movs r0, #0x38
	bl sub_08063EB4
	ldr r1, _08063E34
	movs r0, #0x8e
	bl sub_08063EB4
	ldr r1, _08063E38
	movs r0, #0x21
	bl sub_08063EB4
	ldr r1, _08063E3C
	movs r0, #0x23
	bl sub_08063EB4
	ldr r1, _08063E40
	movs r0, #0x46
	bl sub_08063EB4
	ldr r1, _08063E44
	movs r0, #0x16
	bl sub_08063EB4
	ldr r1, _08063E48
	movs r0, #0xad
	bl sub_08063EB4
	ldr r1, _08063E4C
	movs r0, #0x90
	bl sub_08063EB4
	ldr r1, _08063E50
	movs r0, #0xae
	bl sub_08063EB4
	ldr r1, _08063E54
	movs r0, #0x65
	bl sub_08063EB4
	ldr r1, _08063E58
	movs r0, #0x5c
	bl sub_08063EB4
	ldr r1, _08063E5C
	movs r0, #9
	bl sub_08063EB4
	ldr r1, _08063E60
	movs r0, #0x7a
	bl sub_08063EB4
	ldr r1, _08063E64
	movs r0, #0x17
	bl sub_08063EB4
	ldr r1, _08063E68
	movs r0, #0xb6
	bl sub_08063EB4
	ldr r1, _08063E6C
	movs r0, #0x85
	bl sub_08063EB4
	ldr r1, _08063E70
	movs r0, #0x72
	bl sub_08063EB4
	ldr r1, _08063E74
	movs r0, #0x54
	bl sub_08063EB4
	ldr r1, _08063E78
	movs r0, #0xa6
	bl sub_08063EB4
	ldr r1, _08063E7C
	movs r0, #0x19
	bl sub_08063EB4
	ldr r1, _08063E80
	movs r0, #0xd
	bl sub_08063EB4
	ldr r1, _08063E84
	movs r0, #0x1c
	bl sub_08063EB4
	ldr r1, _08063E88
	movs r0, #0xaa
	bl sub_08063EB4
	ldr r1, _08063E8C
	movs r0, #0x87
	bl sub_08063EB4
	ldr r1, _08063E90
	movs r0, #0xb7
	bl sub_08063EB4
	ldr r1, _08063E94
	movs r0, #0xab
	bl sub_08063EB4
	ldr r1, _08063E98
	movs r0, #0xc
	bl sub_08063EB4
	ldr r4, _08063E9C
	movs r0, #0x2e
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0x2e
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0x13
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0x1a
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xbb
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xbc
	adds r1, r4, #0
	bl sub_08063EB4
	ldr r5, _08063EA0
	movs r0, #0xa9
	adds r1, r5, #0
	bl sub_08063EB4
	movs r0, #0x91
	adds r1, r5, #0
	bl sub_08063EB4
	movs r0, #0x1b
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xb4
	adds r1, r4, #0
	bl sub_08063EB4
	movs r0, #0xb5
	adds r1, r4, #0
	bl sub_08063EB4
	ldr r1, _08063EA4
	movs r0, #0xb
	bl sub_08063EB4
	ldr r1, _08063EA8
	movs r0, #0x11
	bl sub_08063EB4
	ldr r1, _08063EAC
	movs r0, #0xbd
	bl sub_08063EB4
	ldr r1, _08063EB0
	movs r0, #0xbe
	bl sub_08063EB4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063D88: .4byte sub_080A18AC
_08063D8C: .4byte sub_080A1828
_08063D90: .4byte sub_080A1804
_08063D94: .4byte sub_080A17E0
_08063D98: .4byte sub_080A17BC
_08063D9C: .4byte sub_080A1798
_08063DA0: .4byte sub_080A1774
_08063DA4: .4byte sub_080A1750
_08063DA8: .4byte sub_080A172C
_08063DAC: .4byte sub_080A1708
_08063DB0: .4byte sub_080A16E4
_08063DB4: .4byte sub_080A16C0
_08063DB8: .4byte sub_080A169C
_08063DBC: .4byte sub_080A1678
_08063DC0: .4byte sub_080A1654
_08063DC4: .4byte sub_080A1630
_08063DC8: .4byte sub_080A160C
_08063DCC: .4byte sub_080A15E8
_08063DD0: .4byte sub_080A15C4
_08063DD4: .4byte sub_080A15A0
_08063DD8: .4byte sub_080A157C
_08063DDC: .4byte sub_080A1558
_08063DE0: .4byte sub_080A1534
_08063DE4: .4byte sub_080A1510
_08063DE8: .4byte sub_080A14EC
_08063DEC: .4byte sub_080A14C8
_08063DF0: .4byte sub_080A14A4
_08063DF4: .4byte sub_080A1480
_08063DF8: .4byte sub_080A145C
_08063DFC: .4byte sub_080A1438
_08063E00: .4byte sub_080A1414
_08063E04: .4byte sub_080A13F0
_08063E08: .4byte sub_080A13CC
_08063E0C: .4byte sub_080A13A8
_08063E10: .4byte sub_080A1384
_08063E14: .4byte sub_080A1360
_08063E18: .4byte sub_080A133C
_08063E1C: .4byte sub_080A1318
_08063E20: .4byte sub_080A12F4
_08063E24: .4byte sub_080A12D0
_08063E28: .4byte sub_080A12AC
_08063E2C: .4byte sub_080A1288
_08063E30: .4byte sub_080A1264
_08063E34: .4byte sub_080A1240
_08063E38: .4byte sub_080A121C
_08063E3C: .4byte sub_080A11F8
_08063E40: .4byte sub_080A11D4
_08063E44: .4byte sub_080A11B0
_08063E48: .4byte sub_080A118C
_08063E4C: .4byte sub_080A1168
_08063E50: .4byte sub_080A1144
_08063E54: .4byte sub_080A1120
_08063E58: .4byte sub_080A10FC
_08063E5C: .4byte sub_080A10D8
_08063E60: .4byte sub_080A10B4
_08063E64: .4byte sub_080A1090
_08063E68: .4byte sub_080A106C
_08063E6C: .4byte sub_080A1048
_08063E70: .4byte sub_080A1024
_08063E74: .4byte sub_080A1000
_08063E78: .4byte sub_080A0FB8
_08063E7C: .4byte sub_080A0FDC
_08063E80: .4byte sub_080A0F94
_08063E84: .4byte sub_080A0F70
_08063E88: .4byte sub_080A0F4C
_08063E8C: .4byte sub_080A0F04
_08063E90: .4byte sub_080A0F28
_08063E94: .4byte sub_080A0EE0
_08063E98: .4byte sub_080A0EBC
_08063E9C: .4byte sub_080A0E98
_08063EA0: .4byte sub_080A0E74
_08063EA4: .4byte sub_080A0E50
_08063EA8: .4byte sub_080A0E2C
_08063EAC: .4byte sub_080A0E08
_08063EB0: .4byte sub_080A0DE4
	.syntax divided
