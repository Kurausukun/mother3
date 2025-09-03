	.syntax unified
sub_080573B8:
	push {lr}
	ldr r1, _080573DC
	ldrh r2, [r1, #8]
	movs r3, #0x88
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	ldr r0, _080573E0
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	bhi _080573D8
	bl nullsub_25
_080573D8:
	pop {r0}
	bx r0
	.align 2, 0
_080573DC: .4byte gSomeBlend
_080573E0: .4byte 0x00002CE4
	.syntax divided
