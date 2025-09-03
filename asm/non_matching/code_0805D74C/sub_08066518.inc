	.syntax unified
sub_08066518:
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r6, r0, #0
	mov r0, sp
	bl sub_08051908
	ldr r1, [sp]
	ldr r0, _08066570
	cmp r1, r0
	bne _08066578
	ldr r1, [sp, #4]
	ldr r0, _08066574
	cmp r1, r0
	bne _08066578
	mov r5, sp
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0805D260
	ldrh r1, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08066578
	movs r5, #0
_0806654C:
	adds r1, r4, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08066566
	ldr r2, [r6, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r6, r0
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_08066566:
	adds r5, #1
	cmp r5, #0x14
	blt _0806654C
	movs r0, #1
	b _0806657A
	.align 2, 0
_08066570: .4byte 0x68746F6D
_08066574: .4byte 0x20337265
_08066578:
	movs r0, #0
_0806657A:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
