	.syntax unified
sub_0809E3A4:
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	bl IsPlayer
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bne _0809E424
	movs r0, #0
	movs r1, #2
	bl randS32
	cmp r0, #1
	beq _0809E3F0
	cmp r0, #1
	bgt _0809E3D0
	cmp r0, #0
	beq _0809E3D6
	b _0809E596
_0809E3D0:
	cmp r0, #2
	beq _0809E40A
	b _0809E596
_0809E3D6:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x28
	b _0809E4D2
_0809E3F0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x29
	b _0809E4D2
_0809E40A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	mov r2, sp
	strb r5, [r2]
	ldr r4, [r1, #4]
	adds r1, r6, #0
	movs r2, #0x2a
	b _0809E4D2
_0809E424:
	adds r0, r6, #0
	bl dynaCastMonster
	adds r5, r0, #0
	cmp r5, #0
	bne _0809E432
	b _0809E596
_0809E432:
	movs r0, #0
	movs r1, #4
	bl randS32
	cmp r0, #4
	bls _0809E440
	b _0809E596
_0809E440:
	lsls r0, r0, #2
	ldr r1, _0809E44C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E44C: .4byte _0809E450
_0809E450:
	.4byte _0809E464
	.4byte _0809E480
	.4byte _0809E49C
	.4byte _0809E4B8
	.4byte _0809E4DA
_0809E464:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x20
	b _0809E4D2
_0809E480:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2c
	b _0809E4D2
_0809E49C:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2d
	b _0809E4D2
_0809E4B8:
	ldr r2, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	mov r3, sp
	movs r1, #1
	strb r1, [r3]
	ldr r4, [r2, #4]
	adds r1, r6, #0
	movs r2, #0x2e
_0809E4D2:
	movs r3, #0x64
	bl _call_via_r4
	b _0809E596
_0809E4DA:
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0809E564
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809E564
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r5, #0
	movs r1, #0x33
	movs r2, #0
	bl sub_08073E3C
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x9c
	lsls r2, r2, #2
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _0809E596
_0809E564:
	ldr r2, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r3, [r2, #4]
	adds r1, r4, r1
	movs r2, #0xec
	bl _call_via_r3
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_0809E596:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
