	.syntax unified
__9SARHandle:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl __6ResPtr
	ldr r0, _080687A0
	str r0, [r4, #4]
	ldr r0, _080687A4
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _080687A8
	str r5, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	mov r1, sp
	bl set__6ResPtrR6ResPtr
	str r5, [sp, #8]
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687A0: .4byte _vt.9SARHandle
_080687A4: .4byte gBattleSAR
_080687A8: .4byte _vt.11ResPtrSized
	.syntax divided
