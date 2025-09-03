	.syntax unified
sub_0804865C:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _08048698
	ldrh r2, [r0, #2]
	ldr r4, _0804869C
	adds r6, r0, #0
	cmp r2, r4
	beq _0804868C
	cmp r2, r3
	beq _0804868C
	adds r5, r6, #0
	adds r2, r4, #0
_08048678:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _0804868C
	cmp r0, r3
	bne _08048678
_0804868C:
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08048698: .4byte gUnknown_09B8FD84
_0804869C: .4byte 0x0000FFFF
	.syntax divided
