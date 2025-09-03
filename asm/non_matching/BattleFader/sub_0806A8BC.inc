    .syntax unified
sub_0806A8BC:
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0806A8D0
	movs r0, #0
	b _0806A8D6
_0806A8D0:
	cmp r0, r1
	ble _0806A8D6
	adds r0, r1, #0
_0806A8D6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0806A8F4 @ =0xFFFFFF00
	adds r7, r0, r3
	mov r0, ip
	movs r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #0
	blt _0806A8F0
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806A8F8
_0806A8F0:
	movs r0, #0
	b _0806A8FA
	.align 2, 0
_0806A8F4: .4byte 0xFFFFFF00
_0806A8F8:
	adds r0, r1, #0
_0806A8FA:
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	movs r2, #0
	mov r5, ip
	adds r5, #0x8c
	mov r4, ip
	adds r4, #0xcc
_0806A90A:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806A912
	adds r0, #0xff
_0806A912:
	asrs r0, r0, #8
	adds r0, r7, r0
	cmp r0, #0
	bge _0806A91C
	adds r0, #7
_0806A91C:
	asrs r0, r0, #3
	movs r1, #0
	cmp r0, #0
	blt _0806A92C
	adds r1, r0, #0
	cmp r1, #0x1f
	ble _0806A92C
	movs r1, #0x1f
_0806A92C:
	lsls r0, r3, #1
	adds r0, r5, r0
	lsls r1, r1, #0xa
	strh r1, [r0]
	adds r3, #1
	lsls r0, r6, #3
	adds r2, r2, r0
	cmp r3, #0x1f
	ble _0806A90A
	mov r3, ip
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0806A954
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806A95C
_0806A954:
	ldrb r1, [r4]
	movs r0, #0x20
	orrs r0, r1
	b _0806A962
_0806A95C:
	ldrb r1, [r4]
	movs r0, #0xdf
	ands r0, r1
_0806A962:
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    .syntax divided
