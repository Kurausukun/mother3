	.syntax unified
	push {r4, lr}
	ldr r4, _08052124
	adds r0, r4, #0
	movs r1, #0xf4
	bl memclear
	movs r1, #0
	movs r0, #2
	strh r0, [r4]
	movs r0, #0x4d
	strb r0, [r4, #2]
	movs r0, #0x33
	strb r0, [r4, #3]
	strh r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052124: .4byte gUnknown_020050C0
	.syntax divided
