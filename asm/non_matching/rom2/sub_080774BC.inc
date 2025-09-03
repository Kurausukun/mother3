	.syntax unified
sub_080774BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r1, [r7, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08077584
	ldr r0, [r7, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r7, #0
	adds r5, #0x50
	subs r0, #1
	ldr r1, [r5, #8]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, r5, #0
	cmp r0, r8
	bne _08077546
	ldr r2, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	b _0807753C
_0807752A:
	ldr r2, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	adds r1, r1, r5
_0807753C:
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	b _08077586
_08077546:
	movs r4, #0
	b _0807756A
_0807754A:
	ldr r2, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r6, #8]
	adds r1, r1, r4
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, r8
	beq _0807752A
	adds r4, r5, #0
_0807756A:
	adds r5, r4, #1
	ldr r1, [r7, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _0807754A
_08077584:
	movs r0, #0
_08077586:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
