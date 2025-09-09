	.syntax unified
sub_0809E954:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r1, #0
	ldr r0, _0809EA94
	bl playSound
	ldr r2, [r6, #0x20]
	adds r2, #0x40
	adds r3, r6, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x24
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _0809EA98
	movs r1, #0xc0
	lsls r1, r1, #8
	bl randS32
	str r0, [sp]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0xc
	bl randS32
	str r0, [sp, #4]
	ldr r0, _0809EA9C
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	add r1, sp, #0xc
	mov sb, r1
	add r2, sp, #0x2c
	mov r8, r2
	add r5, sp, #0x18
	add r4, sp, #0x28
	movs r3, #1
	str r3, [sp, #0x30]
	movs r7, #0
	mov sl, r7
_0809E9C0:
	ldr r3, [sp, #0xc]
	ldr r0, [sp]
	adds r3, r3, r0
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	adds r2, r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	adds r1, r1, r0
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0xc
	bl memcpy
	add r1, sp, #0xc
	adds r0, r5, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [sp, #4]
	ldr r2, _0809EAA0
	adds r1, r0, r2
	str r1, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _0809EA0A
	asrs r0, r1, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	mov r3, sl
	mov r7, sb
	str r3, [r7, #4]
	ldr r0, [sp, #0x30]
	subs r0, #1
	str r0, [sp, #0x30]
_0809EA0A:
	add r1, sp, #0x28
	mov r2, sl
	strh r2, [r1]
	strh r2, [r4, #2]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0x10
	mov r3, sp
	ldrh r3, [r3, #0x24]
	adds r0, r0, r3
	strh r0, [r1]
	mov r7, sp
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	add r0, sp, #0x24
	ldrh r0, [r0, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	ldr r2, [r6, #0x20]
	adds r0, r6, #0
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #4
	cmp r0, #4
	ble _0809EA56
	adds r2, r0, #0
_0809EA56:
	ldr r3, [r6, #0x1c]
	movs r7, #0xf4
	lsls r7, r7, #2
	adds r3, r3, r7
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add r1, sp, #0x2c
	strh r2, [r1]
	mov r7, r8
	strh r2, [r7, #2]
	ldr r2, [r3, #4]
	mov r1, r8
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0809E9C0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EA94: .4byte 0x00000319
_0809EA98: .4byte 0xFFFF4000
_0809EA9C: .4byte 0xFFFC0000
_0809EAA0: .4byte 0xFFFF63C0
	.syntax divided
