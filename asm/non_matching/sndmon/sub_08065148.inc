	.syntax unified
sub_08065148:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08065164
	lsls r3, r0, #2
	adds r3, r3, r4
	ldr r3, [r3]
	bl _call_via_r3
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08065164: .4byte gUnknown_020038C0
	.syntax divided
