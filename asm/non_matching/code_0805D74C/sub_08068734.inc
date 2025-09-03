	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806876C
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r1, #8
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068718
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r1, #0
	cmp r5, r0
	bge _08068764
	movs r1, #1
_08068764:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806876C: .4byte 0x0000043E
	.syntax divided
