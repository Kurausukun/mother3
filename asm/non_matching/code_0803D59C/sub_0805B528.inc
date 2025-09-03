	.syntax unified
sub_0805B528:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r7, #0
	ldr r0, _0805B5E0
	mov sl, r0
	movs r1, #0
	mov sb, r1
_0805B53E:
	lsls r6, r7, #2
	adds r0, r6, r7
	lsls r0, r0, #4
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _0805B5E4
	adds r0, r0, r2
	ldrh r4, [r0, #2]
	mov r0, sp
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_0805BB34
	movs r0, #0x6c
	adds r5, r7, #0
	muls r5, r0, r5
	mov r1, sl
	adds r0, r5, r1
	adds r1, r4, #0
	bl sub_0805C458
	movs r4, #0
	adds r2, r7, #1
	mov r8, r2
_0805B56E:
	adds r0, r4, r5
	ldr r1, _0805B5E8
	adds r0, r0, r1
	mov r2, sb
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bls _0805B56E
	movs r0, #0x6c
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r2, _0805B5EC
	adds r0, r1, r2
	mov r2, sb
	str r2, [r0]
	movs r4, #0
	adds r0, r6, r7
	lsls r0, r0, #4
	adds r0, r0, r7
	lsls r5, r0, #2
	ldr r3, _0805B5F0
	adds r7, r1, #0
	ldr r6, _0805B5E0
_0805B5A0:
	lsls r0, r4, #1
	adds r0, r0, r5
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805B5BA
	adds r2, r0, #0
	adds r0, r7, r6
	adds r1, r4, #0
	str r3, [sp, #8]
	bl sub_0805B5F4
	ldr r3, [sp, #8]
_0805B5BA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0805B5A0
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xf
	bls _0805B53E
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B5E0: .4byte gCharStats
_0805B5E4: .4byte gLevelStatTable
_0805B5E8: .4byte gUnknown_0200414C
_0805B5EC: .4byte gUnknown_02004148
_0805B5F0: .4byte gLevelStatTable2
	.syntax divided
