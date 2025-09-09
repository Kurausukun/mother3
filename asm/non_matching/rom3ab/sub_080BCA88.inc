	.syntax unified
sub_080BCA88:
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BCA9C
	b _080BCDD0
_080BCA9C:
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BCAAA
	b _080BCDD0
_080BCAAA:
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
	subs r0, #1
	cmp r0, #0xbd
	bls _080BCACA
	b _080BCDD4
_080BCACA:
	lsls r0, r0, #2
	ldr r1, _080BCAD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BCAD4: .4byte _080BCAD8
_080BCAD8:
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD4
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
	.4byte _080BCDD0
_080BCDD0:
	movs r0, #0
	b _080BCDD6
_080BCDD4:
	movs r0, #1
_080BCDD6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
