	.syntax unified
sub_0801084C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	movs r7, #0
	mov r8, sp
_08010862:
	ldr r3, _08010960
	cmp r4, #0
	bne _08010870
	ldrb r0, [r3, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08010946
_08010870:
	cmp r4, #1
	bne _0801087C
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08010946
_0801087C:
	cmp r4, #0
	bne _080108C4
	ldr r1, _08010964
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080108C4
	subs r0, #2
	cmp r1, r0
	blt _080108C4
	ldr r0, _08010968
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801096C
	adds r0, r3, r1
	strh r4, [r0]
	ldr r2, _08010970
	adds r0, r3, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r4, [r0]
_080108C4:
	ldr r6, _08010960
	lsls r0, r4, #2
	adds r1, r0, r6
	ldrb r1, [r1, #0x1c]
	lsrs r1, r1, #6
	adds r5, r0, #0
	cmp r1, #3
	bne _080108FC
	adds r0, r4, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bne _080108FC
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, _0801096C
	adds r1, r0, r2
	strh r7, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r7, [r1]
	ldr r1, _08010974
	adds r0, r0, r1
	strh r7, [r0]
_080108FC:
	ldr r6, _08010960
	adds r0, r5, r6
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010932
	adds r0, r4, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bne _08010932
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, _08010970
	adds r1, r0, r2
	strh r7, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r7, [r1]
	ldr r1, _08010978
	adds r0, r0, r1
	strh r7, [r0]
_08010932:
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801A594
	mov r2, r8
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	adds r0, r4, #0
	bl sub_0801097C
_08010946:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _08010862
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010960: .4byte gGame
_08010964: .4byte 0x000067AC
_08010968: .4byte 0x000067C4
_0801096C: .4byte 0x000058B0
_08010970: .4byte 0x000058B2
_08010974: .4byte 0x000058B8
_08010978: .4byte 0x000058BA
	.syntax divided
