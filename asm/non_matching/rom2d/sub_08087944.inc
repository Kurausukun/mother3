	.syntax unified
	push {lr}
	movs r1, #0x87
	lsls r1, r1, #3
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0808795C
	movs r0, #2
	orrs r0, r1
	b _08087960
_0808795C:
	ldr r0, _08087968
	ands r0, r1
_08087960:
	strh r0, [r2]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08087968: .4byte 0x0000FFFD
	.syntax divided
