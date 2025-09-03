	.syntax unified
sub_0800E6A0:
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldrh r3, [r1]
	ldr r2, _0800E6F8
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r1, [r1, #2]
	mov r0, sp
	strh r1, [r0, #2]
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r4, #0x10
	adds r0, r5, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E6DA
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #0x10
	mov r1, sp
	strh r0, [r1]
_0800E6DA:
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E6EE
	movs r1, #1
_0800E6EE:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800E6F8: .4byte 0xFFFF0000
	.syntax divided
