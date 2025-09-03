	.syntax unified
sub_08049B70:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08049C38
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r3, _08049C3C
	adds r1, r0, r3
	movs r3, #1
	strb r3, [r1]
	ldr r4, _08049C40
	adds r1, r0, r4
	strb r2, [r1]
	ldr r7, _08049C44
	adds r1, r0, r7
	strb r3, [r1]
	ldr r3, _08049C48
	adds r1, r0, r3
	strb r2, [r1]
	subs r4, #0x22
	adds r1, r0, r4
	strb r2, [r1]
	subs r7, #0xb
	adds r1, r0, r7
	strb r2, [r1]
	adds r3, #0x14
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #0x14
	adds r1, r0, r4
	strb r2, [r1]
	adds r7, #0xc
	adds r1, r0, r7
	strb r2, [r1]
	movs r1, #0xd8
	lsls r1, r1, #7
	adds r1, r1, r0
	mov sb, r1
	ldr r2, _08049C4C
	adds r6, r0, r2
	str r6, [r1]
	subs r3, #0x21
	adds r1, r0, r3
	ldr r4, _08049C50
	adds r5, r0, r4
	str r5, [r1]
	subs r7, #0x15
	adds r7, r7, r0
	mov r8, r7
	ldr r1, _08049C54
	adds r2, r0, r1
	str r2, [r7]
	adds r3, #4
	adds r1, r0, r3
	ldr r7, _08049C58
	adds r4, r0, r7
	str r4, [r1]
	adds r3, #4
	adds r1, r0, r3
	ldr r7, _08049C5C
	adds r3, r0, r7
	str r3, [r1]
	ldr r7, _08049C60
	adds r1, r0, r7
	str r2, [r1]
	subs r7, #0x1c
	adds r1, r0, r7
	str r4, [r1]
	ldr r4, _08049C64
	adds r1, r0, r4
	str r3, [r1]
	adds r7, #0x24
	adds r1, r0, r7
	str r2, [r1]
	ldr r3, _08049C68
	adds r1, r0, r3
	str r6, [r1]
	adds r4, #8
	adds r1, r0, r4
	str r5, [r1]
	adds r7, #4
	adds r1, r0, r7
	str r2, [r1]
	ldr r2, _08049C6C
	adds r1, r0, r2
	mov r3, sb
	str r3, [r1]
	adds r4, #0x24
	adds r0, r0, r4
	mov r7, r8
	str r7, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049C38: .4byte 0x00006C10
_08049C3C: .4byte 0x00006C24
_08049C40: .4byte 0x00006C34
_08049C44: .4byte 0x00006C40
_08049C48: .4byte 0x00006C11
_08049C4C: .4byte 0x00006C48
_08049C50: .4byte 0x000073C8
_08049C54: .4byte 0x00007148
_08049C58: .4byte 0x00006C70
_08049C5C: .4byte 0x000073E0
_08049C60: .4byte 0x00006C30
_08049C64: .4byte 0x00006C18
_08049C68: .4byte 0x00006C1C
_08049C6C: .4byte 0x00006C28
	.syntax divided
