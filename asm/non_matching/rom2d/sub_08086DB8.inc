	.syntax unified
sub_08086DB8:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r6, r1, #0x10
	lsrs r6, r6, #0x10
	bl __4Base
	ldr r0, _08086E64
	str r0, [r5, #0x20]
	ldr r0, _08086E68
	str r0, [r5, #0x1c]
	movs r0, #0x2c
	adds r0, r0, r5
	mov sb, r0
	bl sub_0806D8EC
	movs r1, #0
	strh r6, [r5, #0x28]
	strh r1, [r5, #0x2a]
	adds r0, r5, #0
	adds r0, #0xbc
	strh r1, [r0]
	ldr r1, _08086E6C
	add r0, sp, #4
	bl sub_080706A0
	add r0, sp, #0x10
	mov r8, r0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08086E70
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sb
	add r1, sp, #4
	mov r2, r8
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08086E74
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, sb
	adds r1, r6, #0
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08086E78
	mov r8, r0
	ldr r0, _08086E7C
	str r0, [sp, #0x20]
	ldr r0, _08086E80
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08086E64: .4byte vt_09F84BE8
_08086E68: .4byte vt_09F84C40
_08086E6C: .4byte 0x000003A5
_08086E70: .4byte 0x00000287
_08086E74: .4byte _vt.1D
_08086E78: .4byte _vt.3Unk
_08086E7C: .4byte _vt.8AppClock
_08086E80: .4byte gUnknown_08114304
	.syntax divided
