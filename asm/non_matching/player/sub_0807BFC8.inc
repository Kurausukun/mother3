	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	mov ip, r0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x18
	ldr r6, _0807C01C
	movs r5, #0x82
	lsls r5, r5, #2
	add r5, ip
	ldrh r0, [r5]
	adds r4, r0, #1
	strh r4, [r5]
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #4]
	ands r0, r6
	orrs r0, r2
	lsrs r3, r3, #8
	ldr r1, _0807C020
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #4]
	movs r5, #0xc2
	lsls r5, r5, #1
	add r5, ip
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, [r5]
	adds r3, r0, #1
	cmp r3, #0x10
	bgt _0807C024
	lsls r0, r0, #3
	adds r0, r0, r5
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r5]
	movs r0, #1
	b _0807C026
	.align 2, 0
_0807C01C: .4byte 0xFFFF0000
_0807C020: .4byte 0xFF00FFFF
_0807C024:
	movs r0, #0
_0807C026:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
