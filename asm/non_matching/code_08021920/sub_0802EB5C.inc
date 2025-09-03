	.syntax unified
sub_0802EB5C:
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802EB94
	ldr r2, _0802EB8C
	adds r0, r3, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0802EB90
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	bl play_sound
	b _0802EB9A
	.align 2, 0
_0802EB8C: .4byte gMonsterData
_0802EB90: .4byte 0xFFFFFF00
_0802EB94:
	ldrh r0, [r2, #2]
	bl play_sound
_0802EB9A:
	ldr r1, _0802EBA8
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802EBA8: .4byte gObjectContinue
	.syntax divided
