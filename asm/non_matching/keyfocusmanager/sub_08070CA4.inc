	.syntax unified
sub_08070CA4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	ldr r6, [r0, #0x2c]
	cmp r6, #0
	beq _08070D16
	mov r8, sp
	add r7, sp, #4
_08070CBE:
	ldr r0, [r6, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	str r4, [sp, #8]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r0, r3
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	mov r0, sb
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	mov r0, sb
	movs r3, #2
	ldrsh r1, [r0, r3]
	mov r4, r8
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	strh r2, [r7]
	strh r1, [r7, #2]
	ldr r2, [r5, #4]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl _call_via_r2
	cmp r0, #0
	bne _08070D2E
	ldr r6, [r6, #0x28]
	cmp r6, #0
	bne _08070CBE
_08070D16:
	mov r4, sl
	ldr r1, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r2, [r1, #4]
	mov r1, sb
	bl _call_via_r2
_08070D2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
