	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r3, _0801501C
	movs r6, #1
	movs r5, #0x19
	movs r4, #0
	movs r2, #0
	ldr r0, _08015020
	adds r0, r0, r3
	mov sl, r0
	mov sb, r6
	ldr r1, _08015024
	mov r8, r1
_08015002:
	movs r1, #0
	adds r2, #1
	adds r7, r6, #1
	str r7, [sp]
	adds r0, r5, #1
	mov ip, r0
_0801500E:
	adds r0, r4, #0
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	bne _08015028
	adds r0, r6, r1
	b _0801502A
	.align 2, 0
_0801501C: .4byte gUnknown_02016078
_08015020: .4byte 0x000131C0
_08015024: .4byte 0xFFFFC000
_08015028:
	adds r0, r5, r1
_0801502A:
	mov r7, r8
	orrs r0, r7
	strh r0, [r3]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #0x1f
	bls _0801500E
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	mov r7, ip
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r2, #0x1f
	bls _08015002
	movs r1, #0xa0
	lsls r1, r1, #1
	mov r0, sl
	bl memclear
	ldr r1, _08015088
	add r1, sl
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	ldr r2, _0801508C
	add r2, sl
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015088: .4byte 0xFFFEFA80
_0801508C: .4byte 0xFFFFEFAA
	.syntax divided
