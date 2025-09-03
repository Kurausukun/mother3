	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x34]
	mov sb, r1
	mov r8, r2
	bl sub_080895A0
	ldr r0, _0808A1E8
	ldr r1, [sp, #0x34]
	str r0, [r1, #0x1c]
	mov r2, sb
	ldr r1, [r2, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x34]
	bl _call_via_r2
	ldr r0, _0808A1EC
	ldr r1, [sp, #0x34]
	str r0, [r1, #0x1c]
	adds r1, #0x30
	mov sl, r1
	mov r0, sl
	bl sub_0806DC78
	mov r2, r8
	ldr r3, [sp, #0x34]
	str r2, [r3, #0x2c]
	bl sub_0806FBA8
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, r8
	ldrh r1, [r3, #8]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r5, r0, #0
	ldr r3, [r4, #0x1c]
	adds r3, #0x78
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r2, [r5]
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x78
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r5, #2]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x78
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrh r2, [r5, #4]
	add r5, sp, #0x1c
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	mov r0, sl
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0806DDA0
	ldr r0, _0808A1F0
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r1, r8
	ldrh r0, [r1, #0xa]
	ldrh r1, [r1, #0xc]
	bl sub_0805D234
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_0806DEEC
	add r6, sp, #0x28
	movs r0, #0
	strh r0, [r6]
	strh r0, [r6, #2]
	mov r2, r8
	ldrh r1, [r2, #0x16]
	rsbs r0, r1, #0
	bl sub_0805D234
	mov r3, r8
	ldrh r1, [r3, #0x10]
	adds r1, r1, r0
	strh r1, [r6]
	ldrh r1, [r3, #0x16]
	rsbs r0, r1, #0
	bl sub_0805D234
	mov r2, r8
	ldrh r1, [r2, #0x12]
	adds r1, r1, r0
	strh r1, [r6, #2]
	movs r3, #0x14
	ldrsh r7, [r2, r3]
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0xf8
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	add r1, sb
	bl _call_via_r2
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r5, [r4, r2]
	movs r3, #2
	ldrsh r0, [r6, r3]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0x30
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x28]
	mov r3, sb
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	add sb, r1
	ldr r1, [r0, #4]
	mov r0, sb
	bl _call_via_r1
	adds r0, r7, r0
	movs r7, #0
	adds r1, r6, #0
	cmp r0, #0
	blt _0808A194
	adds r7, r0, #0
	cmp r7, #7
	ble _0808A194
	movs r7, #7
_0808A194:
	ldr r4, [sp, #0x34]
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_0806DF48
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0806DF50
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0808A1F4
	ldr r0, _0808A1F8
	str r0, [sp, #0x20]
	ldr r0, _0808A1FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	ldr r0, [sp, #0x34]
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x34]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808A1E8: .4byte vt_09F85378
_0808A1EC: .4byte vt_09F85410
_0808A1F0: .4byte _vt.1D
_0808A1F4: .4byte _vt.3Unk
_0808A1F8: .4byte _vt.8AppClock
_0808A1FC: .4byte gUnknown_0811616C
	.syntax divided
