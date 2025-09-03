    .syntax unified
sub_080ADB54:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r1, _080ADBB4 @ =gUnknown_080F8E78
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #2
	ble _080ADB7E
	mov r1, sp
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1, #8]
_080ADB7E:
	movs r0, #0xa6
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	ble _080ADB92
	mov r1, sp
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1, #6]
_080ADB92:
	mov r4, sp
	mov r5, sp
	adds r5, #2
	add r6, sp, #4
	movs r0, #6
	add r0, sp
	mov sb, r0
	add r7, sp, #8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	cmp r0, #0x1e
	bge _080ADBB8
	ldrh r0, [r4]
	b _080ADBD4
	.align 2, 0
_080ADBB4: .4byte gUnknown_080F8E78
_080ADBB8:
	cmp r0, #0x37
	bge _080ADBC0
	ldrh r0, [r5]
	b _080ADBD4
_080ADBC0:
	cmp r0, #0x55
	bge _080ADBC8
	ldrh r0, [r6]
	b _080ADBD4
_080ADBC8:
	cmp r0, #0x5a
	bge _080ADBD2
	mov r1, sb
	ldrh r0, [r1]
	b _080ADBD4
_080ADBD2:
	ldrh r0, [r7]
_080ADBD4:
	mov r1, r8
	bl getMonsterSkill
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    .syntax divided
