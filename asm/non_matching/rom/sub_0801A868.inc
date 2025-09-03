	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0801A88C
	movs r0, #0
	strh r0, [r2]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801A890
	bl sub_0801A604
	b _0801A896
	.align 2, 0
_0801A88C: .4byte gUnknown_02000040
_0801A890:
	lsrs r0, r2, #0x10
	bl sub_0801A638
_0801A896:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A8A6
	lsls r0, r2, #0x14
	lsrs r2, r0, #0x10
_0801A8A6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801A8D0
	ldr r0, _0801A8C4
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0801A8CC
	ldr r1, _0801A8C8
	movs r0, #1
	strh r0, [r1]
	adds r0, r2, r4
	b _0801A8F2
	.align 2, 0
_0801A8C4: .4byte gGame
_0801A8C8: .4byte gUnknown_02000040
_0801A8CC:
	movs r4, #0
	b _0801A8F6
_0801A8D0:
	cmp r0, r2
	ble _0801A8F6
	ldr r0, _0801A8E8
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0801A8F0
	ldr r1, _0801A8EC
	movs r0, #1
	strh r0, [r1]
	subs r0, r4, r2
	b _0801A8F2
	.align 2, 0
_0801A8E8: .4byte gGame
_0801A8EC: .4byte gUnknown_02000040
_0801A8F0:
	subs r0, r2, #1
_0801A8F2:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801A8F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
