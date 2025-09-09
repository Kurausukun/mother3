	.syntax unified
sub_0809E338:
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl getPartyCount
	cmp r0, #1
	ble _0809E380
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809E37C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _0809E386
	.align 2, 0
_0809E37C: .4byte 0x0000027A
_0809E380:
	adds r0, r4, #0
	bl tellUseMessage__6Action
_0809E386:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
