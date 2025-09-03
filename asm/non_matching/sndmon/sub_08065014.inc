	.syntax unified
sub_08065014:
	push {r4, lr}
	movs r4, #0
_08065018:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080650E0
	bl sub_08065138
	adds r4, #1
	cmp r4, #0xff
	bls _08065018
	ldr r1, _080650E4
	movs r0, #0x9c
	bl sub_08065138
	ldr r1, _080650E8
	movs r0, #0xa1
	bl sub_08065138
	ldr r1, _080650EC
	movs r0, #0x9d
	bl sub_08065138
	ldr r1, _080650F0
	movs r0, #0x9e
	bl sub_08065138
	ldr r1, _080650F4
	movs r0, #0xa0
	bl sub_08065138
	ldr r1, _080650F8
	movs r0, #0xa6
	bl sub_08065138
	ldr r1, _080650FC
	movs r0, #0x69
	bl sub_08065138
	ldr r4, _08065100
	movs r0, #0x72
	adds r1, r4, #0
	bl sub_08065138
	movs r0, #0x73
	adds r1, r4, #0
	bl sub_08065138
	ldr r1, _08065104
	movs r0, #0x7a
	bl sub_08065138
	ldr r1, _08065108
	movs r0, #0xa4
	bl sub_08065138
	ldr r1, _0806510C
	movs r0, #0xa5
	bl sub_08065138
	ldr r1, _08065110
	movs r0, #0xa7
	bl sub_08065138
	ldr r1, _08065114
	movs r0, #0x8f
	bl sub_08065138
	ldr r1, _08065118
	movs r0, #0x93
	bl sub_08065138
	ldr r1, _0806511C
	movs r0, #0x94
	bl sub_08065138
	ldr r1, _08065120
	movs r0, #0xcd
	bl sub_08065138
	ldr r1, _08065124
	movs r0, #0xaf
	bl sub_08065138
	ldr r1, _08065128
	movs r0, #0xd2
	bl sub_08065138
	ldr r1, _0806512C
	movs r0, #0xd3
	bl sub_08065138
	ldr r1, _08065130
	movs r0, #0xd4
	bl sub_08065138
	ldr r1, _08065134
	movs r0, #0xd5
	bl sub_08065138
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080650E0: .4byte MakeInstance__H1Z12DefaultGoods_UsP4UnitUs_PX01
_080650E4: .4byte sub_080BDDF8
_080650E8: .4byte sub_080BDDD0
_080650EC: .4byte sub_080BDDA8
_080650F0: .4byte sub_080BDD80
_080650F4: .4byte sub_080BDD58
_080650F8: .4byte sub_080BDC68
_080650FC: .4byte sub_080BDD30
_08065100: .4byte sub_080BDD08
_08065104: .4byte sub_080BDCE0
_08065108: .4byte sub_080BDCB8
_0806510C: .4byte sub_080BDC90
_08065110: .4byte sub_080BDC40
_08065114: .4byte sub_080BDC18
_08065118: .4byte sub_080BDBF0
_0806511C: .4byte sub_080BDBC8
_08065120: .4byte sub_080BDBA0
_08065124: .4byte sub_080BDB78
_08065128: .4byte sub_080BDB50
_0806512C: .4byte sub_080BDB28
_08065130: .4byte sub_080BDB00
_08065134: .4byte sub_080BDAD8
	.syntax divided
