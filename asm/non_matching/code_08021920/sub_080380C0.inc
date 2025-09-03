	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #4
	bhi _08038116
	lsls r0, r0, #2
	ldr r1, _080380D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080380D4: .4byte _080380D8
_080380D8:
	.4byte _080380EC
	.4byte _080380F8
	.4byte _08038104
	.4byte _08038110
	.4byte _0803812E
_080380EC:
	ldr r1, _080380F4
	movs r0, #0
	b _08038114
	.align 2, 0
_080380F4: .4byte gUnknown_02004100
_080380F8:
	ldr r1, _08038100
	movs r0, #1
	b _08038114
	.align 2, 0
_08038100: .4byte gUnknown_02004100
_08038104:
	ldr r1, _0803810C
	movs r0, #2
	b _08038114
	.align 2, 0
_0803810C: .4byte gUnknown_02004100
_08038110:
	ldr r1, _08038140
	movs r0, #3
_08038114:
	strb r0, [r1]
_08038116:
	ldr r0, _08038144
	ldr r1, _08038148
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08038154
	ldrh r0, [r4, #4]
	cmp r0, #1
	bls _08038154
	cmp r0, #3
	bne _0803814C
_0803812E:
	movs r0, #0xd2
	bl play_sound
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803817C
	b _0803816C
	.align 2, 0
_08038140: .4byte gUnknown_02004100
_08038144: .4byte gGame
_08038148: .4byte 0x000082B8
_0803814C:
	ldr r1, _08038174
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08038154:
	movs r0, #0xdc
	bl play_sound
	movs r0, #0
	bl sub_0803C4DC
	ldr r1, _08038178
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
_0803816C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038174: .4byte gUnknown_02004100
_08038178: .4byte gGame
	.syntax divided
