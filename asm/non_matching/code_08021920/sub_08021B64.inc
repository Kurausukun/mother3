	.syntax unified
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
	bhi _08021B82
	adds r0, r3, #0
	bl sub_08021BDC
	b _08021BD6
_08021B82:
	adds r0, r3, #0
	adds r0, #0xe0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021B96
	adds r0, r3, #0
	bl sub_08021DC4
	b _08021BD6
_08021B96:
	adds r0, r3, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021BAA
	adds r0, r3, #0
	bl sub_08021F40
	b _08021BD6
_08021BAA:
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021BBE
	adds r0, r3, #0
	bl sub_08022024
	b _08021BD6
_08021BBE:
	adds r0, r3, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08021BD0
	adds r2, #2
	adds r0, r2, #0
	b _08021BD6
_08021BD0:
	adds r0, r4, #0
	bl sub_080220EC
_08021BD6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
