	.syntax unified
sub_0800EBF8:
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _0800EC20
	ldr r1, _0800EC24
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EC28
	adds r0, r2, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	bl sub_0801B040
	b _0800EC2A
	.align 2, 0
_0800EC20: .4byte gGame
_0800EC24: .4byte 0x00008494
_0800EC28:
	movs r0, #0
_0800EC2A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
