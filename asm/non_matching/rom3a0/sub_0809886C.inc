	.syntax unified
sub_0809886C:
	push {r4, lr}
	adds r4, r0, #0
	bl battle_78__6Battle
	ldr r0, [r4, #0x1c]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r4, #0
	b _080988AA
_0809888E:
	adds r0, r4, #0
	bl GetPlayer
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_080988AA:
	bl getPartyCount
	cmp r4, r0
	blt _0809888E
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
