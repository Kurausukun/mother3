	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r2, #0
	mov r3, ip
	adds r3, #0xfc
	movs r4, #0
	adds r6, r3, #0
_0807AFD2:
	ldr r0, [r3]
	adds r0, #0x3c
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r3]
	lsls r1, r2, #1
	adds r0, #0x4c
	adds r0, r0, r1
	strh r4, [r0]
	adds r2, #1
	cmp r2, #0x10
	blt _0807AFD2
	ldr r0, [r6]
	movs r1, #0
	str r1, [r0, #0x38]
	movs r4, #0
	movs r1, #0xc2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r1]
	cmp r4, r0
	bge _0807B038
	adds r7, r1, #0
	adds r5, r6, #0
	movs r3, #0xc4
	lsls r3, r3, #1
	add r3, ip
_0807B008:
	ldr r0, [r5]
	adds r0, #0x3c
	adds r0, r0, r4
	ldrh r1, [r3]
	strb r1, [r0]
	ldr r1, [r5]
	lsls r0, r4, #1
	adds r1, #0x4c
	adds r1, r1, r0
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldrb r2, [r3, #6]
	cmp r2, #1
	bne _0807B02E
	ldr r1, [r6]
	lsls r2, r4
	ldr r0, [r1, #0x38]
	orrs r0, r2
	str r0, [r1, #0x38]
_0807B02E:
	adds r3, #8
	adds r4, #1
	ldr r0, [r7]
	cmp r4, r0
	blt _0807B008
_0807B038:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
