	.syntax unified
sub_0809BCBC:
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
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
