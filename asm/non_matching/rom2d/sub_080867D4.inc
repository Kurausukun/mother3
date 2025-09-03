	.syntax unified
sub_080867D4:
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080867E8
	ldrh r1, [r2, #0x2c]
	movs r0, #1
	orrs r0, r1
	b _080867EE
_080867E8:
	ldrh r1, [r2, #0x2c]
	ldr r0, _080867F4
	ands r0, r1
_080867EE:
	strh r0, [r2, #0x2c]
	pop {r0}
	bx r0
	.align 2, 0
_080867F4: .4byte 0x0000FFFE
	.syntax divided
