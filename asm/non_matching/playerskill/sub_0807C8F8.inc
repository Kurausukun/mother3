	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0807C920
	cmp r0, #4
	beq _0807C932
	b _0807C940
_0807C920:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0807C940
	movs r0, #0xe
	b _0807C95A
_0807C932:
	movs r0, #4
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0807C958
_0807C940:
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0807C95A
_0807C958:
	movs r0, #0xf
_0807C95A:
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
