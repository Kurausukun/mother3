	.syntax unified
sub_0809DF04:
	push {r4, lr}
	sub sp, #4
	ldr r3, [r0, #0x1c]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r3, r3, r2
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r0, r0, r2
	mov r4, sp
	movs r2, #1
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #3
	movs r3, #0x64
	bl _call_via_r4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
