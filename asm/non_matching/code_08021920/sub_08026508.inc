	.syntax unified
sub_08026508:
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	bl get_obj_direct
	ldr r1, _08026538
	movs r2, #0
	strb r2, [r1, #8]
	adds r0, r1, #0
	adds r0, #0x66
	strb r2, [r0]
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802653C
	strb r2, [r3]
	strh r4, [r1, #0xa]
	b _080265AA
	.align 2, 0
_08026538: .4byte gEncounter
_0802653C:
	strb r0, [r1, #6]
	cmp r4, #0
	bne _08026564
	strb r4, [r1]
	strh r4, [r1, #0xa]
	ldr r0, _08026558
	ldr r2, _0802655C
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08026560
	movs r0, #1
	b _0802656C
	.align 2, 0
_08026558: .4byte gGame
_0802655C: .4byte 0x00008494
_08026560:
	movs r0, #0
	b _0802656C
_08026564:
	movs r0, #1
	strb r0, [r1]
	strh r5, [r1, #0xa]
	movs r0, #0xff
_0802656C:
	strb r0, [r1, #7]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_0802665C
	ldr r0, _080265F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080265AA
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	ldr r2, _080265F4
	movs r3, #8
	movs r0, #8
	strb r0, [r2]
	ldr r0, _080265F8
	adds r1, r2, r0
	movs r0, #5
	strb r0, [r1]
	ldr r1, _080265FC
	adds r2, r2, r1
	ldrb r0, [r2]
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080265AA:
	bl sub_08026724
	ldr r2, _080265F4
	ldr r0, _08026600
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08026604
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r3, _08026608
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0802660C
	adds r2, r2, r0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
	movs r0, #5
	bl musicPlayerStop_sfx
	movs r0, #1
	bl sub_0803C4DC
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080265F0: .4byte gEncounter
_080265F4: .4byte gGame
_080265F8: .4byte 0x0000595C
_080265FC: .4byte 0x000067C4
_08026600: .4byte 0x00008495
_08026604: .4byte 0x000067AC
_08026608: .4byte 0x00008460
_0802660C: .4byte 0x000083C0
	.syntax divided
