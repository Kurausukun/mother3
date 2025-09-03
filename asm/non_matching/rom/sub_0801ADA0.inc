	.syntax unified
	push {r4, lr}
	adds r4, r1, #0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	bl sub_0801ADCC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	bne _0801ADC2
	movs r0, #0
	b _0801ADC6
_0801ADC2:
	adds r0, r2, #4
	adds r0, r4, r0
_0801ADC6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
