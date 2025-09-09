	.syntax unified
sub_080B3160:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r5, r1, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080B3174:
	lsls r7, r6, #1
	b _080B31A2
_080B3178:
	ldr r1, [r5, #0x1c]
	movs r2, #0xae
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	movs r2, #0
	cmp r0, #1
	bgt _080B3196
	movs r2, #1
_080B3196:
	adds r0, r5, #0
	adds r1, r4, #0
	bl tellStatusWoreOff
	movs r0, #1
	add r8, r0
_080B31A2:
	ldr r2, [r5, #0x1c]
	movs r1, #0xae
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldr r1, _080B3214
	adds r1, r7, r1
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080B3178
	mov r2, r8
	cmp r2, #0
	bgt _080B3204
	adds r6, #1
	cmp r6, #7
	bls _080B3174
	mov r0, sb
	ldr r3, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x86
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	add r1, sb
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080B3204:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3214: .4byte gUnknown_080F950C
	.syntax divided
