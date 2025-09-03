	.syntax unified
sub_080016E4:
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #6]
	cmp r0, #3
	bne _08001706
	ldr r3, _08001714
	ldrb r2, [r3, #1]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _08001706
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08001710
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #1]
_08001706:
	ldrh r0, [r1, #2]
	cmp r0, #0xf
	bne _08001710
	bl DoReset
_08001710:
	pop {r0}
	bx r0
	.align 2, 0
_08001714: .4byte gUnknown_02004848
	.syntax divided
