	.syntax unified
sub_0800BE04:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #0x14]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0800BE40
	adds r0, r4, #0
	bl sub_0800C030
	b _0800C020
_0800BE40:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BE70
	adds r0, r4, #0
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x10
	ldrh r3, [r2, #0xa]
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r4, #0
	bl sub_08002E8C
	ldr r1, _0800BE6C
	ldr r0, [sp, #0xc]
	ands r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r5, [r0, #2]
	b _0800BEE4
	.align 2, 0
_0800BE6C: .4byte 0xFFFF0000
_0800BE70:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1c
	mov r2, sp
	adds r2, #0xe
	add r1, sp, #0xc
	bl sub_080270A0
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0xbc
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800BEB4
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
_0800BEB4:
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800BEE4
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800BEE4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, [r4, #0x34]
	movs r1, #2
	ldrsh r0, [r0, r1]
	movs r1, #1
	cmp r0, #0x10
	ble _0800BEDA
	movs r1, #3
_0800BEDA:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0800BEE4:
	add r5, sp, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800BEF6
	b _0800C01A
_0800BEF6:
	movs r2, #0
	ldr r1, _0800BF9C
	ldr r0, [sp, #0x10]
	ands r0, r1
	str r0, [sp, #0x10]
	add r1, sp, #0x10
	strh r2, [r1, #2]
	ldr r2, _0800BFA0
	mov r8, r2
	ldr r0, _0800BFA4
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r4, #0
	adds r2, #0x85
	adds r7, r1, #0
	ldrb r2, [r2]
	cmp r0, r2
	bne _0800BFCC
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	cmp r2, #1
	bls _0800BF44
	add r0, sp, #0xc
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	add r0, sp, #0xc
	strh r1, [r0]
	movs r3, #2
	ldrsh r0, [r5, r3]
	muls r0, r2, r0
	strh r0, [r5, #2]
_0800BF44:
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	add r5, sp, #0x14
	adds r0, #0xa
	str r0, [sp]
	add r6, sp, #0x18
	str r6, [sp, #4]
	adds r0, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0800F99C
	mov r0, sb
	cmp r0, #0
	bne _0800BFAC
	ldr r3, _0800BFA8
	add r3, r8
	ldr r2, [r4, #0x34]
	ldrh r1, [r5]
	mov r8, r1
	ldrh r0, [r2, #2]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	strh r0, [r3]
	ldrh r1, [r5, #2]
	ldrh r0, [r2, #2]
	adds r5, r1, #0
	muls r5, r0, r5
	adds r0, r5, #0
	strh r0, [r3, #2]
	ldrh r1, [r2, #2]
	ldrh r0, [r6]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, #0
	strh r0, [r7]
	ldrh r1, [r2, #2]
	ldrh r0, [r6, #2]
	b _0800BFE0
	.align 2, 0
_0800BF9C: .4byte 0xFFFF0000
_0800BFA0: .4byte gGame
_0800BFA4: .4byte 0x000067B8
_0800BFA8: .4byte 0x000067A4
_0800BFAC:
	ldr r1, _0800BFC8
	add r1, r8
	ldrh r0, [r5]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsls r0, r0, #4
	strh r0, [r7]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	b _0800BFE6
	.align 2, 0
_0800BFC8: .4byte 0x000067A4
_0800BFCC:
	ldr r2, [r4, #0x34]
	ldrh r1, [r2, #2]
	add r0, sp, #0xc
	ldrh r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, #0
	strh r0, [r7]
	ldrh r1, [r2, #2]
	ldrh r0, [r5, #2]
_0800BFE0:
	adds r5, r1, #0
	muls r5, r0, r5
	adds r0, r5, #0
_0800BFE6:
	strh r0, [r7, #2]
	ldrh r0, [r7]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800C00A
	adds r1, r4, #0
	adds r1, #0xb6
	ldrh r0, [r7, #2]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0800C012
_0800C00A:
	ldrh r0, [r7, #2]
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
_0800C012:
	adds r0, r4, #0
	bl sub_080360E0
	b _0800C020
_0800C01A:
	adds r0, r4, #0
	bl sub_08035FE4
_0800C020:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
