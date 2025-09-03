	.syntax unified
sub_08024CC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _08024D98
	ldr r1, _08024D9C
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08024DA0
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08024DA4
	adds r5, r4, r3
	adds r0, r5, #0
	bl sub_08009E38
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009F10
	ldr r0, _08024DA8
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_08024F74
	ldr r1, _08024DAC
	adds r2, r4, r1
	ldr r3, _08024DB0
	adds r1, r4, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #0xa
	ldr r3, _08024DB4
	adds r0, r0, r3
	str r0, [r2]
	ldr r0, _08024DB8
	adds r2, r4, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #6
	ldr r1, _08024DBC
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	movs r3, #0
	movs r7, #0
	ldr r2, _08024DC0
	adds r4, r4, r2
	ldr r0, _08024DC4
	mov r8, r0
_08024D32:
	movs r0, #2
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r0, #0xf0
	strh r0, [r5, #6]
	str r6, [r5, #0xc]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	adds r0, r6, #0
	str r1, [sp]
	str r3, [sp, #4]
	bl sub_080230C8
	adds r6, r0, #0
	ldr r1, [sp]
	ldr r3, [sp, #4]
	cmp r6, #0
	beq _08024D7A
	ldrh r0, [r6]
	cmp r0, r8
	bne _08024D6E
	adds r6, #4
	adds r0, r1, #0
	adds r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08024D6E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x14
	cmp r7, #0x4f
	bls _08024D32
_08024D7A:
	ldr r2, _08024D98
	adds r1, r3, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08024DC8
	adds r2, r2, r1
	strh r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D98: .4byte gSomeBlend
_08024D9C: .4byte 0x00011960
_08024DA0: .4byte 0x00011C8E
_08024DA4: .4byte 0x00005778
_08024DA8: .4byte 0x00004B1C
_08024DAC: .4byte 0x000053B0
_08024DB0: .4byte 0x0000539A
_08024DB4: .4byte 0x06008000
_08024DB8: .4byte 0x000053B4
_08024DBC: .4byte 0x06006000
_08024DC0: .4byte 0x0000539C
_08024DC4: .4byte 0x0000FF03
_08024DC8: .4byte 0x000053A0
	.syntax divided
