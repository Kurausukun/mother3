	.syntax unified
sub_08071E5C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_0806D8EC
	ldr r0, _08071EF8
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
	ldr r1, _08071EFC
	add r0, sp, #4
	bl sub_080706A0
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r1, #2
	bl sub_080706A0
	ldr r1, _08071F00
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806D9F4
	ldr r0, _08071F04
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x19
	bl sub_0806DB60
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08071F08
	mov r8, r0
	ldr r0, _08071F0C
	str r0, [sp, #0x20]
	ldr r0, _08071F10
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
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08071EF8: .4byte vt_09F81000
_08071EFC: .4byte 0x00000291
_08071F00: .4byte 0x00000283
_08071F04: .4byte _vt.1D
_08071F08: .4byte _vt.3Unk
_08071F0C: .4byte _vt.11PreAppClock
_08071F10: .4byte gUnknown_08104790
	.syntax divided
