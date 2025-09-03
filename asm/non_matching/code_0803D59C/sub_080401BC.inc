	.syntax unified
	push {lr}
	ldr r0, _080401D4
	ldrb r0, [r0]
	cmp r0, #6
	beq _08040292
	ldr r1, _080401D8
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080401DC
	movs r0, #0
	strb r0, [r1, #2]
	b _080401E0
	.align 2, 0
_080401D4: .4byte gUnknown_0200F920
_080401D8: .4byte gUnknown_02004100
_080401DC:
	bl sub_08003EA0
_080401E0:
	ldr r0, _080401FC
	movs r1, #0
	strh r1, [r0]
	bl sub_080037D8
	ldr r0, _08040200
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08040292
	lsls r0, r0, #2
	ldr r1, _08040204
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080401FC: .4byte gUnknown_03004B00
_08040200: .4byte gUnknown_0200F920
_08040204: .4byte _08040208
_08040208:
	.4byte _08040220
	.4byte _08040220
	.4byte _08040220
	.4byte _08040280
	.4byte _0804028C
	.4byte _0804028C
_08040220:
	movs r0, #0
	bl sub_08003B58
	movs r0, #1
	bl sub_08003B58
	ldr r0, _08040268
	bl sub_080038A4
	ldr r0, _0804026C
	bl sub_080038A4
	movs r0, #0xf6
	lsls r0, r0, #2
	bl sub_080038A4
	ldr r0, _08040270
	bl sub_080038A4
	ldr r0, _08040274
	bl sub_080038A4
	ldr r0, _08040278
	bl sub_080038A4
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
	ldr r0, _0804027C
	bl sub_080038A4
	movs r0, #0x53
	bl sub_080038A4
	b _08040292
	.align 2, 0
_08040268: .4byte 0x000003D6
_0804026C: .4byte 0x000003D7
_08040270: .4byte 0x000003D9
_08040274: .4byte 0x000003DA
_08040278: .4byte 0x000003DB
_0804027C: .4byte 0x000003DD
_08040280:
	bl sub_0800377C
	movs r0, #0x54
	bl sub_080038A4
	b _08040292
_0804028C:
	movs r0, #0x28
	bl sub_080038A4
_08040292:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
