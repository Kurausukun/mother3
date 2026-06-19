	.syntax unified
sub_080B25D8:
	push {r4, lr}
	adds r4, r0, #0
	bl tellUseMessage__6Action
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl dynaCastMonster
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _080B261C
	bl PlaySoundBlocking
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B261C: .4byte 0x00000612
	.syntax divided
