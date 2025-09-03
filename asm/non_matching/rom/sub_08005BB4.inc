	.syntax unified
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005BDC
	ldr r2, _08005BD0
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005BD4
	ldr r0, _08005BD8
	b _08005BE4
	.align 2, 0
_08005BD0: .4byte 0x04000208
_08005BD4: .4byte gIntrHandlers
_08005BD8: .4byte sub_08005730
_08005BDC:
	ldr r2, _08005BF0
	strh r0, [r2]
	ldr r1, _08005BF4
	ldr r0, _08005BF8
_08005BE4:
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005BF0: .4byte 0x04000208
_08005BF4: .4byte gIntrHandlers
_08005BF8: .4byte sub_080055E4
	.syntax divided
