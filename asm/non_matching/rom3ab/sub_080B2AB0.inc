	.syntax unified
sub_080B2AB0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	bl onSuccess__6ActionP4Unit
	movs r0, #0xb0
	lsls r0, r0, #1
	mov sl, r0
	mov r8, sp
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0xc]
	movs r2, #0x3b
	mov sb, r2
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x10]
_080B2ADA:
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	adds r4, #0x20
	ldr r0, [r0, #0x20]
	adds r5, r0, #0
	adds r5, #0x18
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	ldr r1, [r6, #0x1c]
	add r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r7, #0
	ldrsh r1, [r2, r7]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r1, #0
	add r0, sp, #4
	movs r2, #3
	strh r2, [r0]
	ldr r3, [sp, #0xc]
	strh r1, [r3, #2]
	mov r7, r8
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r3, #2
	ldrsh r2, [r7, r3]
	adds r1, r1, r0
	add r0, sp, #8
	strh r1, [r0]
	ldr r7, [sp, #0x10]
	strh r2, [r7, #2]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _080B2ADA
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl dynaCastMonster
	bl sub_08072FE0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
