	.syntax unified
sub_0803E0EC:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0803E15C
	ldrb r0, [r0]
	movs r7, #0xf
	cmp r0, #6
	bne _0803E0FC
	movs r7, #0x78
_0803E0FC:
	ldr r4, _0803E160
	ldr r0, _0803E164
	adds r6, r4, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
	ldr r0, _0803E168
	adds r4, r4, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_080031F0
_0803E132:
	bl sub_0803E260
	bl sub_08001960
	bl sub_0803E50C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_0805629C
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E132
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E15C: .4byte gUnknown_0200F920
_0803E160: .4byte gUnknown_02018778
_0803E164: .4byte 0x00009ED4
_0803E168: .4byte 0x00001ABC
	.syntax divided
