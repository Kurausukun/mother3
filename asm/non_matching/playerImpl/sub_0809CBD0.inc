	.syntax unified
sub_0809CBD0:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CCAC
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	bl ch_has_psi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CC9E
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	ble _0809CC9E
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CCB0
	adds r1, r1, r0
	ldr r0, _0809CCB4
	mov sb, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CC56:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CC96
	adds r1, r0, #0
	mov r0, r8
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809CC96
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bgt _0809CC96
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C248
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
_0809CC96:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CC56
_0809CC9E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CCAC: .4byte gCharStats
_0809CCB0: .4byte gLevelStatTable
_0809CCB4: .4byte gUnknown_02004F94
	.syntax divided
