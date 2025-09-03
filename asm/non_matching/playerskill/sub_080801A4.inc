	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080801F0
	ldr r0, [r4, #0x40]
	cmp r0, #3
	beq _080801F0
	cmp r0, #0
	bne _080801F0
	ldrh r0, [r4, #0x34]
	adds r1, r0, #1
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bge _080801D8
	adds r0, r4, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
	b _080801F0
_080801D8:
	cmp r0, #0
	ble _080801F0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
_080801F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
