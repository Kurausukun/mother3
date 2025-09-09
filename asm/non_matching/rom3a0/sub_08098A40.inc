	.syntax unified
sub_08098A40:
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_08074614
	cmp r0, #0
	beq _08098A80
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r1, _08098AA4
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08098A80:
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x80
	adds r2, r6, #0
	movs r3, #1
	bl sub_08074414__FiiibN23
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098AA4: .4byte 0x00000F98
	.syntax divided
