	.syntax unified
sub_08061974:
	push {r4, lr}
	movs r4, #0
_08061978:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061A00
	bl sub_08061A3C
	adds r4, #1
	cmp r4, #0x3f
	bls _08061978
	ldr r1, _08061A04
	movs r0, #1
	bl sub_08061A3C
	ldr r1, _08061A08
	movs r0, #0x25
	bl sub_08061A3C
	ldr r1, _08061A0C
	movs r0, #0x26
	bl sub_08061A3C
	ldr r1, _08061A10
	movs r0, #0x27
	bl sub_08061A3C
	ldr r1, _08061A14
	movs r0, #0x28
	bl sub_08061A3C
	ldr r1, _08061A18
	movs r0, #0x29
	bl sub_08061A3C
	ldr r1, _08061A1C
	movs r0, #0x2a
	bl sub_08061A3C
	ldr r1, _08061A20
	movs r0, #0x2e
	bl sub_08061A3C
	ldr r1, _08061A24
	movs r0, #0x2f
	bl sub_08061A3C
	ldr r1, _08061A28
	movs r0, #0x30
	bl sub_08061A3C
	ldr r1, _08061A2C
	movs r0, #3
	bl sub_08061A3C
	ldr r1, _08061A30
	movs r0, #0x19
	bl sub_08061A3C
	ldr r1, _08061A34
	movs r0, #6
	bl sub_08061A3C
	ldr r1, _08061A38
	movs r0, #0x2c
	bl sub_08061A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061A00: .4byte sub_0809D880
_08061A04: .4byte sub_0809D860
_08061A08: .4byte sub_0809D698
_08061A0C: .4byte sub_0809D538
_08061A10: .4byte sub_0809D678
_08061A14: .4byte sub_0809D658
_08061A18: .4byte sub_0809D638
_08061A1C: .4byte sub_0809D618
_08061A20: .4byte sub_0809D5F8
_08061A24: .4byte sub_0809D5D8
_08061A28: .4byte sub_0809D5B8
_08061A2C: .4byte sub_0809D598
_08061A30: .4byte sub_0809D578
_08061A34: .4byte sub_0809D558
_08061A38: .4byte sub_0809D518
	.syntax divided
