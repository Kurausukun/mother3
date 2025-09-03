	.syntax unified
sub_08052D1C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08052DAC
	lsls r1, r7, #1
	ldr r3, _08052DB0
	adds r0, r2, r3
	adds r6, r1, r0
	ldrh r5, [r6]
	mov sl, r2
	cmp r5, #0
	beq _08052D9A
	lsls r1, r7, #7
	movs r0, #0xd4
	lsls r0, r0, #6
	add r0, sl
	adds r3, r1, r0
	movs r4, #0
	cmp r4, r5
	bhs _08052D8C
	ldr r0, _08052DB4
	mov r8, r0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov sb, r1
	adds r5, r6, #0
_08052D60:
	mov r0, ip
	movs r1, #0x1c
	ldrsh r2, [r0, r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0, #0xc]
	cmp r2, r0
	bge _08052D7E
	ldrb r1, [r3, #2]
	mov r0, sb
	ands r0, r1
	strb r0, [r3, #2]
_08052D7E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #4
	ldrh r0, [r5]
	cmp r4, r0
	blo _08052D60
_08052D8C:
	ldr r0, _08052DB8
	add r0, sl
	ldrb r2, [r0]
	mov r0, ip
	adds r1, r7, #0
	bl sub_080532E0
_08052D9A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052DAC: .4byte gSomeBlend
_08052DB0: .4byte 0x00004270
_08052DB4: .4byte gPsiData
_08052DB8: .4byte 0x00004266
	.syntax divided
