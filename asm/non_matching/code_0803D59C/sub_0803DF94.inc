	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r7, _0803E00C
	ldr r0, _0803E010
	adds r4, r7, r0
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	bl sub_0803E2E4
	bl nullsub_7
	bl sub_08001960
	bl sub_0803E50C
	ldrb r1, [r4]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1f
	mov sl, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
	ldr r3, _0803E014
	cmp r6, r3
	bgt _0803E024
	ldr r0, _0803E018
	cmp r6, r0
	blt _0803E024
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x10
	ldr r1, _0803E01C
	adds r2, r7, r1
	ldrh r1, [r2]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803E020
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	b _0803E034
	.align 2, 0
_0803E00C: .4byte gUnknown_0200F920
_0803E010: .4byte 0x00006478
_0803E014: .4byte 0x0000FFFF
_0803E018: .4byte 0x0000FFFE
_0803E01C: .4byte 0x00006470
_0803E020: .4byte 0x00006472
_0803E024:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	ldr r0, _0803E084
	ldr r1, _0803E088
	adds r0, r0, r1
	strh r5, [r0]
_0803E034:
	movs r7, #0
	ldr r0, _0803E08C
	mov r8, r0
	movs r1, #2
	rsbs r1, r1, #0
	add r1, r8
	mov sb, r1
_0803E042:
	bl sub_0803E260
	bl sub_08001960
	bl sub_0803E50C
	adds r7, #1
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E094
	cmp r7, #5
	bls _0803E042
	ldr r4, _0803E090
	adds r0, r4, #0
	bl sub_0800164C
	ldrh r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803E042
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _0803E084
	cmp r5, #0
	beq _0803E0B0
	b _0803E042
	.align 2, 0
_0803E084: .4byte gUnknown_0200F920
_0803E088: .4byte 0x00006470
_0803E08C: .4byte gUnknown_02015D92
_0803E090: .4byte gUnknown_02018CC8
_0803E094:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, _0803E0AC
	cmp r6, #0
	beq _0803E0B0
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0803E042
	.align 2, 0
_0803E0AC: .4byte gUnknown_0200F920
_0803E0B0:
	ldr r0, _0803E0E4
	adds r3, r3, r0
	mov r1, sl
	lsls r2, r1, #1
	ldrb r1, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	bl sub_0803E2B0
	ldr r0, _0803E0E8
	bl sub_080499A4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E0E4: .4byte 0x00006478
_0803E0E8: .4byte gUnknown_0201AEF8
	.syntax divided
