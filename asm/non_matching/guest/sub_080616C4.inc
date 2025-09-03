	.syntax unified
sub_080616C4:
	push {r4, r5, lr}
	ldr r4, _08061744
	add sp, r4
	adds r5, r0, #0
	adds r1, r2, #0
	mov r0, sp
	bl GoodsMenu_ct
	mov r0, sp
	movs r1, #0
	bl sub_0807DE28
	cmp r0, #0
	bne _08061750
	mov r0, sp
	bl sub_0807E448
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061748
	ands r4, r1
	orrs r4, r0
	mov r0, sp
	bl sub_0807E448
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _0806174C
	ands r4, r1
	orrs r4, r0
	mov r0, sp
	bl sub_0807E448
	adds r2, r0, #0
	cmp r2, #0
	beq _08061752
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _08061752
	.align 2, 0
_08061744: .4byte 0xFFFFF948
_08061748: .4byte 0xFFFF0000
_0806174C: .4byte 0x0000FFFF
_08061750:
	movs r4, #0
_08061752:
	str r4, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_0807DCE8
	adds r0, r5, #0
	movs r3, #0xd7
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
