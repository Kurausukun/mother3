	.syntax unified
sub_0809F670:
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #0xbe
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809F6CC
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x3b
	bgt _0809F6CC
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xce
	lsls r2, r2, #3
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
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0
	b _0809F6D4
_0809F6CC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl calcDidHit__6ActionP4Unit
_0809F6D4:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
