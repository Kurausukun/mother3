	.syntax unified
sub_08026AF8:
	push {r4, lr}
	bl sub_08005BFC
	ldr r2, _08026B38
	ldrb r0, [r2, #2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	movs r0, #0
	bl startSong_battle
	movs r0, #0
	bl musicPlayerStop_bgm
	movs r0, #1
	bl musicPlayerStop_bgm
	movs r0, #8
	movs r1, #4
	bl musicPlayerFadeOut_sfx
	ldr r4, _08026B3C
	ldrb r0, [r4]
	cmp r0, #1
	bne _08026B44
	ldr r1, _08026B40
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r2, [r0, #0xa]
	b _08026B96
	.align 2, 0
_08026B38: .4byte gGame
_08026B3C: .4byte gEncounter
_08026B40: .4byte gBattleGroupTable
_08026B44:
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026B94
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x66
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026B74
	ldr r2, _08026B70
	b _08026B96
	.align 2, 0
_08026B70: .4byte 0x00000796
_08026B74:
	ldr r2, _08026B8C
	adds r0, r1, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _08026B90
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r2, [r0, #0xc]
	b _08026B96
	.align 2, 0
_08026B8C: .4byte gMonsterData
_08026B90: .4byte 0xFFFFFF00
_08026B94:
	ldr r2, _08026BC0
_08026B96:
	ldr r0, _08026BC4
	ldr r1, _08026BC8
	adds r3, r0, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026BB2
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x8d
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08026BB2:
	adds r0, r2, #0
	bl startSong
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026BC0: .4byte 0x00000794
_08026BC4: .4byte gSomeBlend
_08026BC8: .4byte 0x0000361A
	.syntax divided
