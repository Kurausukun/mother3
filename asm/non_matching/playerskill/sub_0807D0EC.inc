	.syntax unified
sub_0807D0EC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0807D1E4
	str r0, [r5, #0x1c]
	movs r4, #0
	movs r6, #0
	strh r6, [r5, #0x28]
	strh r6, [r5, #0x2a]
	movs r0, #0x34
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0807D1E8
	ldr r1, _0807D1EC
	mov sl, r1
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #8]
	add r2, sp, #0x40
	movs r0, #8
	strh r0, [r2]
	strh r0, [r2, #2]
	mov r0, r8
	add r1, sp, #4
	bl sub_08071108
	mov r1, sl
	str r1, [sp, #0xc]
	ldr r0, _0807D1F0
	mov r1, r8
	str r0, [r1, #0x1c]
	adds r7, r5, #0
	adds r7, #0x90
	adds r0, r7, #0
	bl __11Unk0806D478
	ldr r1, _0807D1F4
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	movs r0, #0x24
	adds r0, r0, r5
	mov sb, r0
	strb r2, [r0]
	str r6, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x30
	strb r4, [r0]
	add r1, sp, #0x44
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, r8
	bl sub_0806E9C4
	mov r1, sb
	ldrb r0, [r1]
	add r1, sp, #0x48
	lsls r0, r0, #6
	movs r2, #0xa0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, r8
	bl sub_08071194
	mov r0, r8
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_0806E9E8
	ldr r1, _0807D1F8
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D4D0__11Unk0806D478P4Unk2
	mov r0, sl
	str r0, [sp, #0x18]
	bl get__12ClockManager
	mov r8, r0
	add r0, sp, #0x1c
	bl __4Base
	ldr r1, _0807D1FC
	mov sb, r1
	ldr r0, _0807D200
	str r0, [sp, #0x38]
	add r6, sp, #0x1c
	ldr r0, _0807D204
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x38]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D1E4: .4byte vt_09F82648
_0807D1E8: .4byte gUnknown_08D0B010
_0807D1EC: .4byte _vt.6ResPtr
_0807D1F0: .4byte vt_09F826C8
_0807D1F4: .4byte gUnknown_020021B8
_0807D1F8: .4byte 0x00000109
_0807D1FC: .4byte _vt.3Unk
_0807D200: .4byte _vt.8AppClock
_0807D204: .4byte gUnknown_08109168
	.syntax divided
