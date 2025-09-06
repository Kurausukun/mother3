	.syntax unified
sub_080651C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	bl __4Base
	ldr r0, _08065290
	str r0, [r7, #0x1c]
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	adds r5, r7, #0
	adds r5, #0x34
	adds r0, r7, #0
	adds r0, #0x38
	movs r1, #0xf
	add r2, sp, #0x10
	mov r8, r2
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_080651EC:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #0xc
	subs r1, #1
	cmp r1, r3
	bne _080651EC
	movs r4, #0
	str r4, [r5]
	adds r5, r7, #0
	adds r5, #0xfc
	adds r0, r5, #0
	bl __11Unk0806D548
	movs r0, #0x88
	lsls r0, r0, #1
	adds r6, r7, r0
	adds r0, r6, #0
	bl __11Unk0806D478
	str r4, [r7, #0x28]
	strh r4, [r7, #0x2c]
	ldr r1, _08065294
	movs r0, #0
	bl randS32
	strh r0, [r7, #0x2e]
	movs r0, #0x11
	strh r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xf8
	strh r4, [r0]
	add r0, sp, #4
	movs r1, #3
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_0806D5AC__11Unk0806D548P4Unk2
	ldr r4, _08065298
	str r4, [sp, #0xc]
	movs r1, #0xa1
	lsls r1, r1, #2
	add r0, sp, #4
	bl sub_080706A0
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0806D4D0__11Unk0806D478P4Unk2
	str r4, [sp, #0xc]
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #0x10
	bl __4Base
	ldr r6, _0806529C
	ldr r0, _080652A0
	str r0, [sp, #0x2c]
	ldr r0, _080652A4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, r8
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065290: .4byte vt_09F7DEB0
_08065294: .4byte 0x000003FF
_08065298: .4byte _vt.6ResPtr
_0806529C: .4byte _vt.3Unk
_080652A0: .4byte _vt.8AppClock
_080652A4: .4byte gUnknown_080FBDA0
	.syntax divided
