    .syntax unified
sub_0805E700:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r4, [r6, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	mov r0, sp
	bl __4Base
	ldr r1, _0805E800 @ =_vt.3Unk
	mov r8, r1
	ldr r0, _0805E804 @ =_vt.13ShowDownAsWin
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r1, [r6, #0x1c]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0
	bl sub_0807459C__FUsiii
	adds r0, r6, #0
	bl sub_0805E808__6Battle
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xd8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xe0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x4c]
	ldr r4, [r5, #0x1c]
	adds r4, #0xf0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x54]
	ldr r1, [r0, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E800: .4byte _vt.3Unk
_0805E804: .4byte _vt.13ShowDownAsWin
    .syntax divided
