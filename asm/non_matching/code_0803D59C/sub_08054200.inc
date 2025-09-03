	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r2
	strb r6, [r0]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl sub_08054CDC
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #8]
	cmp r0, r1
	ble _08054232
	str r1, [r4, #0x18]
_08054232:
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldrh r2, [r5, #0x10]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r1, r0
	ble _08054242
	strh r2, [r4, #0x1c]
_08054242:
	lsls r3, r7, #0x10
	asrs r1, r3, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805425C
	lsrs r1, r3, #0x10
	rsbs r2, r6, #0
	orrs r2, r6
	lsrs r2, r2, #0x1f
	adds r0, r4, #0
	bl sub_08055190
_0805425C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
