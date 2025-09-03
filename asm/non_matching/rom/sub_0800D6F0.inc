	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	mov sb, r2
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	mov r8, r0
	ldr r1, [sp, #0x24]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	adds r6, r0, #0
	cmp r6, #0
	beq _0800D7B8
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	cmp r1, r0
	bne _0800D74E
	adds r6, r7, #0
	adds r6, #0xbd
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D77A
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D7FA
	adds r0, r7, #0
	mov r1, sb
	b _0800D7B0
_0800D74E:
	adds r6, r7, #0
	adds r6, #0xbd
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D77A
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	adds r2, r4, #0
	bl sub_0801AA1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D782
_0800D77A:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	b _0800D806
_0800D782:
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D79A
	adds r0, r7, #0
	mov r1, sb
	b _0800D7B0
_0800D79A:
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D7FA
	adds r0, r7, #0
	mov r1, r8
_0800D7B0:
	adds r2, r4, #0
	bl sub_0800D814
	b _0800D7FA
_0800D7B8:
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	cmp r1, r0
	bne _0800D7D0
	adds r0, r7, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	b _0800D7EC
_0800D7D0:
	adds r7, #0xbd
	ldrb r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D7F6
	ldrb r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
_0800D7EC:
	bl sub_0801AB38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D7FA
_0800D7F6:
	strh r6, [r4]
	strh r6, [r4, #2]
_0800D7FA:
	ldr r0, [r4]
	cmp r0, #0
	beq _0800D804
	movs r0, #1
	b _0800D806
_0800D804:
	movs r0, #0
_0800D806:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
