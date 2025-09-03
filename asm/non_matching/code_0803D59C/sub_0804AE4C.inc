	.syntax unified
sub_0804AE4C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r5, _0804AEB8
	movs r0, #0x74
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xe8
	adds r1, r1, r5
	mov sb, r1
	adds r2, r5, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x74
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804AEBC
	adds r2, r5, r0
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r7, #4]
	cmp r2, #0
	bne _0804AE92
	ldr r0, _0804AEC0
	ldrh r1, [r0]
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
_0804AE92:
	ldr r0, [r7, #4]
	cmp r0, #0x50
	bne _0804AEA2
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl sub_08050F2C
_0804AEA2:
	ldr r1, [r7, #4]
	cmp r1, #0xb0
	bne _0804AEC4
	mov r0, sb
	movs r1, #7
	movs r2, #1
	movs r3, #0x50
	bl sub_080511F8
	b _0804AF22
	.align 2, 0
_0804AEB8: .4byte gUnknown_0201A55C
_0804AEBC: .4byte 0x00000157
_0804AEC0: .4byte gUnknown_02001050
_0804AEC4:
	cmp r1, #0xa4
	bne _0804AEDC
	adds r0, r5, #0
	movs r1, #9
	movs r2, #2
	bl sub_08050F2C
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0xff
	strb r0, [r1]
	b _0804AF22
_0804AEDC:
	movs r0, #0xa8
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804AF22
	mov r0, sb
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r5, #0
	adds r0, #0x60
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0804AF18
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804AF1C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	b _0804AF22
	.align 2, 0
_0804AF18: .4byte 0x000004FC
_0804AF1C:
	ldr r0, _0804AF3C
	ldrh r1, [r0]
	strh r2, [r0]
_0804AF22:
	ldr r4, _0804AF3C
	ldrh r0, [r4]
	cmp r0, #0
	beq _0804AF7E
	ldrh r6, [r4, #2]
	cmp r6, #0
	bne _0804AF76
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0804AF40
	cmp r0, #1
	beq _0804AF5C
	b _0804AF76
	.align 2, 0
_0804AF3C: .4byte gUnknown_02001050
_0804AF40:
	adds r0, r5, #0
	movs r1, #0x87
	bl sub_08050F88
	mov r0, r8
	movs r1, #0x85
	bl sub_08050F88
	movs r0, #0xbc
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	b _0804AF76
_0804AF5C:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	movs r0, #0x3c
	strh r0, [r4, #2]
	strh r6, [r4, #4]
_0804AF76:
	ldr r1, _0804AFB8
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
_0804AF7E:
	ldr r1, [r7, #4]
	ldr r0, _0804AFBC
	cmp r1, r0
	bls _0804AF98
	ldr r0, _0804AFC0
	ldr r1, _0804AFC4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804AF98
	movs r0, #3
	bl sub_0804B6E8
_0804AF98:
	adds r0, r5, #0
	bl sub_08050D80
	mov r0, r8
	bl sub_08050D80
	mov r0, sb
	bl sub_08050D80
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AFB8: .4byte gUnknown_02001050
_0804AFBC: .4byte 0x0000014F
_0804AFC0: .4byte gSomeBlend
_0804AFC4: .4byte 0x00004A30
	.syntax divided
