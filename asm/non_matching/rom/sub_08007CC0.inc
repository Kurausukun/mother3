	.syntax unified
sub_08007CC0:
	push {lr}
	ldrh r1, [r0, #8]
	movs r1, #0x40
	strh r1, [r0, #8]
	movs r1, #0
	bl sub_08007CE8
	ldr r0, _08007CE0
	ldr r1, _08007CE4
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08007D94
	pop {r0}
	bx r0
	.align 2, 0
_08007CE0: .4byte gGame
_08007CE4: .4byte 0x0000595B
	.syntax divided
