	.syntax unified
sub_080B1238:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080B1258
	bl playSound
	adds r0, r7, #0
	bl playAnim__6Action
	movs r5, #0
	mov r4, sp
	movs r6, #0xff
	b _080B1290
	.align 2, 0
_080B1258: .4byte 0x0000031A
_080B125C:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, #0x20
	ldr r3, [r0, #0x20]
	movs r2, #0x30
	ldrsh r0, [r3, r2]
	adds r1, r1, r0
	strb r6, [r4]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	ldr r2, [sp]
	ldr r3, [r3, #0x34]
	adds r0, r1, #0
	adds r1, r5, #0
	bl _call_via_r3
	adds r5, #1
_080B1290:
	ldr r1, [r7, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	adds r2, #0x20
	ldr r1, [r0, #0x20]
	adds r1, #0x60
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	ldr r1, [r1, #4]
	adds r0, r2, #0
	bl _call_via_r1
	cmp r5, r0
	blt _080B125C
	ldr r0, _080B12CC
	bl PlaySoundBlocking
	movs r0, #0
	mov r8, r0
	b _080B1330
	.align 2, 0
_080B12CC: .4byte 0x0000031B
_080B12D0:
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	adds r5, #0x20
	ldr r0, [r0, #0x20]
	adds r6, r0, #0
	adds r6, #0x30
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	adds r4, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x68
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r3, [r2, #4]
	adds r1, r4, r1
	mov r2, r8
	bl _call_via_r3
	ldr r2, [sp, #4]
	ldr r3, [r6, #4]
	adds r0, r5, #0
	mov r1, r8
	bl _call_via_r3
	movs r1, #1
	add r8, r1
_080B1330:
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	adds r2, #0x20
	ldr r1, [r0, #0x20]
	adds r1, #0x60
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	ldr r1, [r1, #4]
	adds r0, r2, #0
	bl _call_via_r1
	cmp r8, r0
	blt _080B12D0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
