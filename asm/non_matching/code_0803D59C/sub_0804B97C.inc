	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _0804BA24
	adds r6, r7, #0
	adds r6, #0x74
	movs r0, #0xe8
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0xae
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, #0x74
	adds r5, r7, r0
	adds r0, r5, #0
	movs r1, #0x3c
	movs r2, #0x28
	bl sub_08051080
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #0
	bl sub_08050F88
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	movs r3, #8
	bl sub_080511F8
	adds r0, r6, #0
	movs r1, #3
	movs r2, #3
	movs r3, #8
	bl sub_080511F8
	mov r0, r8
	movs r1, #7
	movs r2, #3
	movs r3, #8
	bl sub_080511F8
	mov r0, sb
	movs r1, #3
	movs r2, #3
	movs r3, #8
	bl sub_080511F8
	adds r0, r7, #0
	movs r1, #0x10
	movs r2, #8
	bl sub_080510A4
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #8
	bl sub_080510A4
	mov r0, r8
	movs r1, #0x10
	movs r2, #8
	bl sub_080510A4
	mov r0, sb
	movs r1, #0x10
	movs r2, #8
	bl sub_080510A4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BA24: .4byte gUnknown_0201A55C
	.syntax divided
