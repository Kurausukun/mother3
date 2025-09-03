	.syntax unified
sub_08081F14:
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r3, _08081F7C
	ldr r0, [r3]
	cmp r0, #0
	bne _08081F3E
	ldr r0, _08081F80
	movs r1, #0x20
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r1, #0x30
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r0, #1
	str r0, [r3]
_08081F3E:
	adds r0, r2, #0
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08081F84
	adds r1, r1, r0
	ldr r0, [r1, #0x6c]
	lsls r0, r0, #2
	ldr r1, _08081F80
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08081F7C: .4byte gUnknown_0200253C
_08081F80: .4byte gUnknown_02002530
_08081F84: .4byte gMonsterData
	.syntax divided
