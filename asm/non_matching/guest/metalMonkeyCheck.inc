	.syntax unified
metalMonkeyCheck:
	push {r4, r5, r6, lr}
	sub sp, #0x38
	bl sub_080725E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060D6E
	bl sub_08072608
	ldrb r0, [r0]
	cmp r0, #0x35
	bne _08060D6E
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x87
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
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
	movs r0, #1
	b _08060D70
_08060D6E:
	movs r0, #0
_08060D70:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
