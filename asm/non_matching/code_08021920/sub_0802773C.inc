	.syntax unified
sub_0802773C:
	push {r4, lr}
	ldr r0, _08027760
	ldr r4, _08027764
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r4, #0
	bl sub_08001B18
	ldr r0, _08027768
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #4
	bhi _08027812
	lsls r0, r0, #2
	ldr r1, _0802776C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027760: .4byte gUnknown_03005314
_08027764: .4byte gUnknown_0200F088
_08027768: .4byte 0xFFFFC4D3
_0802776C: .4byte _08027770
_08027770:
	.4byte _08027784
	.4byte _08027812
	.4byte _080277C8
	.4byte _08027812
	.4byte _08027808
_08027784:
	ldr r4, _080277B8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl memclear
	ldr r1, _080277BC
	ldr r2, _080277C0
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08027812
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08027812
	ldr r0, _080277C4
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r2, #0x40
	bl sub_08001B18
	b _08027812
	.align 2, 0
_080277B8: .4byte gUnknown_03005314
_080277BC: .4byte gGame
_080277C0: .4byte 0x00008494
_080277C4: .4byte gUnknown_020291F8
_080277C8:
	ldr r0, _080277F4
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	ldr r1, _080277F8
	ldr r2, _080277FC
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r2, #0
	strb r2, [r0]
	ldr r3, _08027800
	adds r0, r1, r3
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, _08027804
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
	b _08027812
	.align 2, 0
_080277F4: .4byte gUnknown_03005314
_080277F8: .4byte gSomeBlend
_080277FC: .4byte 0x00002C9C
_08027800: .4byte 0x00002C9D
_08027804: .4byte 0x00002C9E
_08027808:
	ldr r0, _08027818
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
_08027812:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027818: .4byte gUnknown_03005314
	.syntax divided
