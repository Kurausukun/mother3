	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	bl __4Base
	ldr r0, _080850B4
	str r0, [r7, #0x1c]
	movs r0, #0x30
	adds r0, r0, r7
	mov sb, r0
	movs r0, #3
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x40]
	mov r3, sp
	adds r3, #0x38
	str r3, [sp, #0x44]
	subs r1, #0x24
	str r1, [sp, #0x3c]
	movs r3, #1
	rsbs r3, r3, #0
	add r5, sp, #0x30
	movs r1, #0xa
	mov sl, r1
_08084F40:
	mov r4, sb
	movs r6, #0xe
	subs r0, #1
	mov r8, r0
_08084F48:
	ldr r0, _080850B8
	str r0, [sp, #0xc]
	ldr r1, _080850BC
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x30
	mov r1, sl
	strh r1, [r0]
	strh r1, [r5, #2]
	adds r0, r4, #0
	add r1, sp, #4
	adds r2, r5, #0
	str r3, [sp, #0x48]
	bl sub_0808ADF0
	ldr r0, _080850B8
	str r0, [sp, #0xc]
	ldr r0, _080850C0
	str r0, [r4, #0x1c]
	adds r4, #0x58
	subs r6, #1
	ldr r3, [sp, #0x48]
	cmp r6, r3
	bne _08084F48
	movs r1, #0xa5
	lsls r1, r1, #3
	add sb, r1
	mov r0, r8
	cmp r0, r3
	bne _08084F40
	ldr r3, _080850C4
	adds r0, r7, r3
	bl sub_08071F8C
	movs r1, #0
	add r0, sp, #0x34
	strb r1, [r0]
	ldr r0, [sp, #0x40]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	ldr r0, [sp, #0x34]
	str r0, [r7, #0x24]
	strh r1, [r7, #0x28]
	strh r1, [r7, #0x2a]
	str r1, [r7, #0x2c]
	movs r3, #0
	ldr r1, [sp, #0x44]
	mov sb, r1
_08084FA8:
	movs r6, #0
	lsls r1, r3, #2
	lsls r2, r3, #1
	adds r0, r3, #1
	mov sl, r0
	adds r1, r1, r3
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r5, r1, #3
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	movs r4, #0x2d
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x30
	str r2, [sp, #0x4c]
_08084FCC:
	movs r0, #0x58
	muls r0, r6, r0
	adds r1, r5, r7
	adds r1, r0, r1
	ldr r2, [r1, #0x4c]
	adds r2, #0x88
	add r0, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r1, sp, #0x38
	strh r4, [r1]
	add r1, sp, #0x4c
	ldrh r3, [r1]
	mov r1, sb
	strh r3, [r1, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, #0xa
	adds r6, #1
	cmp r6, #0xe
	ble _08084FCC
	mov r3, sl
	cmp r3, #3
	ble _08084FA8
	add r0, sp, #0x10
	bl __4Base
	ldr r3, _080850C8
	mov sb, r3
	ldr r0, _080850CC
	str r0, [sp, #0x2c]
	ldr r0, _080850C4
	adds r0, r0, r7
	mov r8, r0
	ldr r0, _080850D0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r6, r5, #0
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x3c]
	bl __4Base
	ldr r0, _080850D4
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, sb
	str r3, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x3c]
	bl __4Base
	ldr r0, _080850D8
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x3c]
	bl __4Base
	ldr r0, _080850DC
	str r0, [sp, #0x2c]
	str r6, [sp]
	adds r3, r4, #0
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x3c]
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080850B4: .4byte vt_09F84008
_080850B8: .4byte _vt.1D
_080850BC: .4byte gUnknown_08CE39F8
_080850C0: .4byte vt_09F83E40
_080850C4: .4byte 0x000014D0
_080850C8: .4byte _vt.3Unk
_080850CC: .4byte _vt.9AKeyPress
_080850D0: .4byte gUnknown_0810ED48
_080850D4: .4byte _vt.13AKeyLongPress
_080850D8: .4byte _vt.9LKeyPress
_080850DC: .4byte _vt.13LKeyLongPress
	.syntax divided
