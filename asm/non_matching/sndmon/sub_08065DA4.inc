	.syntax unified
sub_08065DA4:
	push {r4, r5, lr}
	ldr r1, _08065DD8
	ldr r0, [r1]
	cmp r0, #0
	ble _08065DD0
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _08065DD0
	ldr r5, _08065DDC
	ldr r2, [r5]
	cmp r2, #0
	beq _08065DCE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065DCE:
	str r4, [r5]
_08065DD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065DD8: .4byte gUnknown_020040EC
_08065DDC: .4byte gUnknown_020040F0
	.syntax divided
