	.syntax unified
sub_08062308:
	push {r4, lr}
	movs r4, #0
_0806230C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08062344
	bl sub_08062358
	adds r4, #1
	cmp r4, #0x63
	bls _0806230C
	ldr r1, _08062348
	movs r0, #0x21
	bl sub_08062358
	ldr r1, _0806234C
	movs r0, #0x13
	bl sub_08062358
	ldr r1, _08062350
	movs r0, #0xd
	bl sub_08062358
	ldr r1, _08062354
	movs r0, #0x24
	bl sub_08062358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062344: .4byte sub_080A0AA8
_08062348: .4byte sub_080A0A88
_0806234C: .4byte sub_080A0A68
_08062350: .4byte sub_080A0A48
_08062354: .4byte sub_080A0A28
	.syntax divided
