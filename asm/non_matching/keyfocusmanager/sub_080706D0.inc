	.syntax unified
sub_080706D0:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r5, sp, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl LoadRes
	mov r0, sp
	adds r1, r5, #0
	bl __9BXTHandleRC6ResPtr
	mov r0, r8
	mov r1, sp
	adds r2, r6, #0
	bl getMessage__9BXTHandleUi
	mov r0, sp
	movs r1, #2
	bl _._9BXTHandle
	ldr r0, _08070734
	str r0, [sp, #0x18]
	mov r0, r8
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08070734: .4byte _vt.6ResPtr
	.syntax divided
