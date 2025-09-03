	.syntax unified
sub_08002634:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r1, r7, #2
	ldr r0, _08002688
	adds r4, r1, r0
	movs r5, #0
	cmp r5, r7
	bhs _0800267C
_08002656:
	ldr r1, [r4]
	adds r0, r6, #0
	bl Divide
	lsls r1, r5, #1
	add r1, sb
	add r0, r8
	strh r0, [r1]
	ldr r1, [r4]
	adds r0, r6, #0
	bl sub_08002FD4
	adds r6, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #4
	cmp r5, r7
	blo _08002656
_0800267C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002688: .4byte gUnknown_08CDB95C
	.syntax divided
