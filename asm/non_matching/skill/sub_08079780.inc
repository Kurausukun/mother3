    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r7, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r7, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	subs r0, r2, r7
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r6, r0, #1
	ldr r0, [r5, #0x1c]
	movs r4, #0xec
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r1
	adds r5, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x1c]
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	add r1, r8
	str r1, [sp]
	ldr r1, [r0, #4]
	ldr r0, [sp]
	bl _call_via_r1
	subs r0, r5, r0
	cmp r0, #0
	bge _08079814
	rsbs r0, r0, #0
	muls r0, r6, r0
	cmp r0, #0
	bge _0807980E
	adds r0, #0xf
_0807980E:
	asrs r0, r0, #4
	adds r7, r7, r0
	b _08079822
_08079814:
	muls r0, r6, r0
	cmp r0, #0
	bge _0807981C
	adds r0, #0xf
_0807981C:
	asrs r0, r0, #4
	mov r1, sb
	adds r7, r1, r0
_08079822:
	adds r2, r7, r6
	adds r0, r7, #0
	adds r1, r2, #0
	bl randS32
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
