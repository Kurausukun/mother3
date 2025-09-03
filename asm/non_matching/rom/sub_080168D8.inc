	.syntax unified
sub_080168D8:
	push {r4, r5, lr}
	ldr r5, _0801691C
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08016920
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080195B0
	ldr r0, _08016924
	adds r5, r5, r0
	subs r4, #2
	ldrh r0, [r4]
	lsrs r4, r0, #2
	cmp r4, #7
	bls _08016928
	movs r0, #8
	strb r0, [r5, #1]
	b _0801692A
	.align 2, 0
_0801691C: .4byte gSomeBlend
_08016920: .4byte gUnknown_0200B564
_08016924: .4byte 0x000146D0
_08016928:
	strb r4, [r5, #1]
_0801692A:
	cmp r4, #0xf
	bls _08016932
	movs r0, #8
	b _0801693E
_08016932:
	cmp r4, #7
	bls _0801693C
	adds r0, r4, #0
	subs r0, #8
	b _0801693E
_0801693C:
	movs r0, #0
_0801693E:
	strb r0, [r5]
	ldr r5, _08016970
	ldr r1, _08016974
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_08001960
	bl sub_08005C4C
	cmp r4, #0xf
	bhi _0801697C
	ldr r2, _08016978
	adds r3, r5, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _0801697E
	.align 2, 0
_08016970: .4byte gSomeBlend
_08016974: .4byte 0x000121BA
_08016978: .4byte 0x0001ED10
_0801697C:
	movs r0, #1
_0801697E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
