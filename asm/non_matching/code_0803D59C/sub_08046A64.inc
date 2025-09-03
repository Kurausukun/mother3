	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r0, [r4]
	bl sub_08050E64
	adds r3, r0, #0
	ldrh r0, [r4, #0x10]
	ldr r1, _08046AF4
	adds r2, r1, #0
	ands r2, r0
	ldrb r5, [r4, #0x12]
	ldrh r7, [r4, #2]
	ldrh r6, [r4, #4]
	movs r0, #0
	mov ip, r0
	ldrh r0, [r4]
	cmp ip, r0
	bhs _08046AEA
	mov r8, r1
_08046A8E:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0xe
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #0xe
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0xa
	orrs r0, r7
	lsls r1, r6, #0xc
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #8]
	adds r2, r0, r2
	ldrb r1, [r4, #9]
	adds r1, r1, r5
	ldrb r0, [r4, #6]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r4, #7]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	ands r2, r0
	lsls r1, r1, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r5, r0, #0x10
	adds r3, #8
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r4]
	cmp ip, r0
	blo _08046A8E
_08046AEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046AF4: .4byte 0x000001FF
	.syntax divided
