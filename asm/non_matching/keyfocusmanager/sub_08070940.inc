	.syntax unified
sub_08070940:
	push {r4, lr}
	b _08070954
_08070944:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070954:
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08070944
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
