	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r6, _08024E34
	ldr r1, _08024E38
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08024E3C
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _08024E40
	adds r4, r6, r3
	adds r0, r4, #0
	bl sub_08009E38
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009F10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08024E58
	ldr r0, _08024E44
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_08024F74
	ldr r2, _08024E48
	adds r1, r6, r2
	ldr r0, _08024E4C
	str r0, [r1]
	ldr r3, _08024E50
	adds r1, r6, r3
	ldr r0, _08024E54
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08024EEC
	movs r7, #0
	b _08024E60
	.align 2, 0
_08024E34: .4byte gSomeBlend
_08024E38: .4byte 0x00011960
_08024E3C: .4byte 0x00011C8E
_08024E40: .4byte 0x00005778
_08024E44: .4byte 0x00004B1C
_08024E48: .4byte 0x000053B0
_08024E4C: .4byte 0x06008000
_08024E50: .4byte 0x000053B4
_08024E54: .4byte 0x06006000
_08024E58:
	ldr r1, _08024ED4
	adds r0, r6, r1
	bl sub_0802503C
_08024E60:
	ldr r2, _08024ED8
	lsls r0, r7, #0x10
	asrs r0, r0, #0xe
	ldr r3, _08024EDC
	adds r1, r2, r3
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _08024EC4
	ldr r0, _08024ED4
	adds r4, r2, r0
	ldr r1, _08024EE0
	adds r0, r2, r1
	ldrh r6, [r0]
	movs r7, #0
	movs r3, #0
	mov sb, r3
	ldr r0, _08024EE4
	adds r1, r2, r0
	ldr r2, _08024EE8
	mov r8, r2
_08024E8A:
	movs r0, #2
	strh r0, [r4]
	mov r3, sb
	strh r3, [r4, #2]
	strh r6, [r4, #4]
	str r5, [r4, #0xc]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	str r1, [sp]
	bl sub_080230C8
	adds r5, r0, #0
	ldr r1, [sp]
	cmp r5, #0
	beq _08024EC4
	ldrh r0, [r5]
	cmp r0, r8
	beq _08024EC4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #0x14
	cmp r7, #0x4f
	bls _08024E8A
_08024EC4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024ED4: .4byte 0x00004B1C
_08024ED8: .4byte gSomeBlend
_08024EDC: .4byte 0x000053B8
_08024EE0: .4byte 0x0000539A
_08024EE4: .4byte 0x0000539C
_08024EE8: .4byte 0x0000FF03
	.syntax divided
