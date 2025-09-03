	.syntax unified
sub_0804A3F0:
	push {r4, r5, r6, lr}
	ldr r0, _0804A434
	movs r1, #2
	movs r2, #1
	movs r3, #0x12
	bl sub_08001378
	adds r4, r0, #0
	movs r3, #0
	ldr r6, _0804A438
	ldr r0, _0804A43C
	adds r5, r0, #0
_0804A408:
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r5
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x11
	bls _0804A408
	ldr r0, _0804A440
	ldr r1, _0804A444
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A434: .4byte gUnknown_02016078
_0804A438: .4byte 0xFFFFFC00
_0804A43C: .4byte 0x000002C3
_0804A440: .4byte gSomeBlend
_0804A444: .4byte 0x00002C94
	.syntax divided
