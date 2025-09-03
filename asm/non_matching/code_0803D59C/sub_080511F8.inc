	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r0, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x10
	ldr r3, _08051250
	adds r2, r2, r3
	ldrb r6, [r2]
	mov r4, r8
	adds r4, #0x24
	ldrb r2, [r4, #6]
	movs r3, #1
	orrs r2, r3
	movs r3, #3
	rsbs r3, r3, #0
	ands r2, r3
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #2
	movs r3, #0x3d
	rsbs r3, r3, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #6]
	movs r5, #0
	strh r6, [r4, #2]
	lsrs r0, r0, #0xc
	adds r1, r6, #0
	bl __divsi3
	mov r1, r8
	strh r0, [r1, #0x24]
	strh r5, [r4, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051250: .4byte gUnknown_09B8FF64
	.syntax divided
