	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r7, [sp, #0x24]
	ldr r4, [sp, #0x28]
	mov sb, r4
	ldr r6, [sp, #0x2c]
	mov sl, r6
	ldr r4, [sp, #0x30]
	mov ip, r4
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	mov r4, sp
	strh r5, [r4]
	movs r4, #2
	add r4, sp
	mov r8, r4
	strh r6, [r4]
	ldr r5, _0801A504
	ldr r6, _0801A508
	adds r4, r5, r6
	strb r0, [r4]
	ldr r4, _0801A50C
	adds r0, r5, r4
	strh r1, [r0]
	adds r6, #1
	adds r0, r5, r6
	strb r2, [r0]
	ldr r1, _0801A510
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sp
	ldrh r0, [r0]
	adds r4, #0x14
	adds r6, r5, r4
	movs r2, #1
	adds r1, r2, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r4, [r6]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6]
	mov r4, r8
	ldrh r1, [r4]
	ands r2, r1
	lsls r2, r2, #4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r6, _0801A514
	adds r0, r5, r6
	mov r1, sl
	strb r1, [r0]
	ldr r2, _0801A518
	adds r0, r5, r2
	mov r4, ip
	strb r4, [r0]
	adds r6, #5
	adds r1, r5, r6
	movs r0, #0xa
	strh r0, [r1]
	ldr r1, _0801A51C
	adds r0, r5, r1
	strh r3, [r0]
	strh r7, [r0, #2]
	ldr r2, _0801A520
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r4, #0xb3
	lsls r4, r4, #7
	adds r0, r5, r4
	strh r1, [r0]
	adds r6, #0x22
	adds r1, r5, r6
	ldr r0, _0801A524
	strh r0, [r1]
	ldr r0, _0801A528
	adds r1, r5, r0
	movs r0, #0
	bl sub_08036C00
	ldr r1, _0801A52C
	adds r5, r5, r1
	adds r0, r5, #0
	bl sub_0801A530
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A504: .4byte gGame
_0801A508: .4byte 0x00005958
_0801A50C: .4byte 0x00005978
_0801A510: .4byte 0x0000595A
_0801A514: .4byte 0x0000595B
_0801A518: .4byte 0x0000595C
_0801A51C: .4byte 0x0000597C
_0801A520: .4byte 0x000067AC
_0801A524: .4byte 0x0000FFFF
_0801A528: .4byte 0x00005984
_0801A52C: .4byte 0x00005988
	.syntax divided
