	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r7, r0, #1
	b _08086BA0
_08086B5C:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08086B9E
	adds r0, r6, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r4, [r6, #0x1c]
	adds r4, #0x80
	movs r0, #0
	ldrsh r5, [r4, r0]
	b _08086BF6
_08086B9E:
	adds r7, #1
_08086BA0:
	adds r0, r6, #0
	bl sub_08086C3C
	cmp r7, r0
	blt _08086B5C
	movs r7, #0
	adds r0, r6, #0
	adds r0, #0x98
	ldr r1, [r0]
	mov r8, r0
	cmp r7, r1
	bgt _08086C26
_08086BB8:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08086C1C
	mov r0, r8
	str r7, [r0]
	ldr r4, [r6, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r5, [r4, r1]
_08086BF6:
	adds r5, r6, r5
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08086C68
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	b _08086C30
_08086C1C:
	adds r7, #1
	mov r1, r8
	ldr r0, [r1]
	cmp r7, r0
	ble _08086BB8
_08086C26:
	adds r0, r6, #0
	bl sub_08086C3C
	mov r1, r8
	str r0, [r1]
_08086C30:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
