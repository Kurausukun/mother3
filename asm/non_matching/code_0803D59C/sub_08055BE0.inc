	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055C70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055C6C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055C68
	adds r0, r4, #0
	movs r1, #3
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055C64
	adds r0, r4, #0
	movs r1, #4
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055C60
	adds r0, r4, #0
	movs r1, #5
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08055C5C
	adds r0, r4, #0
	movs r1, #6
	bl sub_08055D20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x93
	cmp r0, #0xff
	bne _08055C72
	movs r1, #0x94
	b _08055C72
_08055C5C:
	movs r1, #0x92
	b _08055C72
_08055C60:
	movs r1, #0x91
	b _08055C72
_08055C64:
	movs r1, #0x90
	b _08055C72
_08055C68:
	movs r1, #0x8f
	b _08055C72
_08055C6C:
	movs r1, #0x8e
	b _08055C72
_08055C70:
	movs r1, #0x8d
_08055C72:
	adds r0, r1, #0
	bl sub_080486A0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
