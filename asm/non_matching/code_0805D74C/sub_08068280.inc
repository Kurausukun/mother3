	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r4, r0, #0
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08068324
	ldr r1, _080682C8
	mov r0, sp
	movs r2, #0x50
	bl memcpy
	ldr r2, _080682CC
	adds r0, r4, r2
	ldrh r0, [r0]
	lsls r1, r0, #3
	mov r3, sp
	adds r0, r3, r1
	movs r7, #2
	ldrsh r2, [r0, r7]
	cmp r2, #0
	ble _080682D0
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r5, [r0]
	ldr r6, [r0, #4]
	adds r3, r6, #0
	b _080682D6
	.align 2, 0
_080682C8: .4byte gUnknown_080FE6A8
_080682CC: .4byte 0x0000043C
_080682D0:
	add r0, sp, #4
	adds r0, r0, r1
	ldr r3, [r0]
_080682D6:
	ldr r7, _080682F0
	adds r0, r4, r7
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, sp
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r2, #0
	ble _080682F4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _080682F6
	.align 2, 0
_080682F0: .4byte 0x0000043C
_080682F4:
	adds r0, r1, #0
_080682F6:
	adds r0, r4, r0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08068324
	ldr r1, _0806832C
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, _08068330
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08068324:
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806832C: .4byte 0x0000043C
_08068330: .4byte 0x000004B4
	.syntax divided
