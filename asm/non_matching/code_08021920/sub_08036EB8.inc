	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sp
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0xbd
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r2, _08036F20
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1e
	strh r0, [r2]
	ldr r0, _08036F24
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	strh r1, [r0]
	cmp r5, #0
	beq _08036F2C
	ldr r0, _08036F28
	ldrh r1, [r5]
	strh r1, [r0]
	ldrh r1, [r5, #2]
	b _08036F3C
	.align 2, 0
_08036F20: .4byte gUnknown_02001024
_08036F24: .4byte gUnknown_02001026
_08036F28: .4byte gUnknown_02001018
_08036F2C:
	ldr r0, _08036F68
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r0]
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
_08036F3C:
	strh r1, [r0, #2]
	adds r3, r0, #0
	ldr r2, _08036F6C
	ldrh r0, [r6]
	strh r0, [r2]
	ldrh r0, [r6, #2]
	strh r0, [r2, #2]
	ldr r1, _08036F70
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r7, r2, #0
	cmp r0, #0
	beq _08036F78
	ldr r1, _08036F74
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	b _08036F80
	.align 2, 0
_08036F68: .4byte gUnknown_02001018
_08036F6C: .4byte gUnknown_0200101C
_08036F70: .4byte gUnknown_02001020
_08036F74: .4byte gUnknown_02001028
_08036F78:
	ldr r1, _08037000
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
_08036F80:
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, [r7]
	cmp r1, r0
	beq _08036FFC
	adds r0, r4, #0
	bl sub_08035FBC
	ldr r4, [r4, #0x34]
	movs r5, #0
_08036F94:
	adds r0, r4, #0
	mov r1, sb
	mov r2, r8
	bl sub_08037020
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08036FA6
	adds r4, #0x18
_08036FA6:
	ldr r6, _08037004
	ldr r0, [r6]
	ldr r1, _08037008
	ldr r2, [r1]
	adds r7, r1, #0
	cmp r0, r2
	beq _08036FFC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _08036F94
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08037010
	ldrh r1, [r6]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	ldr r3, _0803700C
	ldr r0, [sp, #4]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r1, [r6, #2]
	lsls r1, r1, #4
	add r0, sp, #4
	strh r1, [r0, #2]
	ldrh r2, [r7]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x10
	ldr r1, [sp, #8]
	ands r1, r3
	orrs r1, r2
	str r1, [sp, #8]
	ldrh r2, [r7, #2]
	lsls r2, r2, #4
	add r1, sp, #8
	strh r2, [r1, #2]
	bl sub_08036830
	cmp r0, #0x1f
	bhi _08037010
_08036FFC:
	movs r0, #1
	b _08037012
	.align 2, 0
_08037000: .4byte gUnknown_02001028
_08037004: .4byte gUnknown_02001020
_08037008: .4byte gUnknown_0200101C
_0803700C: .4byte 0xFFFF0000
_08037010:
	movs r0, #0
_08037012:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
