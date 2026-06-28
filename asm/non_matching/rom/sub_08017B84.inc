	.syntax unified
sub_08017B84:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	str r1, [sp]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r3, #0xa
	bne _08017BE2
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	b _08017C10
_08017BE2:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x1f
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
_08017C10:
	adds r2, r5, #0
	movs r3, #0x1f
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r3, sl
	ldr r5, [sp]
	movs r0, #0
	mov sl, r0
	mov r1, sb
	lsls r0, r1, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	str r2, [sp, #4]
	ldr r4, [sp, #0xc]
	lsls r4, r4, #0x10
	str r4, [sp, #8]
	asrs r6, r0, #0x10
	movs r7, #0x1f
	mov ip, r7
_08017C3C:
	ldr r1, [r5]
	lsls r2, r1, #0x1b
	lsrs r0, r2, #0x1b
	adds r0, r0, r6
	adds r4, r1, #0
	cmp r0, #0x1e
	ble _08017C54
	ldrb r0, [r3]
	mov r1, ip
	orrs r0, r1
	strb r0, [r3]
	b _08017C7C
_08017C54:
	lsrs r0, r2, #0x1b
	adds r0, r0, r6
	cmp r0, #0
	bge _08017C68
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _08017C7C
_08017C68:
	lsrs r0, r2, #0x1b
	add r0, sb
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08017C7C:
	lsls r1, r4, #0x16
	lsrs r0, r1, #0x1b
	ldr r7, [sp, #4]
	asrs r2, r7, #0x10
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017C94
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	b _08017CB8
_08017C94:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017CA8
	ldrh r1, [r3]
	ldr r0, _08017CA4
	ands r0, r1
	b _08017CBA
	.align 2, 0
_08017CA4: .4byte 0xFFFFFC1F
_08017CA8:
	lsrs r1, r1, #0x1b
	add r1, r8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _08017CD4
	ands r0, r2
_08017CB8:
	orrs r0, r1
_08017CBA:
	strh r0, [r3]
	lsls r1, r4, #0x11
	lsrs r0, r1, #0x1b
	ldr r4, [sp, #8]
	asrs r2, r4, #0x10
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017CD8
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017D04
	.align 2, 0
_08017CD4: .4byte 0xFFFFFC1F
_08017CD8:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017CEC
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	b _08017D04
_08017CEC:
	lsrs r0, r1, #0x1b
	ldr r7, [sp, #0xc]
	adds r0, r0, r7
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017D04:
	adds r3, #2
	adds r5, #2
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bls _08017C3C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
