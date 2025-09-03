	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, [sp, #0x4c]
	mov r0, sp
	strh r1, [r0]
	add r4, sp, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08036BEC
	movs r0, #0xa8
	lsls r0, r0, #1
	bl get_flag
	lsls r0, r0, #0x10
	mov r8, r4
	cmp r0, #0
	beq _0800D194
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBA0
	mov sl, r0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBA0
	adds r4, r0, #0
	ldr r0, _0800D18C
	ldr r1, _0800D190
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D14A
	movs r2, #0
	mov sl, r2
	movs r4, #0
_0800D14A:
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x1c]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D15C
	b _0800D6DE
_0800D15C:
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x48]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D16E
	b _0800D6DE
_0800D16E:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBF8
	str r0, [sp, #0x20]
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBF8
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0xbd
	str r0, [sp, #0x24]
	b _0800D3BE
	.align 2, 0
_0800D18C: .4byte gGame
_0800D190: .4byte 0x0000848C
_0800D194:
	adds r4, r6, #0
	adds r4, #0xbd
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #8
	ldr r2, [sp, #0x1c]
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	str r4, [sp, #0x24]
	cmp r0, #0
	bne _0800D1C2
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #8
	ldr r2, [sp, #0x48]
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D21C
_0800D1C2:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBA0
	mov sl, r0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBA0
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x1c]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D1E8
	b _0800D6DE
_0800D1E8:
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x48]
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D1FA
	b _0800D6DE
_0800D1FA:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_0800EBF8
	str r0, [sp, #0x20]
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	bl sub_0800EBF8
	mov sb, r0
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	b _0800D3BE
_0800D21C:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	ble _0800D22E
	mov r2, r8
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	b _0800D23A
_0800D22E:
	cmp r0, #0
	bge _0800D23A
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
_0800D23A:
	movs r2, #2
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bgt _0800D24E
	cmp r0, #0
	bge _0800D24E
	mov r1, r8
	ldrh r0, [r1, #2]
	subs r0, #0x10
	strh r0, [r1, #2]
_0800D24E:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D280
	adds r0, r6, #0
	mov r1, r8
	bl sub_08036BEC
	ldrh r0, [r7]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	add r1, sp, #4
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #2]
	ldrh r1, [r7, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
_0800D280:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800D2A8
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D2A0
	mov r1, r8
	ldrh r0, [r1]
	b _0800D2AA
_0800D2A0:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D2AA
_0800D2A8:
	movs r0, #0
_0800D2AA:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D2D6
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D2CE
	ldrh r0, [r5, #2]
	b _0800D2D8
_0800D2CE:
	bl sub_0801A604
	subs r0, #1
	b _0800D2D8
_0800D2D6:
	movs r0, #0
_0800D2D8:
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0800EBA0
	adds r4, r0, #0
	mov sl, r4
	cmp r4, #0
	beq _0800D39E
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800D2FE
	cmp r4, #0
	beq _0800D39E
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800D39E
_0800D2FE:
	adds r0, r6, #0
	mov r1, r8
	bl sub_08036BEC
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D338
	adds r0, r6, #0
	mov r1, r8
	bl sub_08036BEC
	ldrh r0, [r7]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	add r1, sp, #4
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #2]
	ldrh r1, [r7, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
_0800D338:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0800D360
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D358
	mov r1, r8
	ldrh r0, [r1]
	b _0800D362
_0800D358:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D362
_0800D360:
	movs r0, #0
_0800D362:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D38E
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D386
	ldrh r0, [r5, #2]
	b _0800D390
_0800D386:
	bl sub_0801A604
	subs r0, #1
	b _0800D390
_0800D38E:
	movs r0, #0
_0800D390:
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0800EBA0
	adds r4, r0, #0
	mov sl, r4
_0800D39E:
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	bl sub_0800EC30
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D3B0
	b _0800D6DE
_0800D3B0:
	adds r0, r6, #0
	mov r1, r8
	bl sub_0800EBF8
	mov sb, r0
	mov r2, sb
	str r2, [sp, #0x20]
_0800D3BE:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0800D3CA
	mov r1, sb
	cmp r1, #0
	beq _0800D3D2
_0800D3CA:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	b _0800D422
_0800D3D2:
	mov r2, sl
	cmp r2, #0
	beq _0800D400
	ldr r0, [r2]
	ldr r1, _0800D3FC
	ands r0, r1
	cmp r0, #0
	beq _0800D422
	mov r0, sl
	adds r0, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D422
	mov r0, sp
	mov r1, sb
	strh r1, [r0]
	b _0800D422
	.align 2, 0
_0800D3FC: .4byte 0x01000040
_0800D400:
	cmp r4, #0
	beq _0800D422
	ldr r0, [r4]
	ldr r1, _0800D494
	ands r0, r1
	cmp r0, #0
	beq _0800D422
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D422
	mov r0, sp
	mov r2, sb
	strh r2, [r0]
_0800D422:
	ldr r0, [sp, #0x1c]
	ldr r1, [r0]
	ldr r2, [sp, #0x48]
	ldr r0, [r2]
	cmp r1, r0
	beq _0800D430
	b _0800D546
_0800D430:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D448
	b _0800D572
_0800D448:
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	bl sub_0800EDCC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D45A
	b _0800D6DE
_0800D45A:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D498
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x20]
	mov r3, r8
	bl sub_0800ECC8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D482
	b _0800D6DE
_0800D482:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D48C
	b _0800D6D0
_0800D48C:
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	b _0800D6C8
	.align 2, 0
_0800D494: .4byte 0x01000040
_0800D498:
	movs r0, #0
	ldrsh r5, [r7, r0]
	cmp r5, #0
	bne _0800D4A2
	b _0800D6D4
_0800D4A2:
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0800D4AC
	b _0800D6D4
_0800D4AC:
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0800D4E8
	ldr r0, [sp, #8]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r2, [r6, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	add r3, sp, #8
	strh r2, [r3, #2]
	ldr r0, [sp, #0xc]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r2, [r0, #2]
	adds r2, r3, #0
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bgt _0800D4EC
	ldrh r0, [r4]
	subs r0, #8
	b _0800D4F0
	.align 2, 0
_0800D4E8: .4byte 0xFFFF0000
_0800D4EC:
	ldrh r0, [r4]
	adds r0, #8
_0800D4F0:
	strh r0, [r4]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D51E
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D51A
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0800D814
	b _0800D51E
_0800D51A:
	strh r0, [r7]
	strh r0, [r7, #2]
_0800D51E:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D536
	b _0800D6D4
_0800D536:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D540
	b _0800D6D0
_0800D540:
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	b _0800D6C8
_0800D546:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	adds r2, r7, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D572
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x48]
	adds r2, r7, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D57A
_0800D572:
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
	b _0800D6E0
_0800D57A:
	mov r5, r8
	adds r0, r6, #0
	mov r1, sl
	adds r2, r5, #0
	bl sub_0800EDCC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D58E
	b _0800D6DE
_0800D58E:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EDCC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D5A0
	b _0800D6DE
_0800D5A0:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x1c]
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D5D8
	adds r0, r6, #0
	mov r1, sl
	ldr r2, [sp, #0x20]
	adds r3, r5, #0
	bl sub_0800ECC8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D5C8
	b _0800D6DE
_0800D5C8:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D5D2
	b _0800D6D0
_0800D5D2:
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	b _0800D6C8
_0800D5D8:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, [sp, #0x48]
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D61E
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sb
	mov r3, r8
	bl sub_0800ECC8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D6DE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D6D0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
	adds r2, r7, #0
	bl sub_0800D814
	ldr r1, [sp, #0x48]
	ldrh r0, [r1]
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	b _0800D6D4
_0800D61E:
	movs r0, #0
	ldrsh r5, [r7, r0]
	cmp r5, #0
	beq _0800D6D4
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _0800D6D4
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0800D670
	ldr r0, [sp, #0x10]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x10]
	ldrh r2, [r6, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	add r3, sp, #0x10
	strh r2, [r3, #2]
	ldr r0, [sp, #0x14]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	strh r2, [r1, #2]
	ldrh r0, [r3, #2]
	subs r0, #8
	strh r0, [r3, #2]
	adds r2, r3, #0
	adds r4, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bgt _0800D674
	ldrh r0, [r4]
	subs r0, #8
	b _0800D678
	.align 2, 0
_0800D670: .4byte 0xFFFF0000
_0800D674:
	ldrh r0, [r4]
	adds r0, #8
_0800D678:
	strh r0, [r4]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D6A6
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D6A2
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl sub_0800D814
	b _0800D6A6
_0800D6A2:
	strh r0, [r7]
	strh r0, [r7, #2]
_0800D6A6:
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D6D4
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D6D0
	adds r0, r6, #0
	ldr r1, [sp, #0x48]
_0800D6C8:
	adds r2, r7, #0
	bl sub_0800D814
	b _0800D6D4
_0800D6D0:
	strh r0, [r7]
	strh r0, [r7, #2]
_0800D6D4:
	ldr r0, [r7]
	cmp r0, #0
	beq _0800D6DE
	movs r0, #1
	b _0800D6E0
_0800D6DE:
	movs r0, #0
_0800D6E0:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
