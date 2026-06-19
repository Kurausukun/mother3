	.syntax unified
sub_0809BCE0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809BD04
	movs r0, #0
	b _0809BD34
_0809BD04:
	movs r1, #0x8a
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r2, _0809BD3C
	ldr r1, _0809BD40
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0809BD44
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0809BD48
	movs r0, #0x84
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r4, [r3]
	adds r0, r5, #0
	adds r0, #0x80
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0809BD4C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r4, [r3]
	movs r0, #1
_0809BD34:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809BD3C: .4byte gCharStats
_0809BD40: .4byte 0x040000D4
_0809BD44: .4byte 0x80000360
_0809BD48: .4byte gSave
_0809BD4C: .4byte 0x80000410
	.syntax divided
