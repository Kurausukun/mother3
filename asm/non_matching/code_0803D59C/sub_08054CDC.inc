	.syntax unified
sub_08054CDC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r0, #0x20]
	str r0, [sp, #8]
	mov r1, ip
	movs r7, #0x24
	ldrsh r1, [r1, r7]
	str r1, [sp, #0xc]
	movs r5, #0
	mov r6, ip
	adds r6, #0x34
_08054D06:
	lsls r0, r5, #1
	mov r7, sp
	adds r1, r7, r0
	adds r0, r6, r5
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08054D06
	cmp r2, #3
	bhi _08054D26
	lsls r0, r2, #1
	add r0, sp
	strh r3, [r0]
_08054D26:
	movs r0, #0
	str r0, [r4, #4]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x26]
	strh r0, [r4, #0x2c]
	movs r5, #0
	mov r0, ip
	ldrb r0, [r0]
	mov r8, r0
	movs r1, #0x28
	add r1, ip
	mov sb, r1
	movs r2, #0x29
	add r2, ip
	mov sl, r2
	mov r3, ip
	adds r3, #0x2a
	str r3, [sp, #0x10]
	mov r7, ip
	adds r7, #0x2b
	str r7, [sp, #0x14]
	mov r0, ip
	adds r0, #0x2c
	str r0, [sp, #0x18]
	ldr r7, _08054EEC
	movs r6, #0x6c
_08054D60:
	lsls r0, r5, #1
	mov r1, sp
	adds r3, r1, r0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r6, r1
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r1, r0
	ldr r2, [r4, #4]
	ldr r0, [r1]
	adds r2, r2, r0
	str r2, [r4, #4]
	ldrh r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x14]
	ldrh r1, [r4, #0xe]
	adds r0, r0, r1
	strh r0, [r4, #0xe]
	ldrh r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	ldrh r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	ldrh r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	ldrh r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2c]
	adds r0, r0, r3
	strh r0, [r4, #0x2c]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08054D60
	ldr r7, [sp, #8]
	adds r2, r7, r2
	ldr r1, _08054EF0
	cmp r2, r1
	ble _08054DF8
	adds r2, r1, #0
_08054DF8:
	str r2, [r4]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	cmp r0, r1
	ble _08054E08
	adds r0, r1, #0
_08054E08:
	movs r5, #0
	strh r0, [r4, #0xc]
	mov r0, r8
	bl sub_08001D58
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054E1C
	strh r5, [r4, #0xe]
	strh r5, [r4, #0xc]
_08054E1C:
	movs r7, #0x14
	ldrsh r0, [r4, r7]
	mov r1, sb
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08054E2C
	movs r0, #0xff
_08054E2C:
	strh r0, [r4, #0x12]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	mov r3, sl
	ldrb r3, [r3]
	adds r0, r0, r3
	cmp r0, #0xff
	ble _08054E3E
	movs r0, #0xff
_08054E3E:
	movs r1, #0
	strh r0, [r4, #0x18]
	movs r7, #0x20
	ldrsh r0, [r4, r7]
	ldr r2, [sp, #0x10]
	ldrb r2, [r2]
	adds r0, r0, r2
	cmp r0, #0xff
	ble _08054E52
	movs r0, #0xff
_08054E52:
	strh r0, [r4, #0x1e]
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	ldr r7, [sp, #0x14]
	ldrb r7, [r7]
	adds r0, r0, r7
	cmp r0, #0xff
	ble _08054E64
	movs r0, #0xff
_08054E64:
	strh r0, [r4, #0x24]
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	ldr r3, [sp, #0x18]
	ldrb r3, [r3]
	adds r0, r0, r3
	cmp r0, #0xff
	ble _08054E76
	movs r0, #0xff
_08054E76:
	strh r0, [r4, #0x2a]
	ldr r0, [r4]
	cmp r0, #0
	bgt _08054E82
	movs r0, #1
	str r0, [r4]
_08054E82:
	movs r7, #0xc
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08054E8C
	strh r1, [r4, #0xc]
_08054E8C:
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08054E96
	strh r1, [r4, #0x12]
_08054E96:
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08054EA0
	strh r1, [r4, #0x18]
_08054EA0:
	movs r7, #0x1e
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08054EAA
	strh r1, [r4, #0x1e]
_08054EAA:
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08054EB4
	strh r1, [r4, #0x24]
_08054EB4:
	movs r3, #0x2a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08054EBE
	strh r1, [r4, #0x2a]
_08054EBE:
	ldr r0, [r4]
	str r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0x28]
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x2e]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054EEC: .4byte gGoodsInfo
_08054EF0: .4byte 0x000003E7
	.syntax divided
