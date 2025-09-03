	.syntax unified
sub_0800E654:
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r3, [r1]
	ldr r2, _0800E69C
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r1, [r1, #2]
	mov r0, sp
	strh r1, [r0, #2]
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x10
	ble _0800E67E
	subs r1, #0x10
	mov r0, sp
	strh r1, [r0]
_0800E67E:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E692
	movs r1, #1
_0800E692:
	adds r0, r1, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E69C: .4byte 0xFFFF0000
	.syntax divided
