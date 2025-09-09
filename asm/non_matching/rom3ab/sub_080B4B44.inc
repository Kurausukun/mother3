	.syntax unified
sub_080B4B44:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	movs r5, #0
	mov r4, sp
	movs r7, #0x80
	lsls r7, r7, #1
_080B4B52:
	strh r7, [r4]
	strh r7, [r4, #2]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0x40
	bl sub_080694C8
	subs r0, r7, r0
	strh r0, [r4]
	strh r0, [r4, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	adds r5, #1
	cmp r5, #8
	ble _080B4B52
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
