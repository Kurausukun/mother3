	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	movs r0, #0
	mov sb, r0
	b _08060AD2
_08060A5C:
	mov r1, r8
	ldr r0, [r1, #4]
	subs r5, r0, #1
	subs r0, #2
	mov r3, sb
	adds r3, #1
	str r3, [sp]
	cmp r0, sb
	blt _08060ACC
	movs r0, #0xbc
	lsls r0, r0, #1
	mov sl, r0
_08060A74:
	lsls r7, r5, #2
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	subs r6, r5, #1
	lsls r5, r6, #2
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bhs _08060AC4
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r7, r0
	ldr r3, [r2]
	adds r0, r5, r0
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_08060AC4:
	adds r5, r6, #0
	subs r0, r5, #1
	cmp r0, sb
	bge _08060A74
_08060ACC:
	ldr r3, [sp]
	mov sb, r3
	mov r1, r8
_08060AD2:
	ldr r0, [r1, #4]
	cmp sb, r0
	blt _08060A5C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
