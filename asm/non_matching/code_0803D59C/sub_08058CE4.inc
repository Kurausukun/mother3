	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	movs r0, #0x40
	strh r0, [r1, #8]
	ldr r0, _08058D04
	ldrh r0, [r0]
	cmp r0, #0
	bne _08058CFE
	adds r0, r1, #0
	movs r1, #0
	bl sub_08058D08
_08058CFE:
	pop {r0}
	bx r0
	.align 2, 0
_08058D04: .4byte gUnknown_02004850
	.syntax divided
