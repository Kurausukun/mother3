	.syntax unified
sub_0801097C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, _080109C0
	lsls r0, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _080109C4
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _080109C4
	movs r0, #0x10
	mov sl, r0
	movs r6, #0x10
	b _080109EA
	.align 2, 0
_080109C0: .4byte gGame
_080109C4:
	ldr r0, _080109DC
	ldr r1, _080109E0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080109E4
	movs r2, #0x10
	mov sl, r2
	movs r6, #0x10
	b _080109EA
	.align 2, 0
_080109DC: .4byte gGame
_080109E0: .4byte 0x000067C4
_080109E4:
	movs r0, #0x10
	mov sl, r0
	movs r6, #0xb
_080109EA:
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r6
	bhs _08010A18
_080109F2:
	mov r1, r8
	adds r2, r1, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r1, sb
	movs r3, #0
	bl sub_08010F58
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _080109F2
_08010A18:
	ldr r0, _08010A38
	lsls r1, r7, #1
	ldr r2, _08010A3C
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010A38: .4byte gSomeBlend
_08010A3C: .4byte 0x00002C90
	.syntax divided
