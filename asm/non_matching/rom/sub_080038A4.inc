	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	cmp r3, #0
	bne _080038E0
	ldr r2, _080038D4
	ldr r1, _080038D8
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r1, _080038DC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r0, #0
	bl m4aSongNumStart
	b _08003916
	.align 2, 0
_080038D4: .4byte gUnknown_02015ED8
_080038D8: .4byte gUnknown_02015EC0
_080038DC: .4byte gUnknown_02015EF0
_080038E0:
	adds r0, r4, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08003916
	ldr r3, _0800391C
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r3, r1, r3
	ldr r0, _08003920
	adds r0, r1, r0
	ldrh r2, [r0]
	strh r2, [r3]
	strh r4, [r0]
	ldr r0, _08003924
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	bl m4aSongNumStart
_08003916:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800391C: .4byte gUnknown_02015ED8
_08003920: .4byte gUnknown_02015EC0
_08003924: .4byte gUnknown_02015EF0
	.syntax divided
