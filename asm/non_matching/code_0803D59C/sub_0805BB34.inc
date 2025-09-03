	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x7c
	mov sb, r0
	adds r6, r2, #0
	movs r0, #0x6c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0805BC74
	adds r7, r2, r0
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #4
	adds r4, r4, r1
	lsls r4, r4, #2
	ldr r0, _0805BC78
	adds r4, r4, r0
	mov r0, sp
	adds r1, r7, #0
	movs r2, #0x6c
	bl memcpy
	movs r0, #0
	strb r0, [r7, #0x12]
	str r0, [r7, #0x14]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [r7, #0x20]
	str r1, [r7, #0x24]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [r7, #0x18]
	str r1, [r7, #0x1c]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	str r0, [r7, #0x28]
	str r1, [r7, #0x2c]
	ldrb r5, [r7]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0805C1A8
	adds r2, r0, #0
	ldr r0, [r7, #0x14]
	subs r2, r2, r0
	add r0, sp, #0x6c
	adds r1, r5, #0
	bl sub_0805BC8C
	mov r1, sp
	ldrb r0, [r7, #0x12]
	ldrb r1, [r1, #0x12]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805BC7C
	mov r8, r1
	ldr r2, [sp, #0x74]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x74]
	ldr r0, [r7, #0x20]
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r5, _0805BC80
	adds r3, r5, #0
	ands r3, r2
	orrs r3, r0
	str r3, [sp, #0x74]
	ldrh r0, [r7, #0x24]
	mov r1, sp
	ldrh r1, [r1, #0x24]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r4, _0805BC84
	adds r2, r4, #0
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x74]
	adds r0, r7, #0
	adds r0, #0x28
	add r3, sp, #0x28
	ldrb r1, [r0]
	ldrb r0, [r3]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	ldr r3, _0805BC88
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x74]
	adds r0, r7, #0
	adds r0, #0x29
	mov r1, sp
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r6, sp, #0x74
	ldr r2, [r6, #4]
	mov r1, r8
	ands r2, r1
	orrs r2, r0
	str r2, [r6, #4]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x2a
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ands r5, r2
	orrs r5, r0
	str r5, [r6, #4]
	adds r0, r7, #0
	adds r0, #0x2b
	mov r1, sp
	adds r1, #0x2b
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ands r4, r5
	orrs r4, r0
	str r4, [r6, #4]
	adds r0, r7, #0
	adds r0, #0x2c
	add r1, sp, #0x2c
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	ands r3, r4
	orrs r3, r0
	str r3, [r6, #4]
	ldr r0, [sp, #0x74]
	ldr r1, [sp, #0x78]
	mov r2, sb
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, sb
	add sp, #0x7c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_0805BC74: .4byte gCharStats
_0805BC78: .4byte gLevelStatTable
_0805BC7C: .4byte 0xFFFFFF00
_0805BC80: .4byte 0xFFFF00FF
_0805BC84: .4byte 0xFF00FFFF
_0805BC88: .4byte 0x00FFFFFF
	.syntax divided
