	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x30
	adds r3, r0, #0
	movs r2, #0
	add r5, sp, #0x10
	movs r1, #0
	adds r4, r5, #0
_0802A588:
	mov r6, sp
	adds r0, r6, r2
	strb r1, [r0]
	lsls r0, r2, #1
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A588
	movs r4, #0
	movs r2, #0
	movs r7, #0x3c
	adds r7, r7, r3
	mov ip, r7
	adds r3, #0x4c
	mov r8, r3
	mov sb, ip
	adds r6, r5, #0
_0802A5B0:
	mov r0, sb
	adds r3, r0, r2
	ldrb r1, [r3]
	cmp r1, #0
	beq _0802A5CE
	mov r7, sp
	adds r0, r7, r4
	strb r1, [r0]
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r3]
	strh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802A5CE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A5B0
	movs r2, #0
	mov r6, ip
	mov r4, r8
	adds r3, r5, #0
_0802A5E0:
	adds r1, r6, r2
	mov r5, sp
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	lsls r0, r2, #1
	adds r1, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A5E0
	add sp, #0x30
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
