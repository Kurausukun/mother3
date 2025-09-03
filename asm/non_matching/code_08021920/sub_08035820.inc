	.syntax unified
sub_08035820:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _08035868
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080358A2
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldrh r0, [r7]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r2, r1
	ble _08035888
	cmp r6, #0
	beq _0803586C
	adds r0, r6, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803586C
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	b _08035870
	.align 2, 0
_08035868: .4byte gGame
_0803586C:
	bl sub_0801A5EC
_08035870:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	subs r0, r1, r0
	movs r1, #0xf0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, r1
	bge _0803589E
_08035888:
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r1, [r4, #4]
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldrh r0, [r7]
	lsrs r0, r0, #1
	subs r1, r1, r0
	cmp r2, r1
	bge _080358BE
_0803589E:
	movs r0, #0
	b _08035938
_080358A2:
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r0, #0
	ldrsh r3, [r5, r0]
	ldrh r0, [r7]
	lsrs r1, r0, #1
	adds r0, r3, r1
	cmp r2, r0
	bgt _0803589E
	ldrh r0, [r4, #4]
	adds r0, r2, r0
	subs r1, r3, r1
	cmp r0, r1
	blt _0803589E
_080358BE:
	ldr r0, _080358F4
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08035916
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _08035922
	cmp r6, #0
	beq _080358F8
	adds r0, r6, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080358F8
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	b _080358FC
	.align 2, 0
_080358F4: .4byte gGame
_080358F8:
	bl sub_0801A604
_080358FC:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #2]
	subs r0, r1, r0
	movs r1, #0xa0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, r1
	bge _0803589E
	b _08035922
_08035916:
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bgt _0803589E
_08035922:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	movs r2, #2
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #2]
	subs r1, r1, r2
	cmp r0, r1
	blt _0803589E
	movs r0, #1
_08035938:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
