	.syntax unified
sub_0808067C:
	ldr r0, [r0, #0x48]
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr
	.syntax divided
