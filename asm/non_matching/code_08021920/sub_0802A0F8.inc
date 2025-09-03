	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xff
	bhi _0802A120
	ldr r0, _0802A114
	adds r0, #0x10
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, r0, r1
	cmp r0, #0
	bge _0802A118
	movs r0, #0
	b _0802A11E
	.align 2, 0
_0802A114: .4byte gSave
_0802A118:
	cmp r0, #0x63
	ble _0802A11E
	movs r0, #0x63
_0802A11E:
	strb r0, [r2]
_0802A120:
	pop {r0}
	bx r0
	.syntax divided
