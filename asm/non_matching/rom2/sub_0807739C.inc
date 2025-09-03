	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0807746C
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	adds r4, r6, #0
	adds r4, #0x50
	ldr r1, [r4, #8]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r7, r4, #0
	cmp r0, r8
	bne _08077430
	ldr r1, [r6, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r5, r1, r2
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	b _0807746E
_08077412:
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	subs r3, r5, #1
	ldr r1, [r7, #8]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _0807746E
_08077430:
	movs r5, #1
	b _08077454
_08077434:
	ldr r2, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r7, #8]
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, r8
	beq _08077412
	adds r5, #1
_08077454:
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08077434
_0807746C:
	movs r0, #0
_0807746E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
