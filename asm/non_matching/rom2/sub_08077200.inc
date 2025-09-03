	.syntax unified
sub_08077200:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807721C
	movs r0, #0
	b _08077230
_0807721C:
	ldr r2, [r4, #0x1c]
	adds r2, #0xf0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r4, #0x4c]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_08077230:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
