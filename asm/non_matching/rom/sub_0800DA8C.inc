	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r2, [r0]
	mov sl, r4
	cmp r2, #0
	bne _0800DB18
	movs r0, #1
	strh r0, [r1]
	ldrh r0, [r4]
	movs r7, #0xf
	ands r7, r0
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800DAFC
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800DAFC
	cmp r7, #5
	bhi _0800DB18
	mov r0, sp
	strh r2, [r0]
	b _0800DB18
_0800DAFC:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0800DB18
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0800DB18
	cmp r7, #0xb
	bls _0800DB18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_0800DB18:
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, _0800DB8C
	str r2, [sp, #0x18]
	ldrh r1, [r4]
	cmp r0, #0
	blt _0800DB2A
	b _0800DC3A
_0800DB2A:
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0800DB34
	b _0800DC3A
_0800DB34:
	mov r4, sb
	ldrh r4, [r4]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r1, sb
	ldrh r0, [r1, #2]
	add r4, sp, #8
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DB66
	b _0800E320
_0800DB66:
	mov r2, sl
	ldrh r0, [r2, #2]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x18]
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0xc]
	cmp r7, #7
	bls _0800DB90
	mov r4, sl
	ldrh r0, [r4, #2]
	b _0800DB96
	.align 2, 0
_0800DB8C: .4byte 0xFFFF0000
_0800DB90:
	mov r1, sl
	ldrh r0, [r1, #2]
	subs r0, #0x10
_0800DB96:
	lsls r0, r0, #0x10
	ldr r1, _0800DC00
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	orrs r0, r1
	str r0, [sp, #0x10]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r4, sp, #0xc
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	adds r6, r4, #0
	add r4, sp, #0x10
	cmp r0, #0
	bne _0800DBF4
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DBF4
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DBF4
	b _0800E328
_0800DBF4:
	cmp r7, #7
	bhi _0800DC04
	mov r3, sl
	ldrh r0, [r3, #2]
	b _0800DC0A
	.align 2, 0
_0800DC00: .4byte 0x0000FFFF
_0800DC04:
	mov r1, sl
	ldrh r0, [r1, #2]
	adds r0, #0x10
_0800DC0A:
	strh r0, [r6, #2]
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DC2E
	b _0800E320
_0800DC2E:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	b _0800E300
_0800DC3A:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800DD20
	mov r3, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _0800DD20
	mov r2, sb
	ldrh r0, [r2]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DC70
	b _0800E320
_0800DC70:
	mov r3, sl
	ldrh r0, [r3, #2]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	adds r6, r1, #0
	cmp r7, #7
	bls _0800DC8C
	ldrh r0, [r3, #2]
	b _0800DC92
_0800DC8C:
	mov r4, sl
	ldrh r0, [r4, #2]
	subs r0, #0x10
_0800DC92:
	strh r0, [r6, #2]
	mov r1, sl
	ldrh r0, [r1]
	add r4, sp, #0x10
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DCE0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DCE0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DCE0
	b _0800E328
_0800DCE0:
	cmp r7, #7
	bhi _0800DCEA
	mov r2, sl
	ldrh r0, [r2, #2]
	b _0800DCF0
_0800DCEA:
	mov r3, sl
	ldrh r0, [r3, #2]
	adds r0, #0x10
_0800DCF0:
	strh r0, [r6, #2]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DD14
	b _0800E320
_0800DD14:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	b _0800E300
_0800DD20:
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0800DD28
	b _0800DF98
_0800DD28:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r2, [r2, #2]
	cmp r0, #0
	blt _0800DD36
	b _0800DE64
_0800DD36:
	mov r4, sb
	ldrh r0, [r4]
	add r4, sp, #8
	strh r0, [r4]
	mov r1, sb
	ldrh r1, [r1, #2]
	adds r0, r2, r1
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DD5E
	b _0800E320
_0800DD5E:
	mov r2, sl
	ldrh r0, [r2]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	subs r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1, #2]
	adds r6, r1, #0
	cmp r7, #7
	bls _0800DD7A
	ldrh r0, [r2]
	b _0800DD80
_0800DD7A:
	mov r3, sl
	ldrh r0, [r3]
	subs r0, #0x10
_0800DD80:
	strh r0, [r6]
	ldr r0, _0800DDF0
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DD9A
	movs r4, #0
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _0800DD9A
	ldr r0, [sp, #0x14]
	subs r0, #0x10
	strh r0, [r6]
_0800DD9A:
	ldrh r0, [r6]
	add r4, sp, #0x10
	strh r0, [r4]
	mov r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DDE6
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DDE6
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DDE6
	b _0800E328
_0800DDE6:
	cmp r7, #7
	bhi _0800DDF4
	mov r2, sl
	ldrh r0, [r2]
	b _0800DDFA
	.align 2, 0
_0800DDF0: .4byte gGame
_0800DDF4:
	mov r3, sl
	ldrh r0, [r3]
	adds r0, #0x10
_0800DDFA:
	strh r0, [r6]
	ldr r0, _0800DE60
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DE14
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r1, [sp, #0x14]
	bl sub_08002FD4
	add r1, sp, #0xc
	strh r0, [r1]
_0800DE14:
	ldrh r0, [r6]
	strh r0, [r4]
	mov r2, sl
	ldrh r0, [r2, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DE36
	b _0800E320
_0800DE36:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DE4C
	b _0800E320
_0800DE4C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	b _0800E31A
	.align 2, 0
_0800DE60: .4byte gGame
_0800DE64:
	cmp r0, #0
	bgt _0800DE6A
	b _0800DF98
_0800DE6A:
	mov r3, sb
	ldrh r0, [r3]
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DE90
	b _0800E320
_0800DE90:
	mov r4, sl
	ldrh r0, [r4]
	movs r7, #0xf
	ands r7, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1, #2]
	adds r6, r1, #0
	cmp r7, #7
	bls _0800DEAC
	ldrh r0, [r4]
	b _0800DEB2
_0800DEAC:
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #0x10
_0800DEB2:
	strh r0, [r6]
	ldr r0, _0800DF24
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DECC
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0800DECC
	ldr r0, [sp, #0x14]
	subs r0, #0x10
	strh r0, [r6]
_0800DECC:
	ldrh r0, [r6]
	add r4, sp, #0x10
	strh r0, [r4]
	mov r3, sl
	ldrh r0, [r3, #2]
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF18
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF18
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DF18
	b _0800E328
_0800DF18:
	cmp r7, #7
	bhi _0800DF28
	mov r1, sl
	ldrh r0, [r1]
	b _0800DF2E
	.align 2, 0
_0800DF24: .4byte gGame
_0800DF28:
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #0x10
_0800DF2E:
	strh r0, [r6]
	ldr r0, _0800DF94
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800DF48
	movs r3, #0
	ldrsh r0, [r6, r3]
	ldr r1, [sp, #0x14]
	bl sub_08002FD4
	add r1, sp, #0xc
	strh r0, [r1]
_0800DF48:
	ldrh r0, [r6]
	strh r0, [r4]
	mov r4, sl
	ldrh r0, [r4, #2]
	add r4, sp, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r2, sp, #0xc
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DF6A
	b _0800E320
_0800DF6A:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DF80
	b _0800E320
_0800DF80:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	b _0800E31A
	.align 2, 0
_0800DF94: .4byte gGame
_0800DF98:
	lsls r0, r1, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, #0
	bge _0800E07E
	mov r2, r8
	movs r4, #2
	ldrsh r0, [r2, r4]
	ldrh r2, [r2, #2]
	cmp r0, r3
	bgt _0800E07E
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E034
	mov r4, sl
	ldrh r0, [r4]
	subs r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E008
	ldrh r2, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #4
	bhi _0800E008
	cmp r1, #4
	bhi _0800E008
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r6, #2]
_0800E008:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E034
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E034
	b _0800E328
_0800E034:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E048
	b _0800E320
_0800E048:
	mov r1, sl
	ldrh r0, [r1]
	add r2, sp, #0xc
	strh r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	subs r0, #0x10
	strh r0, [r2, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E06C
	b _0800E320
_0800E06C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	b _0800E31A
_0800E07E:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800E162
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r2, [r2, #2]
	cmp r0, #0
	bge _0800E162
	mov r4, sb
	ldrh r0, [r4]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	mov r1, sb
	ldrh r0, [r1, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E118
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E0EC
	ldrh r2, [r2]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #0xb
	bls _0800E0EC
	cmp r1, #4
	bhi _0800E0EC
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r6, #2]
_0800E0EC:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E118
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E118
	b _0800E328
_0800E118:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E12C
	b _0800E320
_0800E12C:
	mov r3, sl
	ldrh r0, [r3]
	add r2, sp, #0xc
	strh r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	subs r0, #0x10
	strh r0, [r2, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E150
	b _0800E320
_0800E150:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E450
	b _0800E31A
_0800E162:
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0800E23E
	mov r4, r8
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, #0
	ble _0800E23E
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E1FA
	mov r4, sl
	ldrh r0, [r4]
	subs r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E1CE
	ldrh r2, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #4
	bhi _0800E1CE
	cmp r1, #0xb
	bls _0800E1CE
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r6, #2]
_0800E1CE:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E1FA
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E1FA
	b _0800E328
_0800E1FA:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E20E
	b _0800E320
_0800E20E:
	mov r1, sl
	ldrh r0, [r1]
	add r4, sp, #0xc
	strh r0, [r4]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E320
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	adds r2, r4, #0
	b _0800E300
_0800E23E:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800E320
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r2, [r2, #2]
	cmp r0, #0
	ble _0800E320
	mov r4, sb
	ldrh r0, [r4]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	mov r1, sb
	ldrh r0, [r1, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, r6, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E2D6
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #0x10
	add r1, sp, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800E2AC
	ldrh r2, [r2]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	ldrh r2, [r3, #2]
	ands r1, r2
	cmp r0, #0xb
	bls _0800E2AC
	cmp r1, #0xb
	bls _0800E2AC
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r6, #2]
_0800E2AC:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E2D6
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E328
_0800E2D6:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r1, sp, #8
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E320
	mov r3, sl
	ldrh r0, [r3]
	add r2, sp, #0xc
	strh r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r0, #0x10
	strh r0, [r2, #2]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #1
_0800E300:
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E320
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sb
	add r2, sp, #8
	mov r3, r8
	bl sub_0800E4A0
_0800E31A:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E328
_0800E320:
	movs r0, #0
	mov r4, r8
	strh r0, [r4]
	strh r0, [r4, #2]
_0800E328:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
