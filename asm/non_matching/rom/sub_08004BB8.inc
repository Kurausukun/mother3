	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08004C8C
	movs r0, #0
	strh r0, [r4]
	mov r2, sp
	ldr r1, _08004C90
	ldrh r0, [r1]
	strh r0, [r2]
	mov r5, sp
	adds r5, #2
	ldr r2, _08004C94
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	ldr r2, _08004C98
	ldrb r7, [r2]
	movs r0, #4
	strb r0, [r2]
	ldr r0, _08004C9C
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _08004CA0
	ldr r1, _08004CA4
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl sub_08005BFC
	movs r6, #0
	ldr r0, _08004CA8
	adds r4, r4, r0
	ldrh r1, [r4]
	cmp r6, r1
	bhs _08004C30
_08004C18:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4]
	cmp r6, r0
	blo _08004C18
_08004C30:
	ldr r0, _08004CAC
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r0, _08004CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl memclear
	ldr r0, _08004C98
	movs r4, #0
	strb r7, [r0]
	ldr r0, _08004CA0
	ldr r1, _08004CA4
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	ldr r1, _08004CB4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	bl sub_08005C14
	ldr r2, _08004C8C
	strh r4, [r2]
	ldr r1, _08004C90
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08004C94
	ldrh r0, [r5]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004C8C: .4byte 0x04000208
_08004C90: .4byte 0x04000200
_08004C94: .4byte 0x04000004
_08004C98: .4byte gGame
_08004C9C: .4byte 0x000067C4
_08004CA0: .4byte gSomeBlend
_08004CA4: .4byte 0x00011D16
_08004CA8: .4byte 0x000053A0
_08004CAC: .4byte 0x06008000
_08004CB0: .4byte 0x06006000
_08004CB4: .4byte 0x000121B8
	.syntax divided
