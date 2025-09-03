	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r4, #0
	cmp r4, r7
	bhs _0803ECB4
_0803EC9A:
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	lsls r2, r3, #1
	bl sub_08001B18
	adds r6, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _0803EC9A
_0803ECB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
