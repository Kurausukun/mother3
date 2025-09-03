	.syntax unified
sub_08032E20:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	mov r0, sp
	strh r3, [r0]
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r1, _08032E90
	ldr r2, _08032E94
	adds r0, r1, r2
	ldrh r0, [r0]
	mov sl, r1
	cmp r0, #0
	beq _08032EC6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #0
	cmp r4, r5
	bhs _08032EBC
	ldr r7, _08032E98
	mov sb, r7
	ldr r0, _08032E9C
	add r0, sl
	mov r8, r0
_08032E6A:
	lsls r0, r2, #3
	mov r1, sb
	adds r3, r0, r1
	add r0, r8
	mov r7, ip
	strh r7, [r0]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #2]
	strh r6, [r0, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08032EA0
	ldrh r0, [r3]
	movs r7, #0xc0
	lsls r7, r7, #2
	b _08032EA6
	.align 2, 0
_08032E90: .4byte gSomeBlend
_08032E94: .4byte 0x000121B0
_08032E98: .4byte gUnknown_030038F0
_08032E9C: .4byte 0x00011DA0
_08032EA0:
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #1
_08032EA6:
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	blo _08032E6A
_08032EBC:
	ldr r1, _08032ED8
	add r1, sl
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08032EC6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032ED8: .4byte 0x000121B4
	.syntax divided
