	.syntax unified
sub_08067304:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r4, #0
_08067310:
	lsls r1, r4, #2
	ldr r2, _08067414
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x18
	movs r3, #0x18
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	movs r3, #0
	ldr r5, _08067418
	adds r0, r7, r5
	ldrh r0, [r0]
	cmp r4, r0
	bne _08067334
	movs r3, #1
_08067334:
	ldr r2, [r2, #4]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #5
	ble _08067310
	ldr r1, [r7, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r3, _0806741C
	adds r4, r7, r3
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0xa6
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	bl sub_08086C78
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r6, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r0, r8
	bl sub_0806DB38
	ldr r1, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _08067420
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_08087260
	b _0806742A
	.align 2, 0
_08067414: .4byte 0x000004B4
_08067418: .4byte 0x0000043C
_0806741C: .4byte 0x000004D4
_08067420:
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r7, r2
	bl sub_08087294
_0806742A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
