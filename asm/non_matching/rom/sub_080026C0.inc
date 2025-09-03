	.syntax unified
sub_080026C0:
	push {lr}
	ldr r0, _080026D8
	movs r1, #0x84
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r1, [r2]
	ldr r0, _080026DC
	cmp r1, r0
	bhi _080026E0
	adds r0, r1, #1
	b _080026E2
	.align 2, 0
_080026D8: .4byte gSave
_080026DC: .4byte 0x014996C3
_080026E0:
	ldr r0, _080026EC
_080026E2:
	str r0, [r2]
	bl sub_080026F0
	pop {r0}
	bx r0
	.align 2, 0
_080026EC: .4byte 0x01499688
	.syntax divided
