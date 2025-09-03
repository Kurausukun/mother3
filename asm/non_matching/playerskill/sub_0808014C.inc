	.syntax unified
sub_0808014C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808019C
	ldr r0, [r4, #0x40]
	cmp r0, #3
	beq _0808019C
	cmp r0, #0
	bne _0808019C
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _08080180
	adds r1, r0, #0
	subs r1, #1
	adds r0, r4, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
	b _0808019C
_08080180:
	ldr r0, [r4, #0x2c]
	subs r1, r0, #1
	ldrh r0, [r4, #0x34]
	cmp r1, r0
	ble _0808019C
	adds r0, r4, #0
	bl sub_080801F8
	adds r0, r4, #0
	bl sub_080802A4
	movs r0, #0xd1
	bl playSound
_0808019C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
