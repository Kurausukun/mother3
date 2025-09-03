	.syntax unified
sub_0802B048:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl get_char_stats
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_0802B874
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r5, #0x1c]
	adds r4, r4, r1
	strh r4, [r5, #0x1c]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	cmp r4, r0
	ble _0802B07E
	strh r1, [r5, #0x1c]
	b _0802B086
_0802B07E:
	cmp r4, #0
	bge _0802B086
	movs r0, #0
	strh r0, [r5, #0x1c]
_0802B086:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080295E8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
