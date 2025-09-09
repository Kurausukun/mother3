	.syntax unified
sub_080AD10C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r8, r0
	b _080AD154
_080AD120:
	adds r0, r5, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	add r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bne _080AD152
	adds r7, #1
_080AD152:
	adds r5, #1
_080AD154:
	bl sub_08072DFC__Fv
	cmp r5, r0
	blt _080AD120
	cmp r7, #1
	ble _080AD170
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080AD170
	movs r0, #0x3b
	b _080AD188
_080AD170:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xa
	cmp r1, #0x28
	blt _080AD188
	movs r0, #0xe6
	cmp r1, #0x5f
	bge _080AD188
	movs r0, #0x1d
_080AD188:
	adds r1, r6, #0
	bl getMonsterSkill
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
