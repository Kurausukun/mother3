	.syntax unified
sub_08052964:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08052A50
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r4, #0
	bl memclear
	ldr r0, _08052A54
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	adds r5, r4, #0
	movs r6, #0
	ldr r2, _08052A58
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08052A40
	mov r8, sp
	mov r7, sp
	adds r7, #2
	movs r1, #1
	mov sb, r1
	movs r2, #0x41
	rsbs r2, r2, #0
	mov sl, r2
_080529A6:
	lsls r0, r6, #1
	ldr r1, _08052A58
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	movs r1, #0
	bl sub_08002A90
	mov r2, r8
	strh r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08002A90
	strh r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _080529D2
	ldrh r0, [r7]
	cmp r0, #0
	beq _08052A24
_080529D2:
	strb r4, [r5]
	ldrb r0, [r5, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #2]
	mov r2, r8
	ldrh r0, [r2]
	mov r1, sb
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	ldrh r2, [r7]
	lsls r2, r2, #7
	movs r1, #0x7f
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #3]
	adds r0, r4, #0
	bl sub_0805CE5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5, #2]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #2]
	ldr r1, _08052A5C
	ldr r2, _08052A60
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r5, #4
_08052A24:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xfe
	bhi _08052A40
	lsls r0, r6, #1
	ldr r1, _08052A58
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080529A6
_08052A40:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052A50: .4byte gUnknown_02019828
_08052A54: .4byte 0x00000A7C
_08052A58: .4byte gBattleMemoryEnemyLayout
_08052A5C: .4byte gSomeBlend
_08052A60: .4byte 0x0000427C
	.syntax divided
