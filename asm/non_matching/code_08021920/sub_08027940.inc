	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r4, [sp, #0x18]
	mov sb, r4
	ldr r6, _08027994
	ldr r5, _08027998
	adds r5, r5, r6
	mov r8, r5
	ldrb r4, [r5]
	movs r5, #1
	orrs r4, r5
	mov r5, r8
	strb r4, [r5]
	ldr r4, _0802799C
	adds r5, r6, r4
	movs r4, #0
	strh r4, [r5]
	ldr r5, _080279A0
	adds r4, r6, r5
	strh r0, [r4]
	ldr r4, _080279A4
	adds r0, r6, r4
	strb r1, [r0]
	adds r5, #5
	adds r0, r6, r5
	strb r2, [r0]
	ldr r1, _080279A8
	adds r0, r6, r1
	strb r3, [r0]
	adds r4, #3
	adds r6, r6, r4
	mov r5, sb
	strb r5, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027994: .4byte gGame
_08027998: .4byte 0x000083BC
_0802799C: .4byte 0x000083B6
_080279A0: .4byte 0x000083B4
_080279A4: .4byte 0x000083B8
_080279A8: .4byte 0x000083BA
	.syntax divided
