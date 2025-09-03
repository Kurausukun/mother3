	.syntax unified
sub_080671B8:
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080671DC
	ldr r0, _080671E0
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	cmp r0, #5
	bgt _080671DC
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08067304
_080671DC:
	pop {r0}
	bx r0
	.align 2, 0
_080671E0: .4byte 0x0000043C
	.syntax divided
