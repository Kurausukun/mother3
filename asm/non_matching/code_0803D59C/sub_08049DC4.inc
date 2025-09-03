	.syntax unified
sub_08049DC4:
	push {lr}
	ldr r0, _08049DEC
	ldr r2, _08049DF0
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0x12
	bhi _08049DE0
	ldr r0, _08049DF4
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_08049DE0:
	bl sub_0804A188
	bl sub_0804A550
	pop {r0}
	bx r0
	.align 2, 0
_08049DEC: .4byte gSomeBlend
_08049DF0: .4byte 0x00004260
_08049DF4: .4byte gUnknown_09B8FE24
	.syntax divided
