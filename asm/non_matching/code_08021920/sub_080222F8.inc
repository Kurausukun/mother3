	.syntax unified
sub_080222F8:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r0, #8
	bne _0802230C
	ldr r0, _08022308
	b _0802234A
	.align 2, 0
_08022308: .4byte gUnknown_02004EE2
_0802230C:
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08022320
	ldr r0, _0802231C
	b _0802234A
	.align 2, 0
_0802231C: .4byte gUnknown_02004EF2
_08022320:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802233E
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	b _0802234A
_0802233E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	ldr r1, _08022350
	adds r0, r0, r1
_0802234A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08022350: .4byte gUnknown_02004112
	.syntax divided
