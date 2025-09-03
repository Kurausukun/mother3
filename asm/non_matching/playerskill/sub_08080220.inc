	.syntax unified
sub_08080220:
	push {lr}
	adds r1, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08080240
	ldr r0, [r1, #0x40]
	cmp r0, #3
	beq _08080240
	cmp r0, #0
	bne _08080240
	movs r0, #2
	str r0, [r1, #0x40]
	movs r0, #0xd3
	bl playSound
_08080240:
	pop {r0}
	bx r0
	.syntax divided
