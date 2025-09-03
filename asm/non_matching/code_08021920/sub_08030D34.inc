	.syntax unified
sub_08030D34:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08030D60
	movs r2, #0
	ldr r1, _08030D5C
	ldr r0, [sp, #0x10]
	ands r0, r1
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	strh r2, [r0, #2]
	b _08030D8E
	.align 2, 0
_08030D5C: .4byte 0xFFFF0000
_08030D60:
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030D82
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0801A548
	mov r8, r4
	b _08030D90
_08030D82:
	ldr r2, _08030E38
	ldrh r1, [r2]
	add r0, sp, #0x10
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
_08030D8E:
	mov r8, r0
_08030D90:
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r2, r2, r0
	lsls r2, r2, #0xc
	movs r3, #2
	ldrsh r0, [r5, r3]
	movs r4, #6
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xb6
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r6, _08030E3C
	lsrs r4, r2, #0x10
	orrs r4, r0
	str r4, [sp, #0x14]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, _08030E40
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	mov sb, r1
	cmp r0, #0
	ble _08030E12
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08030E12
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #4
	bhi _08030E12
	asrs r3, r4, #0x10
	ldr r2, _08030E44
	ldr r0, _08030E48
	add r0, sb
	ldr r0, [r0]
	lsrs r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ands r4, r6
	orrs r4, r0
	str r4, [sp, #0x14]
_08030E12:
	mov r1, sb
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08030EBC
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030E4C
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	b _08030E50
	.align 2, 0
_08030E38: .4byte gUnknown_02001004
_08030E3C: .4byte 0x0000FFFF
_08030E40: .4byte gGame
_08030E44: .4byte gUnknown_080C2112
_08030E48: .4byte 0x00009D10
_08030E4C:
	bl sub_0801A5EC
_08030E50:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r3, r8
	ldrh r0, [r3]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r0, sp, #0x10
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r2, #0
	subs r0, #0xf0
	add r7, sp, #0x14
	cmp r1, r0
	blt _08030E98
	ldrh r1, [r7]
	movs r6, #0
	ldrsh r0, [r7, r6]
	cmp r0, #0xef
	bgt _08030E98
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08030E90
	ldr r1, [sp, #0x14]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x14]
	ldr r0, _08030E94
	mov sb, r0
	b _08030ED6
	.align 2, 0
_08030E90: .4byte 0xFFFF0000
_08030E94: .4byte gGame
_08030E98:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r7]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08030EB4
	ldr r0, [sp, #0x14]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x14]
	ldr r2, _08030EB8
	mov sb, r2
	b _08030ED6
	.align 2, 0
_08030EB4: .4byte 0xFFFF0000
_08030EB8: .4byte gGame
_08030EBC:
	mov r3, r8
	ldrh r0, [r3]
	add r3, sp, #0x14
	ldrh r1, [r3]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08030EFC
	ldr r0, [sp, #0x14]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x14]
	adds r7, r3, #0
_08030ED6:
	mov r4, sb
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08030F80
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030F00
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	b _08030F04
	.align 2, 0
_08030EFC: .4byte 0xFFFF0000
_08030F00:
	bl sub_0801A604
_08030F04:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r6, r8
	ldrh r0, [r6, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #2
	ldrsh r1, [r6, r0]
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r1, r0
	blt _08030F4C
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x10
	cmp r0, #0x9f
	bgt _08030F4C
	adds r0, r3, r0
	lsls r0, r0, #0x10
	ldr r1, _08030F44
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x14]
	mov r1, sl
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08030F48
	mov sb, r2
	b _08030FA4
	.align 2, 0
_08030F44: .4byte 0x0000FFFF
_08030F48: .4byte gGame
_08030F4C:
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x10
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08030F78
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x14]
	ldrh r1, [r3, #2]
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r6, _08030F7C
	mov sb, r6
	b _08030FA4
	.align 2, 0
_08030F78: .4byte 0x0000FFFF
_08030F7C: .4byte gGame
_08030F80:
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x10
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08031058
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x14]
	ldrh r1, [r3, #2]
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08030FA4:
	ldr r1, _0803105C
	add r1, sb
	ldrh r0, [r7]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08031060
	ldr r1, [sp, #0x14]
	ands r1, r2
	orrs r1, r0
	asrs r2, r1, #0x10
	ldr r0, _08031064
	add r0, sb
	ldrh r3, [r0]
	adds r2, r3, r2
	lsls r2, r2, #0x10
	ldr r4, _08031058
	ands r1, r4
	orrs r1, r2
	str r1, [sp, #0x14]
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r5, #0
	adds r0, #0xae
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08030FFC
	adds r0, r5, #0
	bl sub_08034A10
	ldr r1, [sp, #0x14]
	asrs r2, r1, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ands r1, r4
	orrs r1, r0
	str r1, [sp, #0x14]
_08030FFC:
	adds r1, r5, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	str r1, [sp, #0x20]
	cmp r0, #0
	bge _0803107E
	adds r0, r5, #0
	bl sub_08032AA8
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8a
	ldrb r1, [r1]
	adds r2, r5, #0
	adds r2, #0xb9
	ldrh r3, [r7]
	subs r3, #0xc
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r4, [sp, #0x14]
	asrs r4, r4, #0x10
	subs r4, #0x14
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	bl sub_080324D0
	add r0, sp, #0x14
	movs r2, #0
	ldrsh r3, [r0, r2]
	adds r0, r5, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08031068
	adds r1, r5, #0
	adds r1, #0xb4
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x10
	ldrb r1, [r1]
	adds r0, r0, r1
	b _08031070
	.align 2, 0
_08031058: .4byte 0x0000FFFF
_0803105C: .4byte 0x000067A8
_08031060: .4byte 0xFFFF0000
_08031064: .4byte 0x000067AA
_08031068:
	adds r0, r5, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	add r0, sl
_08031070:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08032824
	b _08031470
_0803107E:
	adds r3, r5, #0
	adds r3, #0xcc
	str r3, [sp, #0x24]
	adds r4, r5, #0
	adds r4, #0x8b
	str r4, [sp, #0x1c]
	movs r6, #0xca
	adds r6, r6, r5
	mov sb, r6
	movs r0, #0x88
	adds r0, r0, r5
	mov r8, r0
_08031096:
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	adds r0, r5, #0
	bl sub_08035C64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r6]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	mov r4, r8
	ldrh r0, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	bl sub_08036E0C
	adds r4, r0, #0
	bl sub_08002C4C
	str r0, [sp, #0x18]
	adds r0, r4, #0
	bl sub_08002C54
	adds r1, r5, #0
	bl sub_080318A4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08031096
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080310F8
	adds r0, r5, #0
	bl sub_08032B34
	b _08031470
_080310F8:
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1e
	cmp r1, #0
	bne _08031108
	ldr r0, [r5, #0x24]
	b _08031110
_08031108:
	mov r6, r8
	ldrh r0, [r6]
	bl sub_08036D78
_08031110:
	str r0, [r5, #0x20]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bgt _08031124
	cmp r4, #0
	bne _08031124
	b _08031464
_08031124:
	ldr r0, _08031198
	ldrh r2, [r0]
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x8c
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r2
	beq _0803114C
	strh r2, [r1]
	ldr r0, [sp, #0x18]
	adds r1, r2, #0
	bl sub_08002AF4
	str r0, [r5, #0x1c]
	add r1, sp, #0xc
	movs r0, #1
	strh r0, [r1]
_0803114C:
	adds r1, r5, #0
	adds r1, #0xcb
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	adds r2, r1, #0
	cmp r0, #0
	beq _080311A4
	adds r0, r5, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080311A4
	ldr r0, _0803119C
	ldr r4, _080311A0
	adds r0, r0, r4
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080311A4
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r2, [sp, #0x14]
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0803253C
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803118E
	b _08031464
_0803118E:
	ldr r0, [r5, #0x1c]
	adds r1, r5, #0
	bl sub_08032A44
	b _08031464
	.align 2, 0
_08031198: .4byte gUnknown_02001000
_0803119C: .4byte gGame
_080311A0: .4byte 0x00009D10
_080311A4:
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08031200
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080311D4
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _080311DC
_080311D4:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_080311DC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _080311F4
	movs r1, #1
_080311F4:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_080322D8
	b _08031426
_08031200:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _080312BC
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031262
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _08031236
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _0803123E
_08031236:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_0803123E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _08031256
	movs r1, #1
_08031256:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031DE0
	b _080312B4
_08031262:
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _0803128A
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031292
_0803128A:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031292:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _080312AA
	movs r1, #1
_080312AA:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031C34
_080312B4:
	adds r0, r5, #0
	bl sub_080363A0
	b _08031426
_080312BC:
	adds r0, r5, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08031378
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031324
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080312F8
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031300
_080312F8:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031300:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _08031318
	movs r1, #1
_08031318:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08032128
	b _08031426
_08031324:
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _0803134C
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031354
_0803134C:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031354:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803136C
	movs r1, #1
_0803136C:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031FCC
	b _08031426
_08031378:
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _080313D4
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080313A8
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _080313B0
_080313A8:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_080313B0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _080313C8
	movs r1, #1
_080313C8:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031AB8
	b _08031426
_080313D4:
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080313FC
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031404
_080313FC:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031404:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803141C
	movs r1, #1
_0803141C:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031970
_08031426:
	movs r0, #0
	ldrsh r1, [r7, r0]
	add r6, sp, #0x14
	movs r3, #2
	ldrsh r2, [r6, r3]
	adds r0, r5, #0
	bl sub_0803253C
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08031464
	movs r0, #0
	ldrsh r1, [r7, r0]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08031456
	ldrh r0, [r6, #2]
	ldrb r4, [r4]
	adds r0, r0, r4
	b _0803145A
_08031456:
	ldrb r0, [r4]
	add r0, sl
_0803145A:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	bl sub_08032824
_08031464:
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_08032B34
_08031470:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
