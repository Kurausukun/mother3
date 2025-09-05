    .syntax unified
    .global __12BattleSpriteP7Monster
__12BattleSpriteP7Monster:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x24
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_0806D8EC
	ldr r0, _08081D34
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r5, r6, #0
	adds r5, #0x9c
	adds r0, r5, #0
	bl __11Unk0806D478
	adds r0, r6, #0
	adds r0, #0x94
	str r4, [r0]
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, _08081D38
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_080706A0
	adds r0, r5, #0
	mov r1, sp
	bl sub_0806D4D0__11Unk0806D478P4Unk2
	ldr r1, _08081D3C
	mov r8, r1
	str r1, [sp, #8]
	adds r0, r5, #0
	bl sub_0806D53C
	adds r5, #0xc
	ldr r1, _08081D40
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _08081D44
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_080706A0
	ldr r0, [r4, #0x1c]
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_080706A0
	add r3, sp, #0x18
	movs r0, #0x20
	mov r1, r8
	str r1, [sp, #0x20]
	str r5, [sp, #0x18]
	str r0, [r3, #4]
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_0806D9F4
	mov r2, r8
	str r2, [sp, #0x20]
	str r2, [sp, #0x14]
	str r2, [sp, #8]
	adds r0, r6, #0
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08081D34: .4byte vt_09F83418
_08081D38: .4byte 0x00000179
_08081D3C: .4byte _vt.1D
_08081D40: .4byte 0x040000D4
_08081D44: .4byte 0x80000010
	.syntax divided
