	.syntax unified
sub_0809E134:
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809E170
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x10
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
	movs r5, #0
	b _0809E19C
	.align 2, 0
_0809E170: .4byte 0x00000281
_0809E174:
	adds r0, r5, #0
	bl GetPlayer
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809E19C:
	bl getPartyCount
	cmp r5, r0
	blt _0809E174
	movs r5, #0
	b _0809E1D0
_0809E1A8:
	adds r0, r5, #0
	bl sub_08072C7C
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809E1D0:
	bl sub_08072C60
	cmp r5, r0
	blt _0809E1A8
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
