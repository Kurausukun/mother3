	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #4
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_08001B54
	movs r6, #0
	ldrh r0, [r5]
	ldr r1, _08022444
	cmp r0, r1
	beq _08022468
	ldr r0, _08022448
	mov r8, r0
	mov sb, r1
	adds r7, r1, #0
_08022420:
	ldrh r0, [r5]
	cmp r0, r8
	bls _0802244C
	ldrh r0, [r5]
	adds r1, r5, #2
	adds r2, r4, #0
	bl sub_08021B64
	adds r4, r0, #0
	ldrh r0, [r5]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r5, r5, r0
	b _08022452
	.align 2, 0
_08022444: .4byte 0x0000FFFF
_08022448: .4byte 0x0000FEFF
_0802244C:
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
_08022452:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xc
	bls _08022462
	mov r0, sb
	strh r0, [r4]
	b _08022468
_08022462:
	ldrh r0, [r5]
	cmp r0, r7
	bne _08022420
_08022468:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
