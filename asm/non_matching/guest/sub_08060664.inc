	.syntax unified
sub_08060664:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov sb, r0
	adds r7, r1, #0
	bl battleWon
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060682
	b _080608A4
_08060682:
	movs r0, #0x32
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806069A
	bl GetMonsterCount
	cmp r0, #0
	bgt _0806069A
	b _080608A4
_0806069A:
	movs r0, #0x39
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080606B8
	movs r0, #0x3a
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080606B8
	b _08060874
_080606B8:
	adds r0, r7, #0
	movs r1, #2
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080606CA
	b _08060874
_080606CA:
	b _080608A4
_080606CC:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	add r0, sp, #4
	bl __4Base
	ldr r0, _08060864
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	ldr r2, _08060868
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	add r0, sp, #0x10
	mov r8, r0
	mov r1, sl
	bl getName__5GoodsUs
	ldr r2, [r7, #0x1c]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x24
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r4, sp, #0x30
	adds r0, r4, #0
	bl __3Msg
	ldr r1, _0806086C
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x3c
	movs r6, #0
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x20
	adds r1, r7, #0
	adds r2, r7, #0
	bl PlayAnimation
	ldr r0, [r7, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, r8
	mov r1, sl
	bl getName__5GoodsUs
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x1c
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	movs r1, #0xeb
	lsls r1, r1, #1
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x40
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	add r0, sp, #4
	bl __4Base
	ldr r0, _08060870
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	ldr r2, _08060868
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	movs r0, #1
	b _080608A6
	.align 2, 0
_08060864: .4byte _vt.7Suspend
_08060868: .4byte _vt.3Unk
_0806086C: .4byte 0x000001D5
_08060870: .4byte _vt.6Resume
_08060874:
	movs r5, #0
	ldr r4, _080608B8
_08060878:
	ldr r1, [r7, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldrh r2, [r4]
	mov sl, r2
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806089C
	b _080606CC
_0806089C:
	adds r4, #2
	adds r5, #1
	cmp r5, #6
	bls _08060878
_080608A4:
	movs r0, #0
_080608A6:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080608B8: .4byte gUnknown_080F4598
	.syntax divided
