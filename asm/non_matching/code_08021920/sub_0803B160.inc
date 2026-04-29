	.syntax unified
sub_0803B160:
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x18
	ldr r5, _0803B268
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #1
	mov sl, r1
	str r1, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	mov sb, r1
	str r1, [sp, #4]
	movs r1, #2
	mov r8, r1
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x7d
	movs r2, #0x68
	movs r3, #3
	bl sub_0803D878
	ldr r1, _0803B26C
	adds r0, r5, r1
	ldrh r0, [r0]
	mov r1, sl
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x96
	movs r2, #0x68
	movs r3, #3
	bl sub_0803D878
	ldr r1, _0803B270
	adds r0, r5, r1
	ldrh r0, [r0]
	mov r1, sl
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xaf
	movs r2, #0x68
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803B274
	adds r5, r5, r0
	ldrh r0, [r5]
	mov r1, sl
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xc8
	movs r2, #0x68
	movs r3, #1
	bl sub_0803D878
	movs r0, #0
	bl getCurrentTrack
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #1
	bl getCurrentTrack
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sl
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0x75
	movs r2, #0x78
	movs r3, #4
	bl sub_0803D878
	mov r1, sl
	str r1, [sp]
	mov r0, sb
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #0x9d
	movs r2, #0x78
	movs r3, #4
	bl sub_0803D878
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B268: .4byte gSave
_0803B26C: .4byte 0x0000070A
_0803B270: .4byte 0x0000070C
_0803B274: .4byte 0x0000070E
	.syntax divided
