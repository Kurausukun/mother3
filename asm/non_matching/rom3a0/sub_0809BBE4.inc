	.syntax unified
sub_0809BBE4:
	push {r4, r5, lr}
	ldr r4, [r0, #0x1c]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r0, r5
	bl battle_1f8__6Battle
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
