	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	mov r8, r1
	adds r7, r2, #0
	adds r1, r3, #0
	ldr r0, [sp, #0x50]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r1, #0
	ble _0807BACE
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_0806E1C8
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	mov r1, sb
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	mov r0, r8
	add r1, sp, #4
	bl sub_0806E374__3MsgRC3Msg
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
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r0, r7, r0
	cmp r0, #1
	bne _0807BAC4
	ldr r1, _0807BAC0
	mov r0, r8
	bl sub_0806E34C
	b _0807BACC
	.align 2, 0
_0807BAC0: .4byte 0x0000FF02
_0807BAC4:
	ldr r1, _0807BAE0
	mov r0, r8
	bl sub_0806E34C
_0807BACC:
	adds r7, #1
_0807BACE:
	adds r0, r7, #0
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807BAE0: .4byte 0x0000FF01
	.syntax divided
