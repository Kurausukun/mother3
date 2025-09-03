	.syntax unified
sub_0802E830:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0
	ldr r1, _0802E880
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r5, sp
	strh r2, [r5, #2]
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E874
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
_0802E874:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E880: .4byte 0xFFFF0000
	.syntax divided
