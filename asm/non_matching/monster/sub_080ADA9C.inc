    .syntax unified
sub_080ADA9C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080ADAC6
	movs r0, #0x9d
	lsls r0, r0, #1
	b _080ADB3E
_080ADAC6:
	ldr r1, _080ADB18 @ =gUnknown_080F8E82
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #2
	ble _080ADAE2
	mov r1, sp
	ldr r0, _080ADB1C @ =0x00000139
	strh r0, [r1, #8]
_080ADAE2:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080ADAF6
	mov r1, sp
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1, #6]
_080ADAF6:
	mov r5, sp
	mov r6, sp
	adds r6, #2
	add r7, sp, #4
	movs r0, #6
	add r0, sp
	mov sb, r0
	add r1, sp, #8
	mov r8, r1
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	cmp r0, #0x19
	bge _080ADB20
	ldrh r0, [r5]
	b _080ADB3E
	.align 2, 0
_080ADB18: .4byte gUnknown_080F8E82
_080ADB1C: .4byte 0x00000139
_080ADB20:
	cmp r0, #0x46
	bge _080ADB28
	ldrh r0, [r6]
	b _080ADB3E
_080ADB28:
	cmp r0, #0x5a
	bge _080ADB30
	ldrh r0, [r7]
	b _080ADB3E
_080ADB30:
	cmp r0, #0x5f
	bge _080ADB3A
	mov r2, sb
	ldrh r0, [r2]
	b _080ADB3E
_080ADB3A:
	mov r1, r8
	ldrh r0, [r1]
_080ADB3E:
	adds r1, r4, #0
	bl getMonsterSkill
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
