	.syntax unified
sub_0801870C:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r5, _080187A4
	ldr r1, _080187A8
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801879A
	ldr r2, [r6, #0x34]
	cmp r2, #0
	beq _0801879A
	ldr r3, _080187AC
	adds r0, r5, r3
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801879A
	ldr r1, _080187B0
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0801879A
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	mov r4, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	ldrh r2, [r4, #2]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r3, _080187B4
	adds r0, r5, r3
	movs r4, #0
	strh r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r7, _080187B8
	adds r0, r5, r7
	strh r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r2, _080187BC
	adds r0, r5, r2
	strh r1, [r0]
	ldr r7, _080187C0
	adds r0, r5, r7
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r3
	strh r4, [r0]
_0801879A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080187A4: .4byte gGame
_080187A8: .4byte 0x00008494
_080187AC: .4byte 0x000067B8
_080187B0: .4byte 0x000067C5
_080187B4: .4byte 0x000058CE
_080187B8: .4byte 0x00005906
_080187BC: .4byte 0x0000593E
_080187C0: .4byte 0x000067C2
	.syntax divided
