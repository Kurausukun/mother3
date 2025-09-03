	.syntax unified
sub_0800CDD0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	mov sl, r1
	mov r8, r2
	add r0, sp, #8
	strh r3, [r0]
	mov r0, sb
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r5, r0, #0x1f
	cmp r5, #0
	beq _0800CDF8
	movs r0, #1
	b _0800D0DE
_0800CDF8:
	mov r0, sl
	ldrh r3, [r0]
	ldr r2, _0800CE94
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0xc]
	mov r0, sl
	ldrh r1, [r0, #2]
	add r4, sp, #0xc
	strh r1, [r4, #2]
	ldr r0, [sp, #0x10]
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x10]
	add r2, sp, #0x10
	strh r1, [r2, #2]
	mov r1, sp
	adds r1, #0xa
	strh r5, [r1]
	mov r0, sb
	adds r0, #0x85
	ldrb r3, [r0]
	adds r6, r4, #0
	adds r7, r2, #0
	adds r5, r1, #0
	str r0, [sp, #0x18]
	cmp r3, #0
	bne _0800CE5E
	ldr r0, _0800CE98
	ldr r1, _0800CE9C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800CE5E
	ldr r1, _0800CEA0
	ldr r2, _0800CEA4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800CE5E
	ldr r3, _0800CEA8
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800CE5E
	movs r0, #1
	strh r0, [r5]
_0800CE5E:
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldrh r4, [r1, #2]
	cmp r0, #0
	bge _0800CEAC
	movs r3, #2
	ldrsh r0, [r6, r3]
	adds r0, #1
	movs r2, #0xf
	ands r0, r2
	cmp r0, #7
	bgt _0800CE7E
	ldrh r0, [r6, #2]
	subs r0, #7
	strh r0, [r6, #2]
_0800CE7E:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800CEC6
	ldrh r1, [r6, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0xa
	bgt _0800CEC6
	adds r0, r1, #0
	subs r0, #0xa
	b _0800CEC4
	.align 2, 0
_0800CE94: .4byte 0xFFFF0000
_0800CE98: .4byte gSomeBlend
_0800CE9C: .4byte 0x0001ED10
_0800CEA0: .4byte gGame
_0800CEA4: .4byte 0x0000829B
_0800CEA8: .4byte 0x000082B6
_0800CEAC:
	cmp r0, #0
	ble _0800CEC6
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800CEC6
	ldrh r1, [r6, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	ble _0800CEC6
	adds r0, r1, #0
	adds r0, #8
_0800CEC4:
	strh r0, [r6, #2]
_0800CEC6:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldrh r2, [r1]
	cmp r0, #0
	bge _0800CF00
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r0, #1
	movs r3, #0xf
	ands r0, r3
	cmp r0, #7
	bgt _0800CEE8
	ldrh r0, [r6]
	subs r0, #7
	add r1, sp, #0xc
	strh r0, [r1]
_0800CEE8:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800CF1A
	ldrh r1, [r6]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #7
	bgt _0800CF1A
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6]
	b _0800CF1A
_0800CF00:
	cmp r0, #0
	ble _0800CF1A
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	ble _0800CF1A
	ldrh r0, [r6]
	adds r0, #7
	add r1, sp, #0xc
	strh r0, [r1]
_0800CF1A:
	cmp r2, #0
	bne _0800CF78
	ldrh r0, [r7]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #6
	bhi _0800CF70
	subs r0, #8
	strh r0, [r7]
	cmp r4, #0
	beq _0800CF84
	ldrh r2, [r6]
	ldr r1, _0800CF6C
	ldr r0, [sp, #0x14]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x14]
	add r5, sp, #0xc
	ldrh r0, [r5, #2]
	add r4, sp, #0x14
	strh r0, [r4, #2]
	ldrh r0, [r4]
	subs r0, #7
	strh r0, [r4]
	mov r0, sb
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0801AB00
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CF78
	ldrh r0, [r4]
	strh r0, [r6]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	b _0800CF78
	.align 2, 0
_0800CF6C: .4byte 0xFFFF0000
_0800CF70:
	cmp r1, #8
	bls _0800CF78
	adds r0, #8
	strh r0, [r7]
_0800CF78:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r4, [r2, #2]
	cmp r0, #0
	bne _0800CFA0
_0800CF84:
	ldrh r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bhi _0800CF94
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r7, #2]
_0800CF94:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800CFA0
	ldrh r0, [r6]
	strh r0, [r7]
_0800CFA0:
	ldr r1, _0800CFE0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800D000
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	cmp r0, #4
	bls _0800D000
	ldr r3, _0800CFE4
	adds r0, r1, r3
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0800D000
	ldrh r1, [r7, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bhi _0800D000
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldrh r2, [r2]
	cmp r0, #0
	ble _0800CFE8
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _0800CFE8
	adds r0, r1, #0
	b _0800CFFC
	.align 2, 0
_0800CFE0: .4byte gGame
_0800CFE4: .4byte 0x00008382
_0800CFE8:
	lsls r0, r2, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bge _0800D000
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _0800D000
	ldrh r0, [r7, #2]
_0800CFFC:
	subs r0, #8
	strh r0, [r7, #2]
_0800D000:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _0800D024
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D01C
	ldrh r0, [r6]
	b _0800D026
_0800D01C:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D026
_0800D024:
	movs r0, #0
_0800D026:
	strh r0, [r6]
	add r5, sp, #0xc
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D050
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D048
	ldrh r0, [r5, #2]
	b _0800D052
_0800D048:
	bl sub_0801A604
	subs r0, #1
	b _0800D052
_0800D050:
	movs r0, #0
_0800D052:
	strh r0, [r6, #2]
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _0800D078
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D070
	ldrh r0, [r7]
	b _0800D07A
_0800D070:
	bl sub_0801A5EC
	subs r0, #1
	b _0800D07A
_0800D078:
	movs r0, #0
_0800D07A:
	strh r0, [r7]
	add r5, sp, #0x10
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800D0A4
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800D09C
	ldrh r0, [r5, #2]
	b _0800D0A6
_0800D09C:
	bl sub_0801A604
	subs r0, #1
	b _0800D0A6
_0800D0A4:
	movs r0, #0
_0800D0A6:
	strh r0, [r7, #2]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D0C6
	str r7, [sp]
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r6, #0
	bl sub_0800D6F0
	b _0800D0DA
_0800D0C6:
	str r7, [sp]
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r6, #0
	bl sub_0800D0F0
_0800D0DA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0800D0DE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
