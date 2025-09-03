	.syntax unified
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	bl sub_0801B4E4
	adds r1, r0, #0
	subs r0, r4, r1
	asrs r0, r0, #3
	cmp r0, #0
	bge _0801B112
	adds r0, #7
_0801B112:
	lsls r0, r0, #0xd
	adds r1, r4, #0
	adds r1, #8
	lsrs r2, r0, #0x10
	ldr r0, _0801B12C
	cmp r2, r0
	bhi _0801B13C
	adds r3, r0, #0
_0801B122:
	ldrh r0, [r1, #4]
	cmp r0, r5
	bne _0801B130
	adds r0, r1, #0
	b _0801B13E
	.align 2, 0
_0801B12C: .4byte 0x000005DB
_0801B130:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #8
	cmp r2, r3
	bls _0801B122
_0801B13C:
	movs r0, #0
_0801B13E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
