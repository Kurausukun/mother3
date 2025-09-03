	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807749C
	movs r0, #0
	b _080774B4
_0807749C:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r4, #0x58]
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
_080774B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
