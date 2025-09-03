	.syntax unified
sub_08039A74:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, sp
	strh r1, [r0]
	add r6, sp, #4
	ldr r0, _08039B1C
	ldr r1, _08039B20
	adds r1, r1, r0
	mov sl, r1
	ldrh r2, [r1]
	adds r0, r6, #0
	mov r1, r8
	bl sub_08002634
	adds r7, r4, #0
	mov r8, r5
	mov r1, sp
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	cmp r4, sb
	bhs _08039B0C
	adds r5, r1, #0
_08039ACA:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08039AEA
	ldrh r0, [r5]
	cmp r0, #0
	bne _08039AEA
	mov r0, sb
	subs r0, #1
	cmp r4, r0
	beq _08039AEA
	ldrh r0, [r6]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	beq _08039B00
_08039AEA:
	ldrh r0, [r6]
	adds r1, r7, #0
	mov r2, r8
	ldr r3, [sp, #0x18]
	bl sub_080088AC
	movs r0, #1
	strh r0, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08039B00:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, #2
	cmp r4, sb
	blo _08039ACA
_08039B0C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039B1C: .4byte gSomeBlend
_08039B20: .4byte 0x00011C80
	.syntax divided
