	.syntax unified
sub_0800EDCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r4, #0
	bne _0800EDE2
	b _0800EE3C
_0800EDDE:
	movs r0, #1
	b _0800EE3E
_0800EDE2:
	ldr r0, _0800EE48
	mov r8, r0
	ldr r7, _0800EE4C
_0800EDE8:
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800EE2C
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800EE2C
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800EE10
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800EE2C
_0800EE10:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, #6
	bne _0800EE2C
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #6
	bl sub_080251F4
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EDDE
_0800EE2C:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800EBD8
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EDE8
_0800EE3C:
	movs r0, #0
_0800EE3E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EE48: .4byte gUnknown_02034D38
_0800EE4C: .4byte gUnknown_0200E094
	.syntax divided
