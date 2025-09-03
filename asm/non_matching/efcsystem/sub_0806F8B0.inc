	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x30
	ldrsh r2, [r5, r0]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0806F8C2
	adds r0, #0x1f
_0806F8C2:
	ldr r7, _0806F968
	asrs r0, r0, #5
	ldr r4, _0806F96C
	ands r0, r4
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08069594
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0806F8F2
	adds r0, #0x1f
_0806F8F2:
	asrs r0, r0, #5
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08069594
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #4]
	ldrh r2, [r5, #0x34]
	adds r0, r0, r2
	strh r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F968: .4byte gUnknown_080EF880
_0806F96C: .4byte 0x000003FF
	.syntax divided
