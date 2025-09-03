	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r5, _080048A4
	movs r4, #0
	strh r4, [r5]
	mov r2, sp
	ldr r1, _080048A8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #2
	add r0, sp
	mov sb, r0
	ldr r2, _080048AC
	ldrh r0, [r2]
	mov r3, sb
	strh r0, [r3]
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r5]
	ldr r5, _080048B0
	ldrb r7, [r5]
	ldr r1, _080048B4
	adds r0, r5, r1
	movs r6, #0
	strh r6, [r0]
	ldr r3, _080048B8
	adds r1, r5, r3
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080048BC
	adds r0, r5, r1
	strb r4, [r0]
	subs r3, #5
	adds r0, r5, r3
	strb r4, [r0]
	movs r0, #0
	bl sub_08007D94
	ldr r0, _080048C0
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
	ldr r4, _080048C4
	adds r0, r4, #0
	bl sub_080019A4
	ldr r0, _080048C8
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	bl sub_08019EE8
	subs r4, #0x50
	ldrh r0, [r4]
	strh r6, [r4]
	ldrh r0, [r4, #2]
	strh r6, [r4, #2]
	ldrh r0, [r4, #4]
	strh r6, [r4, #4]
	movs r0, #2
	strb r0, [r5]
	bl sub_08013D38
	mov r1, r8
	ldrh r0, [r1]
	movs r5, #0x96
	lsls r5, r5, #1
	mov r6, sb
	cmp r0, #4
	bne _08004836
	adds r5, #0x3c
_08004836:
	movs r4, #0
	cmp r4, r5
	bhs _08004852
_0800483C:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0800483C
_08004852:
	ldr r4, _080048B0
	movs r0, #2
	strb r0, [r4]
	bl sub_08013EB8
	ldr r3, _080048CC
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080048E0
	movs r0, #1
	strb r0, [r4]
	ldr r1, _080048D0
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	bne _080048E2
	ldr r0, _080048D4
	ldr r3, _080048D8
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	ldr r1, _080048DC
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #1
	bl sub_080106CC
	bl sub_0801084C
	bl sub_0802781C
	b _080048E2
	.align 2, 0
_080048A4: .4byte 0x04000208
_080048A8: .4byte 0x04000200
_080048AC: .4byte 0x04000004
_080048B0: .4byte gGame
_080048B4: .4byte 0x00005962
_080048B8: .4byte 0x00005960
_080048BC: .4byte 0x0000595C
_080048C0: .4byte gUnknown_03005314
_080048C4: .4byte gUnknown_02016078
_080048C8: .4byte 0x00008462
_080048CC: .4byte 0x00008494
_080048D0: .4byte 0x00009480
_080048D4: .4byte gSomeBlend
_080048D8: .4byte 0x000121B8
_080048DC: .4byte 0x000067AC
_080048E0:
	strb r7, [r4]
_080048E2:
	ldr r2, _0800492C
	ldr r1, _08004930
	ldr r3, _08004934
	adds r0, r1, r3
	ldrh r0, [r0]
	ldrh r3, [r2]
	movs r3, #0
	strh r0, [r2]
	ldr r4, _08004938
	adds r0, r1, r4
	ldrh r0, [r0]
	ldrh r4, [r2, #2]
	strh r0, [r2, #2]
	ldr r0, _0800493C
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	ldr r2, _08004940
	strh r3, [r2]
	ldr r1, _08004944
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08004948
	ldrh r0, [r6]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800492C: .4byte gSomeBlend
_08004930: .4byte gGame
_08004934: .4byte 0x0000679C
_08004938: .4byte 0x0000679E
_0800493C: .4byte 0x000067A0
_08004940: .4byte 0x04000208
_08004944: .4byte 0x04000200
_08004948: .4byte 0x04000004
	.syntax divided
