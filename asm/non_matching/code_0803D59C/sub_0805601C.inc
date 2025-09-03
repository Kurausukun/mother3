	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r4, _08056050
	movs r6, #0
	ldr r0, _08056054
	ldr r1, _08056058
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r6, r2
	bhs _080560A4
	movs r5, #0
	adds r7, r0, #0
_08056032:
	adds r0, r6, #0
	bl sub_08054FE0
	ldrb r1, [r0]
	ldrh r2, [r4]
	cmp r1, r2
	beq _0805605C
	strh r1, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #8]
	strh r5, [r4, #4]
	strh r5, [r4, #0xa]
	strh r5, [r4, #6]
	strh r5, [r4, #0xc]
	b _08056096
	.align 2, 0
_08056050: .4byte gUnknown_0200F930
_08056054: .4byte gSomeBlend
_08056058: .4byte 0x00002DFA
_0805605C:
	bl sub_080546B0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #2]
	cmp r0, r1
	bhs _08056092
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	cmp r2, #0
	beq _08056096
	cmp r1, r2
	blo _08056094
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bhi _08056096
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08056094
	subs r0, r3, r0
	strh r0, [r4, #8]
	b _08056096
_08056092:
	strh r5, [r4, #2]
_08056094:
	strh r5, [r4, #8]
_08056096:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x10
	ldrh r0, [r7]
	cmp r6, r0
	blo _08056032
_080560A4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
