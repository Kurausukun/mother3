	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080378B0
	ldr r2, _080378A8
	ldr r0, _080378AC
	adds r1, r2, r0
	movs r0, #0xb4
	b _080378B8
	.align 2, 0
_080378A8: .4byte gSomeBlend
_080378AC: .4byte 0x000035B6
_080378B0:
	ldr r2, _0803791C
	ldr r0, _08037920
	adds r1, r2, r0
	ldr r0, _08037924
_080378B8:
	strh r0, [r1]
	adds r4, r2, #0
	ldr r1, _08037928
	adds r5, r4, r1
	ldrb r3, [r5]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	bne _08037914
	ldr r0, _0803792C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5]
	ldr r1, _08037930
	adds r0, r4, r1
	strb r6, [r0]
	ldrh r0, [r4, #0x1a]
	ldr r0, _08037934
	strh r0, [r4, #0x1a]
	ldr r0, _08037938
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	bl sub_08037B4C
_08037914:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803791C: .4byte gSomeBlend
_08037920: .4byte 0x000035B6
_08037924: .4byte 0x0000FFFF
_08037928: .4byte 0x000035BA
_0803792C: .4byte 0x000121BB
_08037930: .4byte 0x00003530
_08037934: .4byte 0x0000FFE0
_08037938: .4byte 0x000121B9
	.syntax divided
