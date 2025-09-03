	.syntax unified
sub_08044E84:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r7, _08044EA8
	ldr r1, _08044EAC
	adds r0, r7, r1
	strh r4, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08054670
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044EB0
	movs r0, #0xb7
	b _08044EEA
	.align 2, 0
_08044EA8: .4byte gSomeBlend
_08044EAC: .4byte 0x000044EE
_08044EB0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08055138
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08044EC2
	movs r0, #0xb8
	b _08044EEA
_08044EC2:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08054640
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044EE8
	movs r0, #0xb4
	bl sub_080486A0
	adds r1, r0, #0
	ldr r2, _08044EE4
	adds r0, r7, r2
	strh r4, [r0]
	b _08044EF0
	.align 2, 0
_08044EE4: .4byte 0x000044F0
_08044EE8:
	movs r0, #0xb6
_08044EEA:
	bl sub_080486A0
	adds r1, r0, #0
_08044EF0:
	adds r0, r1, #0
	movs r1, #0x10
	movs r2, #0x87
	bl sub_08047F28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
