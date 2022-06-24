	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	mov r3, r8
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r6, #0
	cmp r6, r5
	bgt _080730EE
	add r4, sp, #4
	mov r7, sp
_080730A0:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08069558
	strh r0, [r4]
	movs r1, #2
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08069558
	strh r0, [r4, #2]
	mov r0, r8
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	adds r6, #1
	cmp r6, r5
	ble _080730A0
_080730EE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided