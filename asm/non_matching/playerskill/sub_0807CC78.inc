	.syntax unified
sub_0807CC78:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	cmp r1, #1
	bne _0807CCD6
	ldr r5, [r7, #0x68]
	ldr r4, [r5, #0x1c]
	adds r4, #0x70
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r3, [r7, #0x78]
	ldr r2, [r3, #0x1c]
	adds r2, #0xf8
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r6, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r1, sp, #4
	movs r0, #0
	movs r3, #0xc
	rsbs r3, r3, #0
	strh r0, [r1]
	strh r3, [r1, #2]
	mov r0, sp
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #2
	ldrsh r0, [r6, r1]
	add r1, sp, #8
	adds r0, r0, r3
	strh r2, [r1]
	strh r0, [r1, #2]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	b _0807CCF2
_0807CCD6:
	ldr r0, [r7, #0x68]
	ldr r3, [r0, #0x1c]
	adds r3, #0x70
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0xc
	movs r2, #0x64
	rsbs r2, r2, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	ldr r2, [r3, #4]
	bl _call_via_r2
_0807CCF2:
	ldr r0, [r7, #0x6c]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	ldr r0, [r7, #0x70]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	ldr r0, [r7, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
