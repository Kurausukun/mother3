	.syntax unified
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001BFC
	movs r1, #2
	str r1, [sp]
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x87
	bl sub_08047E48
	ldr r1, _08044590
	ldr r0, _08044594
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08044590: .4byte gSomeBlend
_08044594: .4byte 0x000044F3
	.syntax divided
