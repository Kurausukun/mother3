    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r3, r6, r0
	movs r4, #0
	ldr r1, _08000EF8 @ =0xFFFFFE00
	mov sb, r1
	movs r5, #0x3f
	movs r2, #4
	rsbs r2, r2, #0
	mov r8, r2
	movs r0, #0xf0
	mov ip, r0
	movs r7, #0xa0
_08000E80:
	ldrh r1, [r3, #2]
	mov r0, sb
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r3, #2]
	strb r7, [r3]
	ldrb r0, [r3, #1]
	adds r1, r5, #0
	ands r1, r0
	ldrb r2, [r3, #3]
	adds r0, r5, #0
	ands r0, r2
	strb r0, [r3, #3]
	mov r2, r8
	ands r1, r2
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #8
	cmp r4, #0x7f
	bls _08000E80
	movs r0, #0x94
	lsls r0, r0, #6
	adds r1, r6, r0
	movs r4, #0
	movs r2, #0
_08000EBC:
	ldrh r0, [r1]
	strh r2, [r1]
	ldrh r0, [r1, #2]
	strh r2, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	ldrh r0, [r1, #6]
	strh r2, [r1, #6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #8
	cmp r4, #0x1f
	bls _08000EBC
	ldr r1, _08000EFC @ =0x00002C48
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08000F00 @ =0x00002C4A
	adds r0, r6, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000EF8: .4byte 0xFFFFFE00
_08000EFC: .4byte 0x00002C48
_08000F00: .4byte 0x00002C4A
    .syntax divided
