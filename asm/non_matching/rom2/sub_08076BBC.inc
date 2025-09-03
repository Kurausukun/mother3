	.syntax unified
sub_08076BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	str r0, [r6, #0x48]
	b _08076CEE
_08076BD0:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r8, r0
	movs r0, #0
	mov sb, r0
	adds r1, r6, #0
	adds r1, #0x44
	ldr r0, [r1, #4]
	str r1, [sp, #0xc]
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0x10]
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x14]
	cmp sb, r0
	bge _08076C64
	adds r5, r1, #0
_08076C02:
	ldr r2, [r6, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r5, #8]
	add r1, sb
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r7, #0
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r4, [sp]
	mov r1, r8
	ldr r2, [r1, #0x20]
	adds r2, #0x40
	mov r3, r8
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	ble _08076C56
	movs r7, #1
_08076C56:
	cmp r7, #0
	bne _08076C64
	movs r1, #1
	add sb, r1
	ldr r0, [r5, #4]
	cmp sb, r0
	blt _08076C02
_08076C64:
	mov r0, sl
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r5, [sp, #0xc]
	add r1, sp, #8
	mov r8, r1
	ldr r0, [r5, #4]
	adds r4, r0, #1
	ldr r0, [r6, #0x44]
	cmp r0, r4
	bge _08076CB6
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _08076C84
	adds r1, r0, #0
_08076C84:
	adds r4, r1, #0
	adds r0, r4, #0
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r5, #8]
	adds r2, r7, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _08076CA8
	adds r1, r0, #0
_08076C9A:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08076C9A
_08076CA8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08076CB2
	bl __builtin_vec_delete
_08076CB2:
	str r4, [r5]
	str r7, [r5, #8]
_08076CB6:
	ldr r0, [r5, #8]
	add r0, sb
	ldr r1, [r5, #4]
	mov r2, sb
	subs r3, r1, r2
	adds r2, r0, #1
	subs r1, r3, #1
	adds r4, r0, r1
	adds r2, r2, r1
	cmp r3, #0
	ble _08076CDC
	adds r1, r3, #0
_08076CCE:
	ldrb r0, [r4]
	strb r0, [r2]
	subs r4, #1
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08076CCE
_08076CDC:
	ldr r0, [r5, #8]
	add r0, sb
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	ldr r0, [sp, #0x14]
_08076CEE:
	mov sl, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sl, r0
	bge _08076D06
	b _08076BD0
_08076D06:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
