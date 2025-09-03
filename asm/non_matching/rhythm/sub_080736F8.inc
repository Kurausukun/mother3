	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807372C
	movs r0, #0xd4
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r5, #0x20]
	adds r2, #0x40
	adds r3, r5, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sp
	bl sub_08086124
_0807372C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
