	.syntax unified
sub_08016F68:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	add r0, sp, #0xc
	strh r3, [r0]
	ldrb r0, [r7, #0x1d]
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	cmp r5, #0
	beq _08016F94
	b _080172C2
_08016F94:
	ldrh r2, [r7, #0x14]
	ldrh r0, [r7, #0x12]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r7, #0x14]
	movs r0, #0
	movs r1, #0x1f
	bl lerp
	mov sb, r0
	mov r4, sp
	adds r4, #0xe
	strh r5, [r4]
	ldr r0, _08017040
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016FBE
	b _0801711A
_08016FBE:
	ldrb r1, [r7, #0x1c]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #1
	bls _08016FD0
	b _0801711A
_08016FD0:
	mov r0, sp
	strh r6, [r0, #0xe]
	movs r3, #0x16
	ldrsh r0, [r7, r3]
	cmp r0, #0
	blt _08016FEC
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	cmp r0, #0
	blt _08016FEC
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0801709C
_08016FEC:
	add r1, sp, #0x10
	movs r0, #1
	strh r0, [r1]
	ldrh r1, [r7, #0x16]
	ldrh r6, [r7, #0x18]
	ldrh r0, [r7, #0x1a]
	mov r8, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08017050
	ldr r5, _08017044
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp2
	strh r0, [r5]
	ldr r5, _08017048
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp2
	strh r0, [r5]
	ldr r5, _0801704C
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp2
	b _08017118
	.align 2, 0
_08017040: .4byte 0x000002DE
_08017044: .4byte gUnknown_0200002C
_08017048: .4byte gUnknown_0200002E
_0801704C: .4byte gUnknown_02000030
_08017050:
	ldr r5, _08017090
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp2
	strh r0, [r5]
	ldr r5, _08017094
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp2
	strh r0, [r5]
	ldr r5, _08017098
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp2
	b _08017118
	.align 2, 0
_08017090: .4byte gUnknown_0200002C
_08017094: .4byte gUnknown_0200002E
_08017098: .4byte gUnknown_02000030
_0801709C:
	add r0, sp, #0x10
	strh r5, [r0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080170E4
	ldr r5, _080170D8
	ldrh r1, [r7, #0x16]
	mov r0, sb
	lsls r4, r0, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp
	strh r0, [r5]
	ldr r5, _080170DC
	ldrh r1, [r7, #0x18]
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp
	strh r0, [r5]
	ldr r5, _080170E0
	ldrh r1, [r7, #0x1a]
	movs r0, #0
	b _08017110
	.align 2, 0
_080170D8: .4byte gUnknown_02000032
_080170DC: .4byte gUnknown_02000034
_080170E0: .4byte gUnknown_02000036
_080170E4:
	ldr r5, _08017124
	ldrh r0, [r7, #0x16]
	mov r1, sb
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp
	strh r0, [r5]
	ldr r5, _08017128
	ldrh r0, [r7, #0x18]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp
	strh r0, [r5]
	ldr r5, _0801712C
	ldrh r0, [r7, #0x1a]
	movs r1, #0
_08017110:
	adds r2, r4, #0
	movs r3, #0x1f
	bl lerp
_08017118:
	strh r0, [r5]
_0801711A:
	ldr r3, [sp, #0x14]
	mov r8, r3
	mov r0, r8
	b _080172A6
	.align 2, 0
_08017124: .4byte gUnknown_02000032
_08017128: .4byte gUnknown_02000034
_0801712C: .4byte gUnknown_02000036
_08017130:
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801714E
	mov r0, r8
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08017146
	b _0801729A
_08017146:
	mov r0, r8
	cmp r0, #0x1b
	bls _0801714E
	b _0801729A
_0801714E:
	mov r3, r8
	lsls r1, r3, #5
	ldr r0, _08017170
	adds r4, r1, r0
	ldr r0, [r7]
	adds r5, r0, r1
	ldr r0, [r7, #8]
	adds r2, r0, r1
	ldrb r6, [r7, #0x1c]
	cmp r6, #0xb
	bls _08017166
	b _0801729A
_08017166:
	lsls r0, r6, #2
	ldr r1, _08017174
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017170: .4byte gUnknown_03005314
_08017174: .4byte _08017178
_08017178:
	.4byte _080171A8
	.4byte _080171B8
	.4byte _080171C8
	.4byte _080171D8
	.4byte _080171E8
	.4byte _080171E8
	.4byte _080171FA
	.4byte _08017200
	.4byte _0801723C
	.4byte _0801723C
	.4byte _08017254
	.4byte _08017254
_080171A8:
	mov r0, sb
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080172D4
	b _0801729A
_080171B8:
	mov r1, sb
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080173B8
	b _0801729A
_080171C8:
	mov r3, sb
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017488
	b _0801729A
_080171D8:
	mov r0, sb
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017584
	b _0801729A
_080171E8:
	mov r1, sb
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08017648
	b _0801729A
_080171FA:
	mov r3, sb
	lsls r2, r3, #0x10
	b _08017222
_08017200:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _0801721E
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bne _0801721E
	mov r0, sb
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_080179A8
	b _0801729A
_0801721E:
	mov r1, sb
	lsls r2, r1, #0x10
_08017222:
	lsrs r2, r2, #0x10
	ldrh r0, [r7, #0x16]
	str r0, [sp]
	ldrh r0, [r7, #0x18]
	str r0, [sp, #4]
	ldrh r0, [r7, #0x1a]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_080177D0
	b _0801729A
_0801723C:
	mov r3, r8
	cmp r3, #0xf
	bhi _0801729A
	mov r0, sb
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017A4C
	b _0801729A
_08017254:
	mov r1, sp
	ldrh r0, [r1, #0xe]
	cmp r0, #0
	beq _08017278
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801726E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017D28
	b _0801729A
_0801726E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017E64
	b _0801729A
_08017278:
	mov r3, sb
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	str r0, [sp, #4]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08017B84
_0801729A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #0x14]
_080172A6:
	add r0, sl
	cmp r8, r0
	bge _080172AE
	b _08017130
_080172AE:
	ldrh r0, [r7, #0x12]
	cmp r0, #0
	bne _080172BE
	ldrb r0, [r7, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #0x1d]
	b _080172C2
_080172BE:
	subs r0, #1
	strh r0, [r7, #0x12]
_080172C2:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
