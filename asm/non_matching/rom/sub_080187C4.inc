	.syntax unified
sub_080187C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r4, #0
	ldr r5, _08018814
_080187DC:
	cmp r4, #0
	bne _080187E8
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08018800
_080187E8:
	cmp r4, #1
	bne _080187F4
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08018800
_080187F4:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08018818
_08018800:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _080187DC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018814: .4byte gGame
	.syntax divided
