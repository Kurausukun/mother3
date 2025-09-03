	.syntax unified
sub_0807E428:
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x40]
	cmp r0, r1
	bne _0807E43A
	cmp r2, #1
	bne _0807E440
_0807E43A:
	str r1, [r3, #0x40]
	movs r0, #1
	b _0807E442
_0807E440:
	movs r0, #0
_0807E442:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
