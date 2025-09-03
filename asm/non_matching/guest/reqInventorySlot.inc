	.syntax unified
	push {r4, r5, lr}
	movs r5, #0
	b _08061328
_08061302:
	adds r0, r5, #0
	bl GetPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0xf
	bgt _08061326
	adds r0, r4, #0
	b _08061332
_08061326:
	adds r5, #1
_08061328:
	bl getPartyCount
	cmp r5, r0
	blt _08061302
	movs r0, #0
_08061332:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
