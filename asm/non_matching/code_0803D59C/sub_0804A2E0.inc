	.syntax unified
sub_0804A2E0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0804A380
	bl sub_0800289C
	adds r6, r0, #0
	ldr r4, _0804A384
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r0, #0
	ldr r1, _0804A388
	mov sl, r1
	ldr r2, _0804A38C
	mov sb, r2
_0804A312:
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x40
	movs r1, #0x40
	adds r1, r1, r5
	mov ip, r1
	adds r0, #1
	mov r8, r0
_0804A322:
	lsls r0, r4, #1
	adds r2, r0, r5
	adds r0, r0, r6
	ldrh r3, [r0]
	strh r3, [r2]
	ldr r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	adds r1, #0x80
	mov r0, sb
	ands r1, r0
	mov r0, sl
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1f
	bls _0804A322
	adds r6, r7, #0
	mov r5, ip
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0804A312
	ldr r2, _0804A390
	ldr r1, _0804A394
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A380: .4byte gMenuData
_0804A384: .4byte gUnknown_02016078
_0804A388: .4byte 0xFFFFFC00
_0804A38C: .4byte 0x000003FF
_0804A390: .4byte gSomeBlend
_0804A394: .4byte 0x00002C94
	.syntax divided
