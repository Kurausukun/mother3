	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803F198
	ldr r1, _0803F19C
	adds r0, r0, r1
	ldrh r3, [r0]
	cmp r6, r3
	bhs _0803F190
	adds r7, r0, #0
_0803F136:
	adds r0, r6, #0
	bl sub_08054FE0
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_08054FF0
	adds r4, r0, #0
	ldr r0, [r5, #0x20]
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x34]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803F1A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803F260
	ldr r0, [r5, #0x18]
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _0803F168
	str r1, [r5, #0x18]
_0803F168:
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	ldrh r2, [r4, #0x10]
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	cmp r1, r0
	ble _0803F178
	strh r2, [r5, #0x1c]
_0803F178:
	adds r0, r5, #0
	bl sub_08055254
	adds r0, r5, #0
	bl sub_080552B8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r7]
	cmp r6, r0
	blo _0803F136
_0803F190:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F198: .4byte gSomeBlend
_0803F19C: .4byte 0x00002DFA
	.syntax divided
