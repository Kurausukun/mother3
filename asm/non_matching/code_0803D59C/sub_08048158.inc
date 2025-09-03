	.syntax unified
sub_08048158:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08048176
	adds r0, r3, #0
	bl sub_080481DC
	b _080481D6
_08048176:
	adds r0, r3, #0
	adds r0, #0xe0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _0804818A
	adds r0, r3, #0
	bl sub_08048214
	b _080481D6
_0804818A:
	adds r0, r3, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _0804819E
	adds r0, r3, #0
	bl sub_08048308
	b _080481D6
_0804819E:
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _080481D2
	adds r0, r3, #0
	adds r0, #0x60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080481BE
	adds r0, r3, #0
	bl sub_080483E0
	b _080481D6
_080481BE:
	adds r0, r4, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _080481D2
	adds r0, r4, #0
	bl sub_080484A8
	b _080481D6
_080481D2:
	adds r2, #2
	adds r0, r2, #0
_080481D6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
