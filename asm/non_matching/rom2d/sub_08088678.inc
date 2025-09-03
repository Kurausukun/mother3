	.syntax unified
sub_08088678:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08088668
	mov r3, sp
	movs r2, #0
	mov r1, sp
	strh r2, [r1]
	strh r2, [r3, #2]
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	mov r2, sp
	strh r1, [r2]
	ldrb r0, [r0]
	strh r0, [r3, #2]
	mov r0, sp
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xff
	ble _080886B2
	ldr r0, _080886D0
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
_080886B2:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7f
	ble _080886C2
	ldr r2, _080886D4
	adds r0, r1, r2
	strh r0, [r3, #2]
_080886C2:
	ldr r0, [sp]
	str r0, [r4]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080886D0: .4byte 0xFFFFFE00
_080886D4: .4byte 0xFFFFFF00
	.syntax divided
