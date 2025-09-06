	.include "asm/macros.inc"
	.syntax unified
sub_08083BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sl, r0
	bl __4Base
	ldr r0, _08083CAC
	mov r1, sl
	str r0, [r1, #0x1c]
	mov r6, sl
	adds r6, #0x24
	adds r0, r6, #0
	bl sub_0806D64C
	mov r7, sl
	adds r7, #0x90
	ldr r0, _08083CB0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _08083CB4
	str r5, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r2, sp, #0x34
	movs r0, #0xa
	strh r0, [r2]
	strh r0, [r2, #2]
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_08071108
	str r5, [sp, #0xc]
	ldr r0, _08083CB8
	str r0, [r7, #0x1c]
	movs r1, #0xa2
	lsls r1, r1, #2
	add r0, sp, #0x10
	mov sb, r0
	bl sub_080706A0
	add r1, sp, #0x1c
	mov r8, r1
	mov r0, r8
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_080706A0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #1
	mov r2, sb
	mov r3, r8
	bl sub_0806D744
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	str r5, [sp, #0x18]
	add r1, sp, #0x38
	movs r4, #0x78
	strh r4, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0806D814
	add r1, sp, #0x3c
	movs r0, #0x90
	movs r2, #0x18
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r6, #0
	bl sub_0806D828
	add r1, sp, #0x40
	strh r4, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0806D83C
	add r1, sp, #0x44
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0806E9C4
	add r1, sp, #0x48
	movs r0, #0x82
	movs r2, #6
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl sub_08071194
	mov r0, sl
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08083CAC: .4byte vt_09F83D28
_08083CB0: .4byte gUnknown_08CE39F8
_08083CB4: .4byte _vt.6ResPtr
_08083CB8: .4byte vt_09F7E458
thumb_func_start _._12TextAccessor
_._12TextAccessor:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08083CEC
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, _08083CF0
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08083CEC: .4byte vt_09F83D28
_08083CF0: .4byte vt_09F7E458
	.syntax divided
