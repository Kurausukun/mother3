	.syntax unified
sub_08016D54:
	push {r4, r5, r6, r7, lr}
	ldr r1, _08016E20
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	ldr r2, _08016E24
	adds r7, r1, #0
	cmp r0, #0
	bge _08016D6A
	movs r0, #0x80
	lsls r0, r0, #4
	adds r2, r2, r0
_08016D6A:
	movs r4, #2
	movs r5, #0xc0
	lsls r5, r5, #8
	movs r3, #0
	ldr r6, _08016E28
_08016D74:
	adds r1, r2, #0
	adds r0, r4, #0
	orrs r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, #0x40
	strh r0, [r2]
	adds r2, r1, #0
	movs r0, #1
	cmp r4, #1
	bne _08016E06
	movs r0, #2
_08016E06:
	adds r4, r0, #0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _08016D74
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08016E30
	ldr r1, _08016E2C
	b _08016E32
	.align 2, 0
_08016E20: .4byte gGame
_08016E24: .4byte gUnknown_02016078
_08016E28: .4byte gSomeBlend
_08016E2C: .4byte 0x00002C92
_08016E30:
	ldr r1, _08016E40
_08016E32:
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E40: .4byte 0x00002C90
	.syntax divided
