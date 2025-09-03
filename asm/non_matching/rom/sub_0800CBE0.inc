	.syntax unified
sub_0800CBE0:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	mov r1, sp
	bl sub_08036BEC
	movs r2, #1
	ldr r1, _0800CC30
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	add r4, sp, #4
	strh r2, [r4, #2]
	adds r0, r6, #0
	mov r1, sp
	bl sub_08035B78
	lsls r0, r0, #0x10
	adds r7, r4, #0
	cmp r0, #0
	beq _0800CC9E
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0800CC3C
	mov r0, sp
	movs r1, #0
	ldrsh r4, [r0, r1]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CC34
	mov r0, sp
	ldrh r1, [r0]
	b _0800CC3E
	.align 2, 0
_0800CC30: .4byte 0xFFFF0000
_0800CC34:
	bl sub_0801A5EC
	subs r1, r0, #1
	b _0800CC3E
_0800CC3C:
	movs r1, #0
_0800CC3E:
	mov r0, sp
	strh r1, [r0]
	mov r5, sp
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800CC6A
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800CC62
	ldrh r0, [r5, #2]
	b _0800CC6C
_0800CC62:
	bl sub_0801A604
	subs r0, #1
	b _0800CC6C
_0800CC6A:
	movs r0, #0
_0800CC6C:
	mov r4, sp
	strh r0, [r4, #2]
	adds r0, r6, #0
	mov r1, sp
	adds r2, r7, #0
	movs r3, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CC9E
	ldrh r1, [r6]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	adds r0, r6, #0
	mov r1, sp
	bl sub_0800E860
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CC9E
	movs r0, #1
	b _0800CCA0
_0800CC9E:
	movs r0, #0
_0800CCA0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
