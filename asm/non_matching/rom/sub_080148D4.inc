	.syntax unified
sub_080148D4:
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _08014938
	ldr r1, _0801493C
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08014940
	ldrb r1, [r0, #3]
	ldr r2, _08014944
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, _08014948
	adds r0, r4, r1
	strb r3, [r0]
	ldr r0, _0801494C
	ldrb r1, [r0]
	adds r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08014950
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08014954
	adds r0, r4, r1
	strb r3, [r0]
	ldr r0, _08014958
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08037958
	bl sub_0805B7D4
	ldr r1, _0801495C
	adds r1, #0x66
	strb r0, [r1]
	ldrb r3, [r1]
	cmp r3, #1
	beq _08014974
	cmp r3, #1
	bgt _08014960
	cmp r3, #0
	beq _08014966
	b _08014988
	.align 2, 0
_08014938: .4byte gSomeBlend
_0801493C: .4byte 0x00011D9C
_08014940: .4byte gUnknown_080C2A90
_08014944: .4byte 0x00011D9D
_08014948: .4byte 0x00011D9E
_0801494C: .4byte gUnknown_080C2A9C
_08014950: .4byte 0x000121B8
_08014954: .4byte 0x000121C0
_08014958: .4byte 0x000121BB
_0801495C: .4byte gEncounter
_08014960:
	cmp r3, #2
	beq _08014980
	b _08014988
_08014966:
	ldr r1, _08014970
	adds r0, r4, r1
	strb r3, [r0]
	b _08014988
	.align 2, 0
_08014970: .4byte 0x000121C1
_08014974:
	ldr r2, _0801497C
	adds r1, r4, r2
	movs r0, #2
	b _08014986
	.align 2, 0
_0801497C: .4byte 0x000121C1
_08014980:
	ldr r0, _080149C0
	adds r1, r4, r0
	movs r0, #1
_08014986:
	strb r0, [r1]
_08014988:
	ldr r0, _080149C4
	ldr r1, _080149C8
	ldr r1, [r1]
	movs r2, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0xa
	bl sub_080031F0
	ldr r2, _080149CC
	ldr r1, _080149D0
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	bl sub_08026AF8
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080149C0: .4byte 0x000121C1
_080149C4: .4byte gUnknown_02000008
_080149C8: .4byte gUnknown_02000028
_080149CC: .4byte gGame
_080149D0: .4byte 0x000067C4
	.syntax divided
