	.syntax unified
	push {r4, lr}
	movs r4, #0
_0806516C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806518C
	bl sub_08065194
	adds r4, #1
	cmp r4, #0xff
	bls _0806516C
	ldr r1, _08065190
	movs r0, #0xb3
	bl sub_08065194
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806518C: .4byte sub_080C0920
_08065190: .4byte sub_080C08A4
	.syntax divided
