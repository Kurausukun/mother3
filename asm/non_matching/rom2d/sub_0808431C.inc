	.syntax unified
sub_0808431C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _08084340
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
	bne _08084344
	b _08084342
_08084340:
	movs r0, #3
_08084342:
	str r0, [r4, #0x30]
_08084344:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
