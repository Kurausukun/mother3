	.syntax unified
sub_0803ADD0:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r0, _0803AE8C
	mov sb, r0
	ldr r0, _0803AE90
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #1
	mov r8, r1
	str r1, [sp]
	movs r6, #0xfc
	lsls r6, r6, #2
	str r6, [sp, #4]
	movs r5, #2
	str r5, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x7d
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803AE94
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x96
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803AE98
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xaf
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803AE9C
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xc8
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldrh r0, [r7, #4]
	cmp r0, #2
	bne _0803AEA4
	ldr r2, _0803AEA0
	add r2, sb
	ldrh r1, [r7, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, #0x6e
	strh r0, [r2]
	ldrh r0, [r7, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r2, #2]
	b _0803AEB4
	.align 2, 0
_0803AE8C: .4byte gSomeBlend
_0803AE90: .4byte 0x00003678
_0803AE94: .4byte 0x0000367A
_0803AE98: .4byte 0x0000367C
_0803AE9C: .4byte 0x0000367E
_0803AEA0: .4byte 0x00003608
_0803AEA4:
	ldr r1, _0803AEC4
	add r1, sb
	movs r0, #0x10
	strh r0, [r1]
	ldrh r0, [r7, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r1, #2]
_0803AEB4:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AEC4: .4byte 0x00003608
	.syntax divided
