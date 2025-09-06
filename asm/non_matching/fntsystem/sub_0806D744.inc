	.syntax unified
sub_0806D744:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	strh r1, [r4, #0x20]
	adds r0, #0x30
	adds r1, r2, #0
	bl sub_08087F3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D794
	adds r0, r4, #0
	adds r0, #0x44
	adds r1, r5, #0
	bl sub_0806D5AC__11Unk0806D548P4Unk2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D794
	adds r0, r4, #0
	adds r0, #0x58
	ldr r1, [sp, #0xc]
	bl sub_0806D4D0__11Unk0806D478P4Unk2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D794
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	b _0806D796
_0806D794:
	movs r0, #0
_0806D796:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
