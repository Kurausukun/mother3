	.syntax unified
sub_080747CC:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _080747E0
_080747D6:
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _080747E4
	ldrh r0, [r2]
	b _080747EE
	.align 2, 0
_080747E0: .4byte gUnknown_081135A8
_080747E4:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x38
	ble _080747D6
	movs r0, #0
_080747EE:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
