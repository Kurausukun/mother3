	.syntax unified
sub_080B0EBC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080B0F20
	bl playSound
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl dynaCastMonster
	adds r5, r0, #0
	cmp r5, #0
	beq _080B0F18
	movs r0, #0x82
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	adds r4, r0, #0
	movs r0, #0x32
	bl setsleep
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_0807323C
	adds r0, r6, #0
	bl tellUseMessage__6Action
_080B0F18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0F20: .4byte 0x000002EA
	.syntax divided
