	.syntax unified
sub_08098210:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #0x34]
	movs r7, #0
_08098224:
	ldr r1, [r4, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098242
	b _08098704
_08098242:
	ldr r0, _080982E8
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	mov sl, r1
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r0, [sp, #0x34]
	adds r0, #1
	str r0, [sp, #0x38]
	cmp r0, #4
	ble _080982F0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809828E
	b _08098704
_0809828E:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _080982EC
	bl _call_via_r3
	add r1, sp, #0xc
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r4, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	b _0809850A
	.align 2, 0
_080982E8: .4byte 0x00000F94
_080982EC: .4byte 0x00000674
_080982F0:
	movs r0, #0xf9
	lsls r0, r0, #4
	adds r6, r4, r0
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r5, #0xca
	lsls r5, r5, #2
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #1
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080983A0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098336
	b _08098704
_08098336:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, sb
	blt _0809836A
	b _080984FE
_0809836A:
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _0809839C
	bl _call_via_r3
	add r1, sp, #0x10
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _080984FE
	.align 2, 0
_0809839C: .4byte 0x00000672
_080983A0:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_080740AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809844C
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098406
	b _08098704
_08098406:
	cmp r5, #6
	beq _0809840C
	b _080985B2
_0809840C:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098448
	bl _call_via_r3
	add r1, sp, #0x14
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	b _080984EE
	.align 2, 0
_08098448: .4byte 0x00000672
_0809844C:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_08074020
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098518
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080984AE
	b _08098704
_080984AE:
	cmp r5, #0
	beq _080984B4
	b _080985B2
_080984B4:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098514
	bl _call_via_r3
	add r1, sp, #0x18
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
_080984EE:
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080984FE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
_0809850A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080985B2
	.align 2, 0
_08098514: .4byte 0x00000671
_08098518:
	ldr r0, [r6]
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #2
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080985B2
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08098554
	b _08098704
_08098554:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	.syntax divided
