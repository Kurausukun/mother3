	.syntax unified
sub_0800B7AC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800B828
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	mov r8, r0
	movs r1, #0
	mov sl, r1
	adds r0, r2, #0
	bl sub_080270D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270C8
	adds r6, r0, #0
	ldr r0, _0800B820
	ldr r2, _0800B824
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800B82C
	mov r3, sl
	strb r3, [r1]
	bl sub_08033CA0
	b _0800B82C
	.align 2, 0
_0800B820: .4byte gGame
_0800B824: .4byte 0x0000829B
_0800B828:
	mov r0, sp
	strh r2, [r0]
_0800B82C:
	ldr r3, _0800B8CC
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _0800B8D0
	adds r1, r1, r3
	mov sb, r1
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	adds r7, r3, #0
	cmp r0, #0
	beq _0800B85A
	b _0800B9F4
_0800B85A:
	cmp r6, #0
	beq _0800B860
	b _0800B9F4
_0800B860:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0800B8FE
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800B8FE
	ldr r1, _0800B8D4
	ldr r0, [sp, #8]
	ands r0, r1
	str r0, [sp, #8]
	add r4, sp, #8
	strh r6, [r4, #2]
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r4, #0
	bl sub_080344CC
	ldr r0, [sp, #8]
	mov r8, r4
	cmp r0, #0
	bne _0800B896
	b _0800BB3C
_0800B896:
	ldr r2, _0800B8D8
	adds r0, r7, r2
	strh r6, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B8E4
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r2, #0x10
	bl sub_0800CCA8
	ldr r0, _0800B8DC
	ldr r3, _0800B8E0
	adds r2, r0, r3
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	blt _0800B8CA
	b _0800BB3C
_0800B8CA:
	b _0800BAE8
	.align 2, 0
_0800B8CC: .4byte gGame
_0800B8D0: .4byte 0x000082B7
_0800B8D4: .4byte 0xFFFF0000
_0800B8D8: .4byte 0x000082AA
_0800B8DC: .4byte gSomeBlend
_0800B8E0: .4byte 0x0001ED10
_0800B8E4:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800B8F0
	b _0800BB3C
_0800B8F0:
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0800BB3C
_0800B8FE:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	add r7, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r1, r7, #0
	bl sub_080270A0
	ldr r6, _0800B964
	ldr r3, _0800B968
	adds r2, r6, r3
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0800B926
	ldr r0, _0800B96C
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
_0800B926:
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800B970
	ldr r1, _0800B974
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800B94A
	adds r0, r5, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800B97C
_0800B94A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0800C10C
	ldr r2, _0800B978
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800B960
	b _0800BB3C
_0800B960:
	b _0800B9D2
	.align 2, 0
_0800B964: .4byte gGame
_0800B968: .4byte 0x000082B7
_0800B96C: .4byte 0x0000829B
_0800B970: .4byte gSomeBlend
_0800B974: .4byte 0x0001ED10
_0800B978: .4byte 0x00008494
_0800B97C:
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	add r2, sp, #4
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	bl sub_0801A978
	str r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800B9D2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x88
	ldrh r1, [r1]
	adds r2, r5, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	movs r0, #1
	bl sub_08033AEC
_0800B9D2:
	ldr r0, _0800B9EC
	ldr r3, _0800B9F0
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B9E0
	b _0800BB3C
_0800B9E0:
	bl sub_08035414
	bl sub_080354CC
	b _0800BB3C
	.align 2, 0
_0800B9EC: .4byte gGame
_0800B9F0: .4byte 0x0000829B
_0800B9F4:
	ldr r0, _0800BA2C
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r5, #0
	adds r1, #0x9e
	movs r2, #0
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800BA30
	add r0, sp, #8
	strh r2, [r0]
	strh r2, [r0, #2]
	mov r8, r0
	b _0800BA6C
	.align 2, 0
_0800BA2C: .4byte 0x000082B7
_0800BA30:
	bl sub_0802B188
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BA3C
	b _0800BB3C
_0800BA3C:
	add r4, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080270A0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080343B8
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	strh r0, [r4, #2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	strh r0, [r4]
	mov r8, r4
_0800BA6C:
	adds r0, r5, #0
	adds r0, #0x8f
	strb r6, [r0]
	ldrb r0, [r0]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r4, _0800BAF4
	ldr r2, _0800BAF8
	adds r0, r4, r2
	mov r3, sl
	strh r3, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BB08
	ldr r0, [r4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800BAC8
	ldr r1, _0800BAFC
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0800BAC8
	mov r2, r8
	strh r1, [r2]
	strh r1, [r2, #2]
_0800BAC8:
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	add r1, sp, #8
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #0x10
	bl sub_0800CCA8
	ldr r0, _0800BB00
	ldr r3, _0800BB04
	adds r2, r0, r3
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0800BB20
_0800BAE8:
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0800BB3C
	.align 2, 0
_0800BAF4: .4byte gGame
_0800BAF8: .4byte 0x000082AA
_0800BAFC: .4byte 0x00009D10
_0800BB00: .4byte gSomeBlend
_0800BB04: .4byte 0x0001ED10
_0800BB08:
	ldr r1, _0800BB4C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800BB20
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0800BB20:
	ldr r3, _0800BB50
	mov r0, sp
	ldrh r0, [r0]
	ldr r2, _0800BB4C
	adds r3, r3, r2
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0800BB3C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB4C: .4byte 0x000082B7
_0800BB50: .4byte gGame
	.syntax divided
