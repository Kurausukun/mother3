	.syntax unified
sub_08002C5C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	cmp r6, #0
	beq _08002C7C
	cmp r2, #0
	bne _08002C8A
_08002C7C:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	strh r0, [r7, #2]
	strh r0, [r7]
	movs r0, #0
	b _08002D0C
_08002C8A:
	adds r0, r4, #0
	bl sub_08002F8C
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	bl sub_08002FA4
	mov r8, r0
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_08002D88
	strh r0, [r7]
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08002D88
	strh r0, [r7, #2]
	rsbs r5, r5, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08002D88
	strh r0, [r7, #4]
	adds r0, r4, #0
	bl sub_08002DB0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_08002D88
	strh r0, [r7, #6]
	movs r0, #1
_08002D0C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
