	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080304F0
	ldr r2, _080304F4
	adds r1, r0, r2
	ldr r1, [r1]
	mov r8, r1
	adds r2, #4
	adds r1, r0, r2
	ldrh r7, [r1]
	movs r1, #0
	mov sb, r1
	ldr r2, _080304F8
	adds r6, r0, r2
	ldr r0, _080304FC
	mov sl, r0
_08030452:
	mov r0, sb
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08030500
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl sub_08036D18
	adds r5, r0, #0
	strh r4, [r6, #0xc]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r6, #0xe]
	strh r7, [r6, #0x14]
	mov r0, sb
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	strb r0, [r6, #0xf]
	ldr r0, _08030504
	strh r0, [r6, #0x10]
	movs r2, #0
	strb r2, [r6, #0x12]
	ldrh r0, [r6, #0xc]
	bl sub_08036D60
	str r0, [r6, #4]
	mov r0, r8
	str r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	ldrb r1, [r6, #0xf]
	bl sub_0803050C
	str r0, [r6]
	ldrb r1, [r5]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r1, r0, #5
	add r8, r1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r6, #0x38
	cmp r0, #5
	bls _08030452
	ldr r0, _080304F0
	ldr r2, _080304F4
	adds r1, r0, r2
	mov r2, r8
	str r2, [r1]
	ldr r1, _08030508
	adds r0, r0, r1
	strh r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080304F0: .4byte gGame
_080304F4: .4byte 0x00009D08
_080304F8: .4byte 0x00005AA0
_080304FC: .4byte gUnknown_08D2E044
_08030500: .4byte gUnknown_08D2E03C
_08030504: .4byte 0x0000FFFF
_08030508: .4byte 0x00009D0C
	.syntax divided
