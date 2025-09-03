	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #1
	cmp r0, #0x1f
	bgt _080860EA
	ldr r2, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r4, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldrh r0, [r5, #0x3c]
	ldrh r2, [r5, #0x3e]
	adds r1, r0, r2
	strh r1, [r5, #0x3e]
	adds r0, #8
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r5, #0x3e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, sp
	bl sub_080714A4
_080860EA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
