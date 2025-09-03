	.syntax unified
sub_0808304C:
	push {lr}
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #8]
	cmp r0, #1
	beq _08083066
	cmp r0, #1
	ble _08083066
	cmp r0, #2
	beq _08083062
	cmp r0, #3
	bne _08083066
_08083062:
	movs r0, #1
	b _08083068
_08083066:
	movs r0, #0
_08083068:
	pop {r1}
	bx r1
	.syntax divided
