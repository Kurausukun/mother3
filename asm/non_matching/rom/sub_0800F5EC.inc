	.syntax unified
sub_0800F5EC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0800F67C
	ldr r1, _0800F680
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F610
	b _0800F988
_0800F610:
	movs r0, #0
	bl sub_08036D00
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x10
	adds r5, r0, #0
	lsls r6, r6, #0x10
	cmp r5, #0
	bne _0800F62A
	cmp r6, #0
	bne _0800F62A
	b _0800F988
_0800F62A:
	add r4, sp, #0x1c
	movs r0, #0
	adds r1, r4, #0
	bl sub_08036C00
	asrs r1, r5, #0x10
	ldrh r2, [r4]
	adds r1, r1, r2
	strh r1, [r4]
	ldrh r2, [r4, #2]
	asrs r0, r6, #0x10
	adds r0, r0, r2
	strh r0, [r4, #2]
	lsls r1, r1, #0x10
	mov sl, r4
	cmp r1, #0
	bge _0800F684
	ldr r0, _0800F67C
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F65A
	b _0800F988
_0800F65A:
	movs r0, #2
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F670
	b _0800F984
_0800F670:
	adds r1, r2, #0
	str r4, [sp]
	movs r0, #2
	str r0, [sp, #4]
	b _0800F73E
	.align 2, 0
_0800F67C: .4byte gGame
_0800F680: .4byte 0x00008494
_0800F684:
	mov r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	blt _0800F6C8
	ldr r0, _0800F6C4
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F6A4
	b _0800F988
_0800F6A4:
	movs r0, #3
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F6BA
	b _0800F984
_0800F6BA:
	adds r1, r2, #0
	str r4, [sp]
	movs r0, #6
	str r0, [sp, #4]
	b _0800F73E
	.align 2, 0
_0800F6C4: .4byte gGame
_0800F6C8:
	mov r2, sl
	movs r0, #2
	ldrsh r4, [r2, r0]
	adds r0, r4, #0
	subs r0, #8
	cmp r0, #0
	bge _0800F708
	ldr r0, _0800F704
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F6E4
	b _0800F988
_0800F6E4:
	movs r0, #0
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F6FA
	b _0800F984
_0800F6FA:
	adds r1, r2, #0
	str r4, [sp]
	movs r0, #4
	str r0, [sp, #4]
	b _0800F73E
	.align 2, 0
_0800F704: .4byte gGame
_0800F708:
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	blt _0800F758
	ldr r0, _0800F754
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800F722
	b _0800F988
_0800F722:
	movs r0, #1
	bl sub_0801A6C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F738
	b _0800F984
_0800F738:
	adds r1, r2, #0
	str r4, [sp]
	str r4, [sp, #4]
_0800F73E:
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r0, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0801A434
	movs r0, #0
	b _0800F98A
	.align 2, 0
_0800F754: .4byte gGame
_0800F758:
	movs r0, #0
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800F78A
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F782
	mov r1, sl
	ldrh r0, [r1]
	b _0800F78C
_0800F782:
	bl sub_0801A5EC
	subs r0, #1
	b _0800F78C
_0800F78A:
	movs r0, #0
_0800F78C:
	mov r2, sl
	strh r0, [r2]
	add r5, sp, #0x1c
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F7B8
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F7B0
	ldrh r0, [r5, #2]
	b _0800F7BA
_0800F7B0:
	bl sub_0801A604
	subs r0, #1
	b _0800F7BA
_0800F7B8:
	movs r0, #0
_0800F7BA:
	mov r4, sl
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #8
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F7D0
	b _0800F988
_0800F7D0:
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	adds r0, r6, #0
	add r3, sp, #0x18
	bl sub_0801AE58
	adds r5, r0, #0
	cmp r5, #0
	bne _0800F7E4
	b _0800F988
_0800F7E4:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0800F7EC
	b _0800F984
_0800F7EC:
	adds r1, r0, #0
	ldrb r0, [r5, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800F802
	add r0, sp, #0x18
	ldrh r0, [r0]
	bl sub_0801B144
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0800F802:
	adds r0, r1, #0
	bl sub_0801B4E4
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08012590
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F8D8
	ldrb r0, [r6, #6]
	lsls r0, r0, #4
	mov sb, r0
	ldrb r0, [r6, #7]
	lsls r7, r0, #4
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #4
	mov r2, sl
	ldrh r0, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #4
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6]
	lsls r0, r1, #0x1e
	lsrs r2, r0, #0x1e
	ldrb r0, [r5]
	lsrs r3, r0, #6
	mov sl, r1
	cmp r2, r3
	ble _0800F85E
	adds r0, r2, #1
	adds r1, r3, #1
	bl __divsi3
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	b _0800F86E
_0800F85E:
	adds r0, r3, #1
	adds r1, r2, #1
	bl __divsi3
	adds r1, r0, #0
	mov r0, r8
	bl __divsi3
_0800F86E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sl
	lsls r0, r2, #0x1c
	lsrs r2, r0, #0x1e
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1e
	lsrs r1, r0, #0x1e
	cmp r2, r1
	ble _0800F890
	adds r0, r2, #1
	adds r1, #1
	bl __divsi3
	muls r0, r4, r0
	b _0800F8A0
_0800F890:
	adds r0, r1, #1
	adds r1, r2, #1
	bl __divsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsi3
_0800F8A0:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sb
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #1
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800F8C8
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_0800F8C8:
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F8F8
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0800F8F8
_0800F8D8:
	ldrb r1, [r6, #6]
	lsls r1, r1, #4
	ldrb r2, [r6]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1b
	adds r0, #8
	adds r1, r1, r0
	mov sb, r1
	ldrb r1, [r6, #7]
	lsls r1, r1, #4
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	adds r0, #1
	lsls r0, r0, #3
	adds r7, r1, r0
	mov sl, r2
_0800F8F8:
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F934
	mov r1, sl
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r4, sp, #0x20
	mov r2, sp
	adds r2, #0x22
	adds r1, r4, #0
	bl sub_080270A0
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800F934:
	ldrh r1, [r6, #4]
	ldrh r2, [r6]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x1e
	str r7, [sp]
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #4]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	str r0, [sp, #8]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #0xc]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #7
	str r0, [sp, #0x10]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #7
	str r0, [sp, #0x14]
	movs r0, #1
	mov r3, sb
	bl sub_0801A434
	ldr r0, _0800F97C
	add r1, sp, #0x18
	ldrh r1, [r1]
	ldr r2, _0800F980
	adds r0, r0, r2
	strh r1, [r0]
	movs r0, #0
	b _0800F98A
	.align 2, 0
_0800F97C: .4byte gGame
_0800F980: .4byte 0x00005982
_0800F984:
	movs r0, #1
	b _0800F98A
_0800F988:
	movs r0, #2
_0800F98A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
