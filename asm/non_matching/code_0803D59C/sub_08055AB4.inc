	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r4, _08055B44
	ldr r6, _08055B48
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl sub_08002420
	adds r0, r4, #0
	adds r0, #0x6c
	adds r1, r6, #0
	subs r1, #0x40
	movs r2, #8
	bl sub_08002420
	movs r1, #0xa2
	lsls r1, r1, #3
	adds r0, r4, r1
	adds r5, r6, #0
	subs r5, #0x20
	adds r1, r5, #0
	movs r2, #8
	bl sub_08002420
	ldr r7, _08055B4C
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_08002420
	adds r0, r7, #0
	subs r0, #0x10
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #8
	bl sub_08002420
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r6, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #8
	bl sub_08002420
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r6, #0
	adds r1, #0x60
	movs r2, #9
	bl sub_08002420
	adds r0, r7, #0
	adds r0, #0x22
	adds r1, r6, #0
	adds r1, #0x80
	movs r2, #9
	bl sub_08002420
	adds r0, r7, #0
	adds r0, #0x34
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r2, #9
	bl sub_08002420
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055B44: .4byte gUnknown_0200417E
_08055B48: .4byte gUnknown_0201AA9A
_08055B4C: .4byte gUnknown_02004EF2
	.syntax divided
