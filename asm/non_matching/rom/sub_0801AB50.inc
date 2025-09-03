	.syntax unified
sub_0801AB50:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r0, #0
	bl get_obj_direct
	adds r7, r0, #0
	mov r4, sp
	mov r1, sp
	bl sub_08036BEC
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	adds r0, r7, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldr r1, _0801ACC8
	mov r2, sp
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801AB8A
	b _0801ACC4
_0801AB8A:
	ldrh r1, [r7]
	mov r0, sp
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	ldrh r6, [r7, #2]
	adds r1, r1, r6
	strh r1, [r4, #2]
	adds r0, r7, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x11
	subs r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #5
	bl get_obj_direct
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _0801ACCC
	ldr r1, _0801ACD0
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _0801AC4E
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov sb, r5
	adds r5, r1, #0
	adds r2, r3, #0
	adds r2, #0xac
_0801ABDA:
	ldrb r1, [r2, #0x10]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0801AC40
	ldrb r0, [r2, #0x1e]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AC40
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801AC00
	ldrb r0, [r2, #0x1f]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801AC40
_0801AC00:
	ldrb r0, [r2, #0x1c]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0801AC40
	mov r0, sp
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _0801AC1A
	rsbs r1, r1, #0
_0801AC1A:
	adds r0, r3, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	add r0, r8
	cmp r1, r0
	bge _0801AC40
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov r6, ip
	subs r1, r6, r1
	cmp r1, #0
	bge _0801AC3A
	rsbs r1, r1, #0
_0801AC3A:
	add r0, sb
	cmp r1, r0
	blt _0801ACC4
_0801AC40:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #0xd0
	adds r3, #0xd0
	cmp r4, r5
	blo _0801ABDA
_0801AC4E:
	mov r4, sp
	adds r0, r7, #0
	mov r1, sp
	bl sub_08036BEC
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	adds r5, r7, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	ldrh r1, [r1]
	ldrh r2, [r4, #2]
	bl sub_0801AF00
	adds r4, r0, #0
	adds r6, r5, #0
	cmp r4, #0
	beq _0801ACA8
	mov r5, sp
_0801AC7C:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801ACC4
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ACC4
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	adds r0, r4, #0
	bl sub_0801AFA4
	adds r4, r0, #0
	cmp r4, #0
	bne _0801AC7C
_0801ACA8:
	adds r0, r7, #0
	mov r1, sp
	bl sub_08036BEC
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #8
	mov r2, sp
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801ACD4
_0801ACC4:
	movs r0, #0
	b _0801AD30
	.align 2, 0
_0801ACC8: .4byte 0x04000001
_0801ACCC: .4byte gGame
_0801ACD0: .4byte 0x00008370
_0801ACD4:
	ldr r0, _0801AD40
	ldr r1, _0801AD44
	adds r6, r0, r1
	ldrh r0, [r6]
	bl sub_0801B0C4
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AD2E
	add r5, sp, #4
_0801ACE8:
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	ldr r2, _0801AD48
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r4, #7]
	lsls r0, r0, #4
	strh r0, [r5, #2]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1a
	adds r0, #0x10
	strh r0, [r5, #4]
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r5, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ACC4
	ldrh r0, [r6]
	adds r1, r4, #0
	bl sub_0801B0F8
	adds r4, r0, #0
	cmp r4, #0
	bne _0801ACE8
_0801AD2E:
	movs r0, #1
_0801AD30:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801AD40: .4byte gGame
_0801AD44: .4byte 0x000067AC
_0801AD48: .4byte 0xFFFF0000
	.syntax divided
