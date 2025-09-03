	.syntax unified
sub_08038208:
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803822C
	ldr r1, _08038230
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038284
	ldr r0, _08038234
	ldr r1, _08038238
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08038240
	ldr r0, _0803823C
	movs r1, #8
	b _08038244
	.align 2, 0
_0803822C: .4byte gSomeBlend
_08038230: .4byte 0x00003531
_08038234: .4byte gGame
_08038238: .4byte 0x000082B8
_0803823C: .4byte gUnknown_09AF3790
_08038240:
	ldr r0, _0803828C
	movs r1, #9
_08038244:
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _08038290
	movs r3, #0x80
	lsls r3, r3, #1
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	adds r2, r4, #0
	bl sub_080382F4
	ldr r0, _08038294
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08038298
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803829C
	adds r1, r4, r0
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
_08038284:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803828C: .4byte gUnknown_09AF3790
_08038290: .4byte gUnknown_02018CE8
_08038294: .4byte 0x0000F4FA
_08038298: .4byte 0x00000871
_0803829C: .4byte 0x00000868
	.syntax divided
