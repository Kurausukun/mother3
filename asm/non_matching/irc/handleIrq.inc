    .syntax unified
handleIrq:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, #0x28
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	movs r2, #0
	mov sb, r2
	ldrb r0, [r1]
	cmp sb, r0
	bge _0806A07E
	mov r8, sl
_0806A024:
	mov r2, sb
	lsls r1, r2, #2
	mov r0, sl
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	mov r0, r8
	ldr r2, [r0, #0x14]
	ldr r3, [r0, #0x18]
	asrs r4, r2, #0x10
	cmp r4, #0
	ble _0806A054
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add r0, ip
	ldr r1, [r0]
	lsls r0, r4, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r6, [r0]
	ldr r7, [r0, #4]
	adds r5, r7, #0
	b _0806A056
_0806A054:
	adds r5, r3, #0
_0806A056:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r4, #0
	ble _0806A066
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _0806A068
_0806A066:
	adds r0, r1, #0
_0806A068:
	add r0, ip
	bl _call_via_r5
	movs r1, #8
	add r8, r1
	movs r2, #1
	add sb, r2
	mov r0, sl
	ldrb r0, [r0]
	cmp sb, r0
	blt _0806A024
_0806A07E:
	ldr r0, [sp]
	bl disableAll__3Irc
	ldr r1, _0806A0A4 @ =gUnknown_03007FF8
	movs r0, #1
	ldr r2, [sp, #4]
	lsls r0, r2
	strh r0, [r1]
	ldr r0, [sp]
	bl enableAll__3Irc
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A0A4: .4byte gUnknown_03007FF8
    .syntax divided
