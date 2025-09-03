	.include "asm/macros.inc"
	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r1, sp
	movs r2, #0x18
	bl sub_08001B18
	mov r0, sp
	strb r4, [r0, #0xc]
	strh r5, [r0, #0x14]
	cmp r6, #0x1f
	bhi _0803D6AE
	strh r6, [r0, #4]
_0803D6AE:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #0x10]
	strh r7, [r0, #0x12]
	bl sub_0803D718
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
