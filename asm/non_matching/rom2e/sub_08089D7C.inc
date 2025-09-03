	.syntax unified
sub_08089D7C:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	cmp r0, r1
	bne _08089D8A
	movs r0, #0
	b _08089D96
_08089D8A:
	str r1, [r2, #0x50]
	adds r1, r2, #0
	adds r1, #0x4e
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
_08089D96:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
