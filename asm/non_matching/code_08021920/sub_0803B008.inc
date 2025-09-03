	.syntax unified
sub_0803B008:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	ldr r0, _0803B144
	mov r8, r0
	ldr r0, _0803B148
	add r0, r8
	ldr r0, [r0]
	movs r5, #1
	str r5, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r6, #2
	str r6, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x86
	movs r2, #0x68
	movs r3, #6
	bl sub_0803D878
	ldr r0, _0803B14C
	add r0, r8
	ldr r0, [r0]
	str r5, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x86
	movs r2, #0x78
	movs r3, #6
	bl sub_0803D878
	ldr r0, _0803B150
	add r0, r8
	ldr r7, [r0]
	ldr r5, _0803B154
	adds r0, r7, #0
	adds r1, r5, #0
	bl Divide
	mov sb, r0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08002FD4
	adds r7, r0, #0
	str r6, [sp]
	movs r0, #0xfc
	lsls r0, r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, sb
	movs r1, #0x76
	movs r2, #0x88
	movs r3, #2
	bl sub_0803D878
	ldr r1, _0803B158
	mov sl, r1
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x86
	movs r2, #0x88
	movs r3, #0x20
	bl sub_0803D678
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r0, r7, #0
	adds r1, r5, #0
	bl Divide
	mov sb, r0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08002FD4
	adds r7, r0, #0
	str r6, [sp]
	movs r0, #0xfc
	lsls r0, r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, sb
	movs r1, #0x8e
	movs r2, #0x88
	movs r3, #2
	bl sub_0803D878
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x9e
	movs r2, #0x88
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r7, #0
	movs r1, #0x3c
	bl Divide
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_08002FD4
	str r6, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0xa6
	movs r2, #0x88
	movs r3, #2
	bl sub_0803D878
	ldr r0, _0803B15C
	add r8, r0
	movs r0, #0x10
	mov r1, r8
	strh r0, [r1]
	ldr r1, [sp, #0x18]
	ldrh r0, [r1, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	mov r1, r8
	strh r0, [r1, #2]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B144: .4byte gSomeBlend
_0803B148: .4byte 0x0000361C
_0803B14C: .4byte 0x00003620
_0803B150: .4byte 0x00003624
_0803B154: .4byte 0x00034BC0
_0803B158: .4byte gUnknown_080C1E38
_0803B15C: .4byte 0x00003608
	.syntax divided
