	.syntax unified
sub_08058884:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r4, r1, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r3, #8]
	strh r0, [r1]
	adds r1, #8
	ldrh r0, [r3, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xc]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xe]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x10]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x12]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x1a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x14]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x16]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x1e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x18]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x20]
	strh r0, [r1]
	adds r1, #0x32
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #4]
	strh r0, [r1]
	subs r1, #0xc
	ldrh r0, [r3, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r3, #0x26]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x28]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x2a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x2c]
	strh r0, [r1]
	ldrh r1, [r3, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #2
	bne _0805898E
	ldr r1, _08058A24
	ldrh r0, [r3, #0x30]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x32]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x34]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x36]
	strh r0, [r1]
	adds r1, #0xa
	ldrh r0, [r3, #0x38]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x3a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x3c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x3e]
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, [r3, #0x40]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x40]
	ldr r2, _08058A28
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x44]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x44]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #0xa
	ldr r0, [r3, #0x48]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x48]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x4c]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x4c]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
_0805898E:
	ldr r1, _08058A2C
	adds r0, r4, r1
	ldrb r2, [r0]
	adds r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldr r2, _08058A30
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r2, #0x9c
	lsls r2, r2, #6
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r3, #8]
	ldr r0, _08058A34
	ands r0, r1
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	mov r1, sp
	ldrh r0, [r3, #0x1a]
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08058A38
	mov ip, r0
	adds r7, r3, #0
	adds r7, #0x12
	movs r5, #0
	adds r6, r3, #0
	adds r6, #0x1a
_080589D2:
	lsls r0, r4, #1
	adds r1, r7, r0
	ldrh r2, [r1]
	strh r5, [r1]
	adds r0, r6, r0
	ldrh r1, [r0]
	strh r5, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080589D2
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08058A1C
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r3, #0x1a]
	strh r0, [r3, #0x1a]
	ldr r4, _08058A3C
	ldr r2, _08058A40
	ldr r0, _08058A44
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #1
	strh r0, [r4]
	ldrh r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	ldrh r3, [r2, #8]
	orrs r0, r1
	strh r0, [r2, #8]
_08058A1C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058A24: .4byte 0x04000020
_08058A28: .4byte 0x0FFF0000
_08058A2C: .4byte 0x00002C4C
_08058A30: .4byte 0x00002C4E
_08058A34: .4byte 0x000080FF
_08058A38: .4byte gUnknown_02015DC0
_08058A3C: .4byte gUnknown_03004AF0
_08058A40: .4byte gSomeBlend
_08058A44: .4byte 0x00004814
	.syntax divided
