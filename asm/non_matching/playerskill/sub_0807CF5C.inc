	.syntax unified
sub_0807CF5C:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r5, [r6, #0x6c]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x24]
	ldr r1, [r0, #0x1c]
	movs r2, #0xe2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r5, [r6, #0x70]
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, [r6, #0x24]
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	mov r7, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r7, #2]
	ldr r0, [r6, #0x78]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _0807D056
	ldr r3, [r6, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r5, [r6, #0x78]
	ldr r2, [r5, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #8
	adds r0, r4, #0
	ldr r3, [r2, #4]
	adds r1, r5, r1
	movs r2, #1
	bl _call_via_r3
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r5, [r4, r3]
	movs r2, #2
	ldrsh r0, [r7, r2]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0xc
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	add r2, sp, #0x10
	movs r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r2, #2
	ldrsh r1, [r7, r2]
	add r2, sp, #0x14
	adds r0, #0x10
	subs r1, #0x10
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #0x14]
	b _0807D0CC
_0807D056:
	ldr r3, [r6, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #0x18
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r5, [r6, #0x78]
	ldr r2, [r5, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #0x1c
	adds r0, r4, #0
	ldr r3, [r2, #4]
	adds r1, r5, r1
	movs r2, #0
	bl _call_via_r3
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r5, [r4, r3]
	movs r2, #2
	ldrsh r0, [r7, r2]
	movs r2, #2
	ldrsh r3, [r4, r2]
	add r2, sp, #0x20
	adds r1, r1, r5
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	add r1, sp, #0x24
	movs r0, #0x1e
	movs r3, #0x14
	rsbs r3, r3, #0
	strh r0, [r1]
	strh r3, [r1, #2]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #2
	ldrsh r1, [r7, r2]
	add r2, sp, #0x28
	adds r0, #0x1e
	adds r1, r1, r3
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #0x28]
_0807D0CC:
	str r0, [sp]
	ldr r0, [r6, #0x74]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
