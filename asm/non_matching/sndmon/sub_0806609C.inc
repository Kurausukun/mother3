	.syntax unified
sub_0806609C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xd1
	lsls r0, r0, #3
	bl __builtin_new
	bl sub_0806673C
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806616C
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _080660D8
	cmp r0, #1
	beq _080660DC
	b _080660E0
_080660D8:
	movs r0, #1
	b _080660DE
_080660DC:
	movs r0, #2
_080660DE:
	str r0, [r4, #0x34]
_080660E0:
	adds r0, r4, #0
	movs r1, #8
	bl sub_080661DC
	ldr r2, [sp]
	cmp r2, #0
	beq _080660FE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080660FE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
