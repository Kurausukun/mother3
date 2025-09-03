	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r6, _08037074
	ldr r7, _08037078
	cmp r2, #3
	bgt _08037086
	cmp r2, #2
	blt _08037086
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _08037050
	rsbs r0, r0, #0
_08037050:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r4, #2
	ldrsh r1, [r6, r4]
	movs r4, #2
	ldrsh r0, [r7, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _08037064
	rsbs r0, r0, #0
_08037064:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _0803707C
	cmp r2, #2
	beq _08037084
	b _08037080
	.align 2, 0
_08037074: .4byte gUnknown_02001020
_08037078: .4byte gUnknown_0200101C
_0803707C:
	cmp r2, #2
	bne _08037084
_08037080:
	movs r2, #1
	b _08037086
_08037084:
	movs r2, #0
_08037086:
	movs r0, #0
	ldrsh r5, [r6, r0]
	movs r4, #0
	ldrsh r3, [r7, r4]
	cmp r5, r3
	beq _080370D6
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r4, #2
	ldrsh r0, [r7, r4]
	cmp r1, r0
	bne _080370A0
	movs r2, #0
_080370A0:
	cmp r2, #0
	bne _080370D6
	movs r4, #7
	cmp r5, r3
	ble _080370AC
	movs r4, #3
_080370AC:
	adds r0, r4, #0
	bl sub_08037134
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0803711A
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	cmp r1, r0
	beq _08037112
	movs r4, #1
	cmp r1, r0
	ble _080370CE
	movs r4, #5
_080370CE:
	adds r0, r4, #0
	bl sub_0803720C
	b _0803710E
_080370D6:
	movs r3, #2
	ldrsh r1, [r6, r3]
	movs r4, #2
	ldrsh r0, [r7, r4]
	movs r4, #1
	cmp r1, r0
	ble _080370E6
	movs r4, #5
_080370E6:
	adds r0, r4, #0
	bl sub_0803720C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0803711A
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r1, r0
	beq _08037112
	movs r4, #7
	cmp r1, r0
	ble _08037108
	movs r4, #3
_08037108:
	adds r0, r4, #0
	bl sub_08037134
_0803710E:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08037112:
	cmp r3, #0
	bne _0803711A
	movs r0, #0
	b _08037126
_0803711A:
	mov r0, sb
	adds r1, r4, #0
	mov r2, r8
	bl sub_08036048
	movs r0, #1
_08037126:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
