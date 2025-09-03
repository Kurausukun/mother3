	.syntax unified
	push {lr}
	ldr r0, _080573AC
	ldr r1, _080573B0
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0x13
	bhi _080573A2
	ldr r1, _080573B4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080573A2
	bl _call_via_r0
_080573A2:
	bl sub_08057424
	pop {r0}
	bx r0
	.align 2, 0
_080573AC: .4byte gSomeBlend
_080573B0: .4byte 0x00002CE4
_080573B4: .4byte gUnknown_09BCDC40
	.syntax divided
