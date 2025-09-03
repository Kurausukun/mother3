	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, sp
	movs r2, #0x14
	bl sub_08001B18
	mov r0, sp
	strb r4, [r0, #0xc]
	cmp r5, #0x1f
	bhi _08046A50
	strh r5, [r0, #4]
_08046A50:
	mov r0, sp
	strh r7, [r0, #0x10]
	strh r6, [r0, #0x12]
	bl sub_08046A64
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
