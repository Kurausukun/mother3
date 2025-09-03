    .syntax unified
sub_08069C24:
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0x34
	muls r1, r6, r1
	adds r1, #0x28
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r5, #4
	adds r0, r0, r1
	str r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r3, [r0, #0x14]
	str r4, [r0, #0x18]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08069C6E
	ldr r2, _08069C7C @ =0x04000200
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08069C80 @ =0x04000004
	ldrh r1, [r2]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
_08069C6E:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0
_08069C7C: .4byte 0x04000200
_08069C80: .4byte 0x04000004
    .syntax divided
