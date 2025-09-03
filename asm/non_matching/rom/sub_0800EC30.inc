	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r4, #0
	beq _0800ECBC
	ldr r0, _0800EC8C
	mov r8, r0
	ldr r7, _0800EC90
_0800EC46:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, #6
	beq _0800EC5A
	ldr r0, [r4]
	ldr r1, _0800EC94
	ands r0, r1
	cmp r0, #0
	bne _0800ECAC
_0800EC5A:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800EC70
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800ECAC
_0800EC70:
	ldrb r2, [r4]
	lsls r0, r2, #0x1a
	lsrs r1, r0, #0x1b
	cmp r1, #6
	bne _0800EC98
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800ECA8
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800ECAC
	b _0800ECA8
	.align 2, 0
_0800EC8C: .4byte gUnknown_02034D38
_0800EC90: .4byte gUnknown_0200E094
_0800EC94: .4byte 0x01000040
_0800EC98:
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	bl sub_080251F4
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800ECAC
_0800ECA8:
	movs r0, #1
	b _0800ECBE
_0800ECAC:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800EBD8
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EC46
_0800ECBC:
	movs r0, #0
_0800ECBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
