	.syntax unified
sub_080066B4:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r3, _08006720
	ldr r0, _08006724
	mov sb, r0
	adds r0, r3, #0
	movs r1, #0x20
	bl sub_080019DC
	mov r0, sb
	movs r1, #0x80
	bl sub_080019DC
	ldr r2, _08006728
	ldr r1, _0800672C
	adds r0, r2, r1
	ldr r5, [r0]
	adds r1, #8
	adds r0, r2, r1
	ldr r3, [r0]
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	adds r1, #8
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	adds r1, #6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006734
	ldr r1, _08006730
	adds r0, r2, r1
	ldrb r7, [r0]
	subs r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	lsls r0, r1, #0xa
	adds r3, r3, r0
	lsls r1, r1, #6
	add r8, r1
	add sb, r1
	b _08006736
	.align 2, 0
_08006720: .4byte 0x06008020
_08006724: .4byte 0x06006000
_08006728: .4byte gSomeBlend
_0800672C: .4byte 0x00011D04
_08006730: .4byte 0x00011D15
_08006734:
	movs r7, #8
_08006736:
	movs r4, #0
	cmp r4, r7
	bhs _08006760
	movs r6, #0xf0
	lsls r6, r6, #2
_08006740:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r6, #0
	str r3, [sp]
	bl sub_08001A14
	adds r5, r5, r6
	ldr r3, [sp]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _08006740
_08006760:
	mov r0, r8
	mov r1, sb
	movs r2, #0x1e
	adds r3, r7, #0
	bl sub_08007318
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
