	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r4, r6, r0
	movs r5, #0
	ldr r7, _08008C24
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08008C1E
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r6, r0
_08008BC8:
	ldr r2, [r4, #4]
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	strh r0, [r2]
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #1
	strh r0, [r2, #2]
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #2
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x20
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x21
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x22
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0xcc
	adds r4, #0xcc
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r5, r0
	blo _08008BC8
_08008C1E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008C24: .4byte 0x0000C513
	.syntax divided
