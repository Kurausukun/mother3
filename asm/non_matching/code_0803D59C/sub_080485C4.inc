	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	add r4, sp, #4
	ldr r0, _08048634
	ldr r2, _08048638
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_08002634
	adds r7, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	cmp r3, r5
	bhs _08048628
	mov r4, sp
	subs r0, r5, #1
	mov ip, r0
_080485FC:
	lsls r0, r3, #1
	mov r2, r8
	adds r1, r0, r2
	strh r6, [r1]
	ldrh r1, [r4]
	ldrh r2, [r7]
	cmp r1, #0
	bne _08048614
	cmp r3, ip
	beq _08048614
	cmp r2, r6
	beq _0804861C
_08048614:
	add r0, r8
	strh r2, [r0]
	movs r0, #1
	strh r0, [r4]
_0804861C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, #2
	cmp r3, r5
	blo _080485FC
_08048628:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048634: .4byte gSomeBlend
_08048638: .4byte 0x0000C59A
	.syntax divided
