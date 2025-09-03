	.syntax unified
sub_0805A778:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r4, _0805A7D8
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	movs r7, #0
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_0805A800
	ldrh r0, [r4]
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r4]
	ldr r6, _0805A7DC
	ldrh r3, [r6]
	lsls r0, r3, #8
	movs r1, #0x10
	ldrh r2, [r4, #2]
	orrs r0, r1
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	strh r7, [r4, #4]
	cmp r5, #2
	beq _0805A7FA
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0805A7C8
	ldr r0, _0805A7E0
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0805A7FA
_0805A7C8:
	ldr r1, _0805A7E4
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805A7EC
	cmp r2, #0x10
	bne _0805A7E8
	strh r7, [r1]
	b _0805A7FA
	.align 2, 0
_0805A7D8: .4byte gSomeBlend
_0805A7DC: .4byte gUnknown_02015DF0
_0805A7E0: .4byte gUnknown_02015DE0
_0805A7E4: .4byte gUnknown_02015DF4
_0805A7E8:
	adds r0, r3, #1
	b _0805A7F8
_0805A7EC:
	cmp r2, #0
	bne _0805A7F6
	movs r0, #1
	strh r0, [r1]
	b _0805A7FA
_0805A7F6:
	subs r0, r3, #1
_0805A7F8:
	strh r0, [r6]
_0805A7FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
