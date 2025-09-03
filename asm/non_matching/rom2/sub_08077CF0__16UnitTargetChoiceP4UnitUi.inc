	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r1, #0
	mov r8, r2
	movs r6, #0
	adds r7, r5, #0
	adds r7, #0x20
	mov r4, sp
	b _08077D6A
_08077D06:
	ldr r2, [r5, #0x20]
	adds r2, #0x68
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r7, r1
	adds r2, r6, #0
	bl _call_via_r3
	ldrb r0, [r4]
	add r0, r8
	movs r1, #0
	cmp r0, #0
	blt _08077D2C
	adds r1, r0, #0
	cmp r1, #0xff
	ble _08077D2C
	movs r1, #0xff
_08077D2C:
	strb r1, [r4]
	ldrb r0, [r4, #1]
	add r0, r8
	movs r1, #0
	cmp r0, #0
	blt _08077D40
	adds r1, r0, #0
	cmp r1, #0xff
	ble _08077D40
	movs r1, #0xff
_08077D40:
	strb r1, [r4, #1]
	ldrb r0, [r4, #2]
	add r0, r8
	movs r1, #0
	cmp r0, #0
	blt _08077D54
	adds r1, r0, #0
	cmp r1, #0xff
	ble _08077D54
	movs r1, #0xff
_08077D54:
	strb r1, [r4, #2]
	ldr r1, [r5, #0x20]
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [sp]
	ldr r3, [r1, #0x34]
	adds r1, r6, #0
	bl _call_via_r3
	adds r6, #1
_08077D6A:
	ldr r1, [r5, #0x20]
	adds r1, #0x60
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08077D06
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
