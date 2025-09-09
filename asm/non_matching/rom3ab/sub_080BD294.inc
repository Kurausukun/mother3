	.syntax unified
sub_080BD294:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BD2AA
	b _080BD5A4
_080BD2AA:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #2
	cmp r0, #0xb1
	bls _080BD2CA
	b _080BD5A4
_080BD2CA:
	lsls r0, r0, #2
	ldr r1, _080BD2D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BD2D4: .4byte _080BD2D8
_080BD2D8:
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A0
	.4byte _080BD5A4
	.4byte _080BD5A4
	.4byte _080BD5A0
	.4byte _080BD5A0
	.4byte _080BD5A0
_080BD5A0:
	movs r0, #0
	b _080BD5AC
_080BD5A4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl calcDidHit__6ActionP4Unit
_080BD5AC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
