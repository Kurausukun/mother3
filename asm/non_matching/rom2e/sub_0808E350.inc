	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0808E5BC
	str r0, [r7, #0x1c]
	adds r4, r7, #0
	adds r4, #0x2c
	movs r5, #3
	add r0, sp, #0x10
	mov r8, r0
	add r1, sp, #0x1c
	mov sb, r1
	mov r2, sp
	adds r2, #0x28
	str r2, [sp, #0x30]
	movs r6, #1
	rsbs r6, r6, #0
_0808E37E:
	adds r0, r4, #0
	bl sub_0806D8EC
	adds r4, #0x90
	subs r5, #1
	cmp r5, r6
	bne _0808E37E
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	bl sub_08071F8C
	movs r0, #0
	strh r0, [r7, #0x24]
	mov sl, r8
	movs r5, #0x58
	str r5, [sp, #0x34]
	adds r6, r7, #0
	adds r6, #0x2c
	ldr r0, [sp, #0x30]
	mov r8, r0
	movs r1, #3
	str r1, [sp, #0x2c]
_0808E3AC:
	ldr r4, [r6, #0x1c]
	adds r4, #0x68
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r6, r5
	add r0, sp, #4
	ldr r1, _0808E5C0
	bl sub_080706A0
	mov r0, sl
	movs r1, #7
	bl sub_080706A0
	mov r0, sb
	ldr r1, _0808E5C4
	bl sub_080706A0
	ldr r4, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	mov r2, sl
	mov r3, sb
	bl _call_via_r4
	ldr r4, _0808E5C8
	str r4, [sp, #0x24]
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r2, [r6, #0x1c]
	adds r2, #0x88
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, r6, r0
	movs r3, #0x90
	add r1, sp, #0x28
	mov r4, sp
	ldrh r4, [r4, #0x34]
	strh r4, [r1]
	mov r5, r8
	strh r3, [r5, #2]
	ldr r2, [r2, #4]
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r4, [sp, #0x34]
	adds r4, #0x10
	str r4, [sp, #0x34]
	adds r6, #0x90
	ldr r5, [sp, #0x2c]
	subs r5, #1
	str r5, [sp, #0x2c]
	cmp r5, #0
	bge _0808E3AC
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5CC
	mov sb, r0
	ldr r0, _0808E5D0
	str r0, [sp, #0x20]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	ldr r0, _0808E5D4
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5D8
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5DC
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5E0
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5E4
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5E8
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5EC
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5F0
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5F4
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808E5F8
	str r0, [sp, #0x20]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	bl sub_0808E73C
	adds r0, r7, #0
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E5BC: .4byte vt_09F85DA8
_0808E5C0: .4byte 0x000003A5
_0808E5C4: .4byte 0x00000287
_0808E5C8: .4byte _vt.1D
_0808E5CC: .4byte _vt.3Unk
_0808E5D0: .4byte _vt.10UpKeyPress
_0808E5D4: .4byte gUnknown_0811953C
_0808E5D8: .4byte _vt.12DownKeyPress
_0808E5DC: .4byte _vt.12LeftKeyPress
_0808E5E0: .4byte _vt.13RightKeyPress
_0808E5E4: .4byte _vt.9AKeyPress
_0808E5E8: .4byte _vt.9BKeyPress
_0808E5EC: .4byte _vt.9LKeyPress
_0808E5F0: .4byte _vt.9RKeyPress
_0808E5F4: .4byte _vt.13StartKeyPress
_0808E5F8: .4byte _vt.14SelectKeyPress
	.syntax divided
