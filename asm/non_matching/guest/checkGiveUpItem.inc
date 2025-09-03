	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sl, r0
	ldrh r1, [r0, #0x24]
	add r6, sp, #0x10
	adds r0, r6, #0
	bl getName__5GoodsUs
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x8f
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x64
	movs r7, #0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807362C
	mov r8, r0
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	cmp r0, #0
	bne _08061804
	add r4, sp, #0x34
	adds r0, r4, #0
	mov r1, sl
	bl tellGaveUpItem
	add r1, sp, #0x68
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	b _08061868
_08061804:
	add r0, sp, #0x40
	mov r8, r0
	bl __3Msg
	add r6, sp, #0x4c
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x58
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x34
	adds r0, r4, #0
	movs r1, #0x90
	mov r2, r8
	adds r3, r6, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x6c
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807362C
	mov sb, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	cmp r0, #0
	bne _08061870
	mov r0, sl
	movs r1, #0
_08061868:
	movs r2, #0
	bl sub_08061954
	b _0806187A
_08061870:
	mov r0, sl
	movs r1, #1
	movs r2, #1
	bl sub_08061954
_0806187A:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
