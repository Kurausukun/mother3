	.syntax unified
sub_08037B4C:
	push {r4, lr}
	ldr r4, _08037B84
	adds r0, r4, #0
	bl sub_08009F70
	bl sub_080381DC
	ldr r0, _08037B88
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #3
	bhi _08037B7E
	ldr r0, _08037B8C
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _08037B90
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_08037B7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037B84: .4byte gUnknown_0201B7A0
_08037B88: .4byte 0xFFFFDDB8
_08037B8C: .4byte gUnknown_08D2E11C
_08037B90: .4byte 0xFFFFD538
	.syntax divided
