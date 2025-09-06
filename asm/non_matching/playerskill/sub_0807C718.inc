	.syntax unified
sub_0807C718:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	mov sb, r1
	bl __4Base
	ldr r0, _0807C8DC
	str r0, [r6, #0x1c]
	mov r0, sb
	str r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_0807C96C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #0x10
	mov r8, r2
	mov r0, r8
	bl sub_080706A0
	add r0, sp, #4
	mov r1, r8
	bl __11Unk0806D478P4Unk2
	ldr r3, _0807C8E0
	mov sl, r3
	str r3, [sp, #0x18]
	add r0, sp, #4
	bl sub_0806D53C
	adds r1, r6, #0
	adds r1, #0x28
	ldr r4, _0807C8E4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r5, _0807C8E8
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	add r0, sp, #4
	bl sub_0806D53C
	adds r7, r6, #0
	adds r7, #0x48
	str r0, [r4]
	str r7, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x9c
	bl __builtin_new
	bl sub_0807D0EC
	adds r5, r0, #0
	str r5, [r6, #0x68]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r3, sb
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, r8
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, r8
	bl _call_via_r2
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	movs r0, #0xe4
	bl __builtin_new
	mov r1, sl
	str r1, [sp, #0x18]
	str r7, [sp, #0x10]
	movs r2, #0x20
	mov r3, r8
	str r2, [r3, #4]
	mov r1, r8
	bl sub_08071714
	str r0, [r6, #0x6c]
	mov r0, sl
	str r0, [sp, #0x18]
	movs r0, #0xe4
	bl __builtin_new
	mov r1, sl
	str r1, [sp, #0x18]
	str r7, [sp, #0x10]
	movs r2, #0x20
	mov r3, r8
	str r2, [r3, #4]
	mov r1, r8
	bl sub_08071714
	str r0, [r6, #0x70]
	mov r0, sl
	str r0, [sp, #0x18]
	movs r0, #0xa0
	bl __builtin_new
	mov r1, sb
	bl sub_080869BC
	str r0, [r6, #0x74]
	movs r0, #0xa4
	bl __builtin_new
	bl sub_0806DC78
	adds r4, r0, #0
	str r4, [r6, #0x78]
	ldr r5, [r4, #0x1c]
	adds r5, #0x68
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_0807C8F8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	bl sub_080706A0
	add r2, sp, #0x1c
	mov sb, r2
	mov r0, sb
	movs r1, #5
	bl sub_080706A0
	add r3, sp, #0x28
	mov r0, sl
	str r0, [sp, #0x30]
	str r7, [sp, #0x28]
	movs r1, #0x20
	str r1, [r3, #4]
	ldr r5, [r5, #4]
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	bl _call_via_r5
	mov r2, sl
	str r2, [sp, #0x30]
	str r2, [sp, #0x24]
	str r2, [sp, #0x18]
	adds r0, r6, #0
	bl sub_0807CAEC
	ldr r0, [r6, #0x78]
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x98
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r0, r4
	adds r2, #0xf0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	bl get__12ClockManager
	adds r5, r0, #0
	mov r0, r8
	bl __4Base
	ldr r0, _0807C8EC
	mov sb, r0
	ldr r0, _0807C8F0
	str r0, [sp, #0x2c]
	ldr r0, _0807C8F4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	mov r0, r8
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	movs r1, #2
	bl _._11Unk0806D478
	adds r0, r6, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807C8DC: .4byte vt_09F82558
_0807C8E0: .4byte _vt.1D
_0807C8E4: .4byte 0x040000D4
_0807C8E8: .4byte 0x80000010
_0807C8EC: .4byte _vt.3Unk
_0807C8F0: .4byte _vt.11PreAppClock
_0807C8F4: .4byte gUnknown_08108AE0
	.syntax divided
