	.syntax unified
sub_0808AF44:
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r3, [r2, #0x28]
	cmp r1, r3
	bge _0808AF74
	ldr r0, [r2, #0x24]
	adds r0, #1
	cmp r1, r0
	bge _0808AF62
	ldr r0, [r2, #0x2c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _0808AF66
_0808AF62:
	subs r0, r3, #1
	ldr r1, [r2, #0x2c]
_0808AF66:
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r1, [r2, #0x28]
	cmp r1, r0
	ble _0808AFA0
	b _0808AF9E
_0808AF74:
	cmp r1, r3
	ble _0808AFA2
	ldr r0, [r2, #0x24]
	subs r0, #1
	cmp r1, r0
	bgt _0808AF86
	adds r0, r3, #1
	cmp r1, r0
	bge _0808AF90
_0808AF86:
	ldr r0, [r2, #0x30]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _0808AF92
_0808AF90:
	ldr r1, [r2, #0x30]
_0808AF92:
	ldr r0, [r2, #0x20]
	subs r0, r0, r1
	str r0, [r2, #0x20]
	ldr r1, [r2, #0x28]
	cmp r1, r0
	bge _0808AFA0
_0808AF9E:
	adds r1, r0, #0
_0808AFA0:
	str r1, [r2, #0x20]
_0808AFA2:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
