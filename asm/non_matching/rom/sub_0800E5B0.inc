	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r3, [r1]
	ldr r2, _0800E5F8
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r1, [r1, #2]
	mov r2, sp
	strh r1, [r2, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0800E5D8
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #2]
_0800E5D8:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E5EC
	movs r1, #1
_0800E5EC:
	adds r0, r1, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E5F8: .4byte 0xFFFF0000
	.syntax divided
