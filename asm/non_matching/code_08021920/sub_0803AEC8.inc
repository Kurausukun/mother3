	.syntax unified
sub_0803AEC8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	movs r0, #0
	add r1, sp, #0x18
	bl sub_08036C00
	ldr r4, _0803AF38
	ldr r1, _0803AF3C
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	movs r7, #0xfc
	lsls r7, r7, #2
	str r7, [sp, #4]
	movs r6, #2
	str r6, [sp, #8]
	movs r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0x6e
	movs r2, #0x68
	movs r3, #4
	bl sub_0803D878
	ldr r0, _0803AF40
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0803AF44
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x8d
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0x8c
	movs r2, #0x78
	movs r3, #3
	bl sub_0803D878
	b _0803AF5C
	.align 2, 0
_0803AF38: .4byte gSomeBlend
_0803AF3C: .4byte 0x00003618
_0803AF40: .4byte 0x0000361A
_0803AF44:
	movs r0, #9
	bl sub_08039B24
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #7
	str r1, [sp]
	str r5, [sp, #4]
	movs r1, #0x8c
	movs r2, #0x78
	bl draw_ui_text
_0803AF5C:
	add r0, sp, #0x18
	movs r2, #0
	ldrsh r0, [r0, r2]
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
	movs r1, #0x64
	movs r2, #0x88
	movs r3, #4
	bl sub_0803D878
	add r2, sp, #0x18
	mov sb, r2
	movs r1, #2
	ldrsh r0, [r2, r1]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x87
	movs r2, #0x88
	movs r3, #4
	bl sub_0803D878
	add r0, sp, #0x18
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
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
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
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
	ldr r1, _0803B004
	movs r0, #0x10
	strh r0, [r1]
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, #0x58
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
_0803B004: .4byte gUnknown_02019630
	.syntax divided
