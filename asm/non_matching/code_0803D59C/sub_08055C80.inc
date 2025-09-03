	.syntax unified
sub_08055C80:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055D10
	adds r0, r4, #0
	movs r1, #1
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055D0C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055D08
	adds r0, r4, #0
	movs r1, #3
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055D04
	adds r0, r4, #0
	movs r1, #4
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055D00
	adds r0, r4, #0
	movs r1, #5
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055CFC
	adds r0, r4, #0
	movs r1, #6
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x9b
	cmp r0, #0xff
	bne _08055D12
	movs r1, #0x9c
	b _08055D12
_08055CFC:
	movs r1, #0x9a
	b _08055D12
_08055D00:
	movs r1, #0x99
	b _08055D12
_08055D04:
	movs r1, #0x98
	b _08055D12
_08055D08:
	movs r1, #0x97
	b _08055D12
_08055D0C:
	movs r1, #0x96
	b _08055D12
_08055D10:
	movs r1, #0x95
_08055D12:
	adds r0, r1, #0
	bl sub_080486A0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
