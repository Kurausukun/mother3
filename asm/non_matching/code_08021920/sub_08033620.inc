	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	cmp r5, #0x10
	bls _08033636
	b _080337A2
_08033636:
	lsls r0, r5, #2
	ldr r1, _08033640
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033640: .4byte _08033644
_08033644:
	.4byte _08033688
	.4byte _0803369E
	.4byte _080336BA
	.4byte _080336C0
	.4byte _080336C6
	.4byte _080336DE
	.4byte _080336F2
	.4byte _080336FE
	.4byte _08033708
	.4byte _08033714
	.4byte _0803371E
	.4byte _08033724
	.4byte _0803372A
	.4byte _08033738
	.4byte _080336E8
	.4byte _08033746
	.4byte _08033778
_08033688:
	adds r2, r4, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _08033696
	b _080337A2
_08033696:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	b _080337A2
_0803369E:
	adds r2, r4, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	bl sub_08036030
	b _080337A2
_080336BA:
	adds r2, r4, #0
	adds r2, #0xbc
	b _0803373C
_080336C0:
	adds r0, r4, #0
	adds r0, #0xbc
	b _0803372E
_080336C6:
	adds r2, r4, #0
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #5
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	b _08033740
_080336DE:
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r1, [r0]
	movs r2, #8
	b _08033732
_080336E8:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #0x40
	b _08033732
_080336F2:
	adds r2, r4, #0
	adds r2, #0xcc
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	b _08033740
_080336FE:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #2
	b _08033732
_08033708:
	adds r2, r4, #0
	adds r2, #0xcc
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	b _08033740
_08033714:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #4
	b _08033732
_0803371E:
	adds r0, r4, #0
	adds r0, #0xcb
	b _0803372E
_08033724:
	adds r2, r4, #0
	adds r2, #0xcb
	b _0803373C
_0803372A:
	adds r0, r4, #0
	adds r0, #0xcc
_0803372E:
	ldrb r1, [r0]
	movs r2, #0x80
_08033732:
	orrs r1, r2
	strb r1, [r0]
	b _080337A2
_08033738:
	adds r2, r4, #0
	adds r2, #0xcc
_0803373C:
	ldrb r1, [r2]
	movs r0, #0x7f
_08033740:
	ands r0, r1
	strb r0, [r2]
	b _080337A2
_08033746:
	adds r2, r4, #0
	adds r2, #0xca
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3c
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xf0
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	ldr r0, [r4, #0x2c]
	movs r1, #8
	bl memclear
	b _080337A2
_08033778:
	adds r2, r4, #0
	adds r2, #0xca
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3c
	bl __umodsi3
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	ldr r0, [r4, #0x2c]
	movs r1, #8
	bl memclear
_080337A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
