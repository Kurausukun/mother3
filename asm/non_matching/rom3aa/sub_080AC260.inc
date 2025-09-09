	.syntax unified
sub_080AC260:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC290
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, #0x45
	bgt _080AC28C
	movs r1, #0x9a
_080AC28C:
	adds r0, r1, #0
	b _080AC29A
_080AC290:
	adds r0, r4, #0
	bl calcItemDrop__7Monster
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080AC29A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
