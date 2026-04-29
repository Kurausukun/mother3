	.syntax unified
sub_08025F98:
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08025FB2
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
_08025FB2:
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldr r0, _08025FD8
	ldr r1, _08025FDC
	adds r2, r0, r1
	ldrb r1, [r2]
	ldr r3, _08025FE0
	adds r0, r0, r3
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #3
	beq _08025FF0
	cmp r0, #3
	bgt _08025FE4
	cmp r0, #0
	beq _08025FEA
	b _08026000
	.align 2, 0
_08025FD8: .4byte gGame
_08025FDC: .4byte 0x0000829B
_08025FE0: .4byte 0x0000829C
_08025FE4:
	cmp r0, #6
	beq _08025FFA
	b _08026000
_08025FEA:
	bl sub_08033C14
	b _08026000
_08025FF0:
	movs r0, #0
	strb r0, [r2]
	bl sub_08033CA0
	b _08026000
_08025FFA:
	movs r0, #5
	bl musicPlayerStop_sfx
_08026000:
	ldr r4, _080260A0
	ldr r1, _080260A4
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xe8
	bne _08026012
	movs r0, #9
	bl musicPlayerStop_sfx
_08026012:
	movs r0, #8
	movs r1, #4
	bl musicPlayerFadeOut_sfx
	adds r2, r5, #0
	adds r2, #0xca
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0xa2
	movs r0, #0
	strh r0, [r1]
	ldr r5, _080260A8
	ldr r3, _080260AC
	adds r0, r5, r3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08026044
	bl sub_08037958
_08026044:
	ldr r1, _080260B0
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #5
	beq _08026052
	cmp r0, #9
	bne _08026098
_08026052:
	ldrb r1, [r4, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08026098
	ldr r3, _080260B4
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08026098
	ldr r0, _080260B8
	bl sub_0800A240
	ldr r1, _080260BC
	adds r0, r5, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r3, _080260C0
	adds r2, r5, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080260C4
	adds r1, r5, r0
	movs r0, #0x50
	strb r0, [r1]
_08026098:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080260A0: .4byte gGame
_080260A4: .4byte 0x000067AC
_080260A8: .4byte gSomeBlend
_080260AC: .4byte 0x000035BA
_080260B0: .4byte 0x0000845A
_080260B4: .4byte 0x00008496
_080260B8: .4byte gUnknown_080C1FF0
_080260BC: .4byte 0x00005778
_080260C0: .4byte 0x000121BB
_080260C4: .4byte 0x000121C4
	.syntax divided
