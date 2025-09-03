	.syntax unified
sub_080362C0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x20]
	mov r8, r0
	ldr r2, [sp, #0x24]
	mov sb, r2
	ldr r0, [sp, #0x28]
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	adds r0, r7, #0
	bl sub_08036388
	movs r0, #0x10
	bl sub_0803B800
	movs r1, #0
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	mov r2, r8
	strh r2, [r0, #6]
	strh r1, [r0, #8]
	mov r2, sb
	strh r2, [r0, #0xa]
	mov r2, sl
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r0, [r7, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
