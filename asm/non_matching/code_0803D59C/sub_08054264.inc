	.syntax unified
sub_08054264:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r2, [sp, #0x8c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sl, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r1, sp
	adds r0, #0x3c
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4, #0x20]
	mov sb, r0
	str r0, [sp, #0x64]
	ldrh r1, [r4, #0x24]
	ldr r0, _080542F0
	ldr r3, [sp, #0x68]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0x68]
	ldr r0, [r6, #8]
	str r0, [r4, #0x20]
	ldrh r0, [r6, #0x10]
	strh r0, [r4, #0x24]
	add r6, sp, #0x10
	adds r0, r6, #0
	mov r1, r8
	adds r3, r4, #0
	bl sub_0805C8AC
	ldr r0, _080542F4
	ldr r5, _080542F8
	adds r0, r0, r5
	adds r1, r6, #0
	movs r2, #0x54
	bl memcpy
	mov r0, r8
	mov r1, sl
	bl sub_0805CCDC
	mov r7, sb
	str r7, [r4, #0x20]
	add r0, sp, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	mov r0, r8
	mov r1, sp
	bl sub_080551B0
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080542F0: .4byte 0xFFFF0000
_080542F4: .4byte gSomeBlend
_080542F8: .4byte 0x0000C5C8
	.syntax divided
