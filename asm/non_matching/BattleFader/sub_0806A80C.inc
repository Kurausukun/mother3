    .syntax unified
sub_0806A80C:
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #8
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0806A820
	movs r0, #0
	b _0806A826
_0806A820:
	cmp r0, r1
	ble _0806A826
	adds r0, r1, #0
_0806A826:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0806A844 @ =0xFFFFFF00
	adds r7, r0, r3
	mov r0, ip
	movs r2, #2
	ldrsh r1, [r0, r2]
	cmp r1, #0
	blt _0806A840
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806A848
_0806A840:
	movs r0, #0
	b _0806A84A
	.align 2, 0
_0806A844: .4byte 0xFFFFFF00
_0806A848:
	adds r0, r1, #0
_0806A84A:
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r3, #0
	movs r2, #0
	mov r5, ip
	adds r5, #0x4c
	mov r4, ip
	adds r4, #0xcc
_0806A85A:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806A862
	adds r0, #0xff
_0806A862:
	asrs r0, r0, #8
	adds r0, r7, r0
	cmp r0, #0
	bge _0806A86C
	adds r0, #7
_0806A86C:
	asrs r0, r0, #3
	movs r1, #0
	cmp r0, #0
	blt _0806A87C
	adds r1, r0, #0
	cmp r1, #0x1f
	ble _0806A87C
	movs r1, #0x1f
_0806A87C:
	lsls r0, r3, #1
	adds r0, r5, r0
	lsls r1, r1, #5
	strh r1, [r0]
	adds r3, #1
	lsls r0, r6, #3
	adds r2, r2, r0
	cmp r3, #0x1f
	ble _0806A85A
	mov r3, ip
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0806A8A4
	movs r2, #8
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806A8AC
_0806A8A4:
	ldrb r1, [r4]
	movs r0, #0x10
	orrs r0, r1
	b _0806A8B2
_0806A8AC:
	ldrb r1, [r4]
	movs r0, #0xef
	ands r0, r1
_0806A8B2:
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    .syntax divided
