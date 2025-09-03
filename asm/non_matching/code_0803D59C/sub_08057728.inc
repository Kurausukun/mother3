	.syntax unified
sub_08057728:
	push {lr}
	ldr r3, _08057750
	ldr r0, _08057754
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x13
	bhi _0805774A
	ldr r1, _08057758
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0805774A
	ldr r2, _0805775C
	adds r0, r3, r2
	bl _call_via_r1
_0805774A:
	pop {r0}
	bx r0
	.align 2, 0
_08057750: .4byte gSomeBlend
_08057754: .4byte 0x00002CE4
_08057758: .4byte gUnknown_09BCDC90
_0805775C: .4byte 0x00002CB8
	.syntax divided
