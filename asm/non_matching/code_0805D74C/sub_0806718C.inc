	.syntax unified
sub_0806718C:
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080671B0
	ldr r0, _080671B4
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _080671B0
	subs r0, #1
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08067304
_080671B0:
	pop {r0}
	bx r0
	.align 2, 0
_080671B4: .4byte 0x0000043C
	.syntax divided
