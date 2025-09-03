	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	mov r8, r1
	adds r4, r3, #0
	ldr r0, [r2]
	str r0, [sp, #4]
	cmp r4, #0
	beq _08070DB2
	mov sl, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x14]
	add r5, sp, #8
_08070D64:
	ldr r2, [r4, #0x1c]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r6, [sp, #0x14]
	movs r7, #0
	ldrsh r1, [r6, r7]
	mov r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r7, #2
	ldrsh r0, [r6, r7]
	mov r6, sl
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	strh r1, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070D64
_08070DB2:
	mov r4, r8
	cmp r4, #0
	beq _08070E06
	add r5, sp, #0xc
	add r7, sp, #4
	add r6, sp, #0x10
_08070DBE:
	ldr r2, [r4, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r2, r2, r0
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	strh r2, [r6]
	strh r1, [r6, #2]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070DBE
_08070E06:
	ldr r0, [sp, #4]
	mov r3, sb
	str r0, [r3]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
