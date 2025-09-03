	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0801A7F0
	movs r0, #0
	strh r0, [r2]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801A7F4
	bl sub_0801A5EC
	b _0801A7FA
	.align 2, 0
_0801A7F0: .4byte gUnknown_02000040
_0801A7F4:
	lsrs r0, r2, #0x10
	bl sub_0801A61C
_0801A7FA:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A80A
	lsls r0, r2, #0x14
	lsrs r2, r0, #0x10
_0801A80A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801A834
	ldr r0, _0801A828
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0801A830
	ldr r1, _0801A82C
	movs r0, #1
	strh r0, [r1]
	adds r0, r2, r4
	b _0801A856
	.align 2, 0
_0801A828: .4byte gGame
_0801A82C: .4byte gUnknown_02000040
_0801A830:
	movs r4, #0
	b _0801A85A
_0801A834:
	cmp r0, r2
	ble _0801A85A
	ldr r0, _0801A84C
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0801A854
	ldr r1, _0801A850
	movs r0, #1
	strh r0, [r1]
	subs r0, r4, r2
	b _0801A856
	.align 2, 0
_0801A84C: .4byte gGame
_0801A850: .4byte gUnknown_02000040
_0801A854:
	subs r0, r2, #1
_0801A856:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801A85A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
