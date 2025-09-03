	.syntax unified
sub_08037530:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _08037574
	ldrh r0, [r0]
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov sb, r0
	adds r0, r1, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r0, [r0]
	lsrs r5, r0, #1
	ldrh r0, [r7, #2]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r1, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803757C
	b _080375F0
	.align 2, 0
_08037574: .4byte gUnknown_02001028
_08037578:
	movs r0, #0
	b _080375F2
_0803757C:
	movs r0, #5
	bl get_obj_direct
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _08037600
	ldr r1, _08037604
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _080375F0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov sl, r5
	adds r5, r1, #0
	adds r2, r3, #0
	adds r2, #0xaa
_080375A0:
	adds r0, r4, #5
	cmp sb, r0
	beq _080375E2
	ldrb r1, [r2, #0x12]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _080375E2
	movs r6, #0
	ldrsh r1, [r7, r6]
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _080375C0
	rsbs r1, r1, #0
_080375C0:
	ldrh r0, [r2]
	add r0, r8
	cmp r1, r0
	bge _080375E2
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldrh r0, [r2, #2]
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov r6, ip
	subs r1, r6, r1
	cmp r1, #0
	bge _080375DC
	rsbs r1, r1, #0
_080375DC:
	add r0, sl
	cmp r1, r0
	blt _08037578
_080375E2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #0xd0
	adds r3, #0xd0
	cmp r4, r5
	blo _080375A0
_080375F0:
	movs r0, #1
_080375F2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037600: .4byte gGame
_08037604: .4byte 0x00008370
	.syntax divided
