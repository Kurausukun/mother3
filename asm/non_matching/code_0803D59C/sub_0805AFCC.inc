	.syntax unified
sub_0805AFCC:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r1, _0805B018
	movs r0, #0
	strh r0, [r1]
	ldr r6, _0805B01C
	movs r1, #0
	str r1, [r6]
	ldr r0, _0805B020
	str r1, [r0]
	ldr r0, _0805B024
	str r1, [r0]
	add r4, sp, #0x30
	strh r1, [r4]
	movs r5, #0
	ldr r1, _0805B028
	movs r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	add r0, sp, #0x10
	movs r2, #0
	movs r3, #0x1e
	bl sub_080031F0
	ldrh r0, [r4]
	adds r7, r4, #0
	cmp r0, #0
	bne _0805B0B4
	movs r4, #0
_0805B00A:
	cmp r5, #1
	beq _0805B04E
	cmp r5, #1
	bgt _0805B02C
	cmp r5, #0
	beq _0805B032
	b _0805B096
	.align 2, 0
_0805B018: .4byte gUnknown_0200105C
_0805B01C: .4byte gUnknown_02001060
_0805B020: .4byte gUnknown_02001064
_0805B024: .4byte gUnknown_02001068
_0805B028: .4byte gUnknown_02018CD8
_0805B02C:
	cmp r5, #2
	beq _0805B07C
	b _0805B096
_0805B032:
	add r0, sp, #0x10
	movs r1, #0
	movs r2, #0x20
	bl sub_0805B138
	add r0, sp, #0x10
	ldrb r1, [r0, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B096
	movs r5, #1
	str r4, [r6]
	b _0805B096
_0805B04E:
	ldr r1, _0805B074
	ldr r0, [r1]
	cmp r0, #0x12
	bls _0805B096
	movs r5, #2
	str r4, [r1]
	movs r0, #3
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	add r0, sp, #0x10
	ldr r1, _0805B078
	movs r2, #0
	movs r3, #0x1e
	bl sub_080031F0
	b _0805B096
	.align 2, 0
_0805B074: .4byte gUnknown_02001060
_0805B078: .4byte gUnknown_02018CD8
_0805B07C:
	add r0, sp, #0x10
	movs r1, #0
	movs r2, #0x20
	bl sub_0805B138
	add r0, sp, #0x10
	ldrb r1, [r0, #0x1d]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0805B096
	strh r2, [r7]
_0805B096:
	ldr r0, _0805B0C4
	bl sub_0800164C
	bl sub_0805B0DC
	bl sub_08001960
	bl sub_0805AE64
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	ldrh r0, [r7]
	cmp r0, #0
	beq _0805B00A
_0805B0B4:
	ldr r0, _0805B0C8
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805B0CC
	movs r0, #0
	bl sub_0805AE4C
	b _0805B0D2
	.align 2, 0
_0805B0C4: .4byte gUnknown_02018CC8
_0805B0C8: .4byte gUnknown_0200105C
_0805B0CC:
	movs r0, #1
	bl sub_0805AE4C
_0805B0D2:
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
