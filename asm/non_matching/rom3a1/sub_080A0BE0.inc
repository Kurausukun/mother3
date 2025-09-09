	.syntax unified
sub_080A0BE0:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	bl onDamage__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	ldr r5, [r1, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	movs r3, #0x64
	bl _call_via_r5
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
