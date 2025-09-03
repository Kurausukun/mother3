	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, _08001510
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r6, [r0]
	ldrh r1, [r0]
	ldr r2, _08001514
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _08001518
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080019DC
	adds r0, r4, r5
	adds r1, r5, #0
	bl sub_080019DC
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_080019DC
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r4, r2
	adds r1, r5, #0
	bl sub_080019DC
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, #0
	bl sub_080019DC
	ldr r1, _0800151C
	adds r0, r4, r1
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r2, _08001520
	adds r0, r4, r2
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r0, _08001524
	adds r1, r4, r0
	ldrb r0, [r1]
	mov r2, r8
	strb r2, [r1]
	ldr r2, _08001528
	adds r0, r4, r2
	ldrb r2, [r0]
	mov r2, r8
	strb r2, [r0]
	ldr r2, _0800152C
	adds r4, r4, r2
	ldrb r2, [r4]
	mov r2, r8
	strb r2, [r4]
	ldrb r2, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0xa
	orrs r1, r0
	ldrh r0, [r5]
	strh r1, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001510: .4byte 0x00002C46
_08001514: .4byte 0x00002C44
_08001518: .4byte 0x00002C42
_0800151C: .4byte 0x00002C48
_08001520: .4byte 0x00002C4A
_08001524: .4byte 0x00002C4C
_08001528: .4byte 0x00002C4D
_0800152C: .4byte 0x00002C4E
	.syntax divided
