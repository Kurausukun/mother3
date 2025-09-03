	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0
_08085B46:
	movs r0, #0
	mov r8, r0
	lsls r0, r1, #4
	adds r2, r1, #1
	mov sl, r2
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r6, r0, #4
	adds r0, r6, #0
	adds r0, #0x9c
	adds r0, r0, r7
	mov sb, r0
_08085B60:
	movs r0, #0x58
	mov r3, r8
	muls r3, r0, r3
	adds r1, r6, r7
	adds r1, r3, r1
	adds r0, r1, #0
	adds r0, #0x9c
	ldr r4, [r0, #0x1c]
	adds r4, #0xd0
	mov r0, sb
	adds r5, r0, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	ldr r0, _08085BEC
	adds r1, r1, r0
	ldr r2, [r1, #0x1c]
	adds r2, #0xd8
	adds r0, r6, r0
	adds r0, r7, r0
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x15
	ble _08085B60
	mov r1, sl
	cmp r1, #1
	ble _08085B46
	movs r4, #0
	ldr r5, _08085BF0
_08085BB8:
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r0, r7
	adds r1, r1, r5
	ldr r2, [r1, #0x1c]
	adds r2, #0xd0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	ldr r1, _08085BF4
	bl _call_via_r2
	adds r4, #1
	cmp r4, #0x15
	ble _08085BB8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085BEC: .4byte 0x0000082C
_08085BF0: .4byte 0x00000FBC
_08085BF4: .4byte 0x0000FFFF
	.syntax divided
