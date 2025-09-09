	.syntax unified
sub_0809BC10:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	add r0, sp, #4
	bl __3Msg
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl ROMStrFmt__FiRC3MsgN21
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
