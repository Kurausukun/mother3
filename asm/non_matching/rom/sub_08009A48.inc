	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #8
	ldr r0, _08009A64
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08009A6C
	cmp r0, #4
	blt _08009A6C
	ldr r0, _08009A68
	adds r4, r7, r0
	b _08009A72
	.align 2, 0
_08009A64: .4byte gGame
_08009A68: .4byte 0x00003670
_08009A6C:
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r4, r7, r1
_08009A72:
	movs r6, #0
	ldr r0, _08009AF0
	mov ip, r0
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08009AEA
	adds r2, r4, #0
	adds r2, #0xc8
_08009A84:
	ldr r3, [r4, #4]
	ldr r1, [r2]
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x16
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #1
	orrs r0, r5
	strh r0, [r3, #2]
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #2
	orrs r0, r5
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x40
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x20
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x21
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	adds r0, #0x22
	orrs r0, r5
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, #0xcc
	adds r4, #0xcc
	mov r1, ip
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _08009A84
_08009AEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009AF0: .4byte 0x0000C513
	.syntax divided
