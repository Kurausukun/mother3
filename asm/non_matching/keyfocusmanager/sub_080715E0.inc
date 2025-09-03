	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _08071618
	cmp r0, #1
	ble _0807162E
	cmp r0, #2
	beq _08071622
	b _0807162E
_08071618:
	ldrh r1, [r4, #0x32]
	lsrs r1, r1, #1
	mov r0, sp
	ldrh r0, [r0]
	b _08071628
_08071622:
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
_08071628:
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
_0807162E:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
