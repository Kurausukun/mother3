	.syntax unified
	push {r4, lr}
	movs r3, #0x6f
	adds r3, r3, r0
	mov ip, r3
	ldrb r3, [r3]
	movs r4, #4
	orrs r3, r4
	mov r4, ip
	strb r3, [r4]
	lsls r1, r1, #4
	strh r1, [r0]
	lsls r2, r2, #4
	strh r2, [r0, #2]
	bl sub_08050D80
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
