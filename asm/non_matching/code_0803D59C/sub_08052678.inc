	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x30
	adds r1, r0, #0
	movs r2, #0
	add r0, sp, #0x10
	mov r8, r0
	movs r3, #0
_0805268C:
	mov r4, sp
	adds r0, r4, r2
	strb r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0805268C
	movs r3, #0
	movs r2, #0
	movs r6, #0x3c
	adds r6, r6, r1
	mov ip, r6
	adds r1, #0x4c
	mov sb, r1
	mov r5, r8
	mov r4, sb
_080526AE:
	adds r0, r6, r2
	ldrb r1, [r0]
	cmp r1, #0
	beq _080526CE
	mov r7, sp
	adds r0, r7, r3
	strb r1, [r0]
	lsls r1, r3, #1
	adds r1, r5, r1
	lsls r0, r2, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080526CE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _080526AE
	movs r2, #0
	mov r5, ip
	mov r4, sb
	mov r3, r8
_080526E0:
	adds r1, r5, r2
	mov r6, sp
	adds r0, r6, r2
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
	bls _080526E0
	add sp, #0x30
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
