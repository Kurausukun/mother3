	.syntax unified
sub_0809E1E0:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xa0
	lsls r2, r2, #2
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
	bl getPartyInfo
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	bl tryCastPlayer__5GoodsP4Unit
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
