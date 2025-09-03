	.syntax unified
sub_08070C38:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0, #0x2c]
	cmp r4, #0
	beq _08070C9A
_08070C42:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	ldr r1, [r4, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	ldr r1, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08070C94
	adds r0, r4, #0
	b _08070C9C
_08070C94:
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070C42
_08070C9A:
	movs r0, #0
_08070C9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
