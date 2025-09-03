	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r2, r0, #0
	ldr r0, _080683D4
	adds r3, r4, r0
	ldrb r1, [r3]
	cmp r2, r1
	bge _080683D8
	movs r1, #0
	strb r2, [r3]
	b _080683F6
	.align 2, 0
_080683D4: .4byte 0x0000043E
_080683D8:
	adds r0, r1, #0
	adds r0, #8
	cmp r2, r0
	blt _080683F4
	subs r0, r2, #7
	strb r0, [r3]
	subs r0, r2, r0
	ldr r3, _080683F0
	adds r1, r4, r3
	strb r0, [r1]
	b _080683FC
	.align 2, 0
_080683F0: .4byte 0x0000043F
_080683F4:
	subs r1, r2, r1
_080683F6:
	ldr r2, _08068404
	adds r0, r4, r2
	strb r1, [r0]
_080683FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068404: .4byte 0x0000043F
	.syntax divided
