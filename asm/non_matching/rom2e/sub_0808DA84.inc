	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808DABE
	ldr r0, [r4, #0x34]
	cmp r0, #5
	beq _0808DABE
	cmp r0, #1
	bne _0808DABE
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808DABE
	adds r0, r4, #0
	bl sub_0808DBD4
	movs r0, #0xd1
	bl playSound
_0808DABE:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
