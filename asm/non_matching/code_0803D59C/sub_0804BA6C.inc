	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r7, _0804BB0C
	adds r4, r7, #0
	adds r4, #0x74
	adds r5, r7, #0
	adds r5, #0xe8
	movs r0, #0xae
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	adds r0, r7, #0
	movs r1, #0x22
	movs r2, #0x1c
	bl sub_08051080
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x3c
	bl sub_08051080
	adds r0, r5, #0
	movs r1, #0x22
	movs r2, #0x5e
	bl sub_08051080
	adds r0, r6, #0
	movs r1, #0x22
	movs r2, #0x7e
	bl sub_08051080
	mov r0, r8
	movs r1, #0x90
	movs r2, #0x1a
	bl sub_08051080
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	mov r1, sb
	ldrb r0, [r1, #9]
	movs r1, #2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1, #9]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB0C: .4byte gUnknown_0201A55C
	.syntax divided
