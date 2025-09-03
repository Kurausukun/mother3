	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	mov r8, r0
	adds r0, #0x40
	str r0, [sp, #0x10]
	ldr r0, _08011974
	ldr r1, _08011978
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080119DA
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	bl sub_0801AD84
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_0801AE18
	str r0, [sp, #0xc]
	ldr r0, [r4]
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1f
	str r1, [sp, #8]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	mov sl, r0
	movs r6, #0
	ldr r3, [r7]
	mov sb, r3
_08011928:
	ldr r1, [sp, #0xc]
	adds r0, r1, r6
	ldrb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r1, sb
	ands r2, r1
	mov ip, r0
	cmp r2, #0
	beq _0801197C
	adds r0, r3, #4
	adds r2, r7, r0
	lsls r4, r6, #1
	mov r3, r8
	adds r5, r4, r3
	ldr r3, [r2]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	ldr r0, [sp]
	adds r2, r0, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #8]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r1, sl
	orrs r2, r1
	strh r2, [r5]
	adds r1, r4, #0
	b _08011984
	.align 2, 0
_08011974: .4byte gGame
_08011978: .4byte 0x000067C5
_0801197C:
	lsls r1, r6, #1
	mov r3, r8
	adds r0, r1, r3
	strh r2, [r0]
_08011984:
	mov r0, ip
	ldrb r3, [r0, #2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r0, sb
	ands r2, r0
	cmp r2, #0
	beq _080119C8
	adds r0, r3, #4
	adds r2, r7, r0
	ldr r3, [sp, #0x10]
	adds r4, r1, r3
	ldr r3, [r2]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	ldr r0, [sp]
	adds r2, r0, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #8]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r1, sl
	orrs r2, r1
	strh r2, [r4]
	b _080119CE
_080119C8:
	ldr r3, [sp, #0x10]
	adds r0, r1, r3
	strh r2, [r0]
_080119CE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08011928
	b _08011A30
_080119DA:
	ldr r1, [r4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1c
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
	adds r7, r0, #0
	movs r6, #0
_080119EC:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0801ADA0
	adds r2, r0, #0
	cmp r2, #0
	beq _08011A06
	lsls r0, r6, #1
	add r0, r8
	adds r1, r4, #0
	bl sub_08011A40
_08011A06:
	adds r2, r6, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0801ADA0
	adds r2, r0, #0
	cmp r2, #0
	beq _08011A26
	lsls r0, r6, #1
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	adds r1, r4, #0
	bl sub_08011A40
_08011A26:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _080119EC
_08011A30:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
