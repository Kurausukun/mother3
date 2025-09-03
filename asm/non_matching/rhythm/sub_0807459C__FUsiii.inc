	.syntax unified
sub_0807459C__FUsiii:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	cmp r6, #0
	beq _080745E6
	bl sub_080725C8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0x60
	bl __builtin_new
	adds r1, r6, #0
	bl sub_0807466C
	adds r2, r0, #0
	mov r0, sp
	strb r7, [r0]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	mov r1, r8
	mov r3, sb
	bl _call_via_r4
	b _08074604
_080745E6:
	bl sub_080725C8
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r1, sp
	strb r6, [r1]
	ldr r4, [r2, #4]
	mov r1, r8
	movs r2, #0
	mov r3, sb
	bl _call_via_r4
_08074604:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
