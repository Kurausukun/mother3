	.syntax unified
sub_08063A90:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08063AC8
	ldr r4, _08063AC4
	ldr r1, [r5, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	b _08063ACA
	.align 2, 0
_08063AC4: .4byte gUnknown_080F87C8
_08063AC8:
	movs r0, #4
_08063ACA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
