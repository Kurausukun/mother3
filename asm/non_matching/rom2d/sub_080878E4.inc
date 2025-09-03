	.syntax unified
sub_080878E4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r2, _08087900
	adds r6, r4, r2
	ldr r1, [r5]
	ldr r0, [r6]
	cmp r1, r0
	bne _08087904
	movs r0, #0
	b _08087938
	.align 2, 0
_08087900: .4byte 0x0000042C
_08087904:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r5]
	cmp r2, #0
	beq _08087936
	str r2, [r6]
	ldr r1, [r2, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _08087940
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
_08087936:
	movs r0, #1
_08087938:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08087940: .4byte 0x00000434
	.syntax divided
