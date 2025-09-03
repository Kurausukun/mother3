    .syntax unified
sub_0800100C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	add r0, sp, #8
	movs r1, #1
	strh r1, [r0]
	adds r4, r0, #0
	b _08001034
_0800102A:
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #1
	strh r0, [r4]
_08001034:
	ldr r0, [sp, #0x10]
	movs r1, #9
	bl __udivsi3
	ldrh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0800102A
	adds r1, r4, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800111E
	mov r0, sp
	adds r0, #0xa
	str r0, [sp, #0x14]
	mov r8, r1
_08001056:
	ldrh r0, [r1]
	ldr r1, [sp, #0x14]
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bhs _08001108
	add r0, sp, #0xc
	mov sb, r0
	mov ip, r1
	mov r6, sb
_0800106C:
	mov r1, ip
	ldrh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	mov r4, r8
	ldrh r1, [r2]
	ldrh r0, [r4]
	cmp r1, r0
	blo _080010F8
	ldr r3, _08001130 @ =0x040000D4
	ldr r0, _08001134 @ =0x80000004
	mov sl, r0
	adds r7, r6, #0
_08001086:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r5
	subs r0, #8
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bls _080010F8
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3]
	mov r1, sp
	str r1, [r3, #4]
	mov r2, sl
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r6]
	adds r2, r4, #0
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3]
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3, #4]
	mov r0, sl
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, sp
	str r1, [r3]
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	str r0, [r3, #4]
	mov r0, sl
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r6]
	ldrh r0, [r4]
	subs r1, r1, r0
	strh r1, [r6]
	ldrh r1, [r7]
	ldrh r0, [r2]
	cmp r1, r0
	bhs _08001086
_080010F8:
	mov r1, ip
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	blo _0800106C
_08001108:
	mov r1, r8
	ldrh r0, [r1]
	movs r1, #3
	bl __udivsi3
	mov r2, r8
	strh r0, [r2]
	mov r1, r8
	ldrh r0, [r2]
	cmp r0, #0
	bne _08001056
_0800111E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001130: .4byte 0x040000D4
_08001134: .4byte 0x80000004
    .syntax divided
