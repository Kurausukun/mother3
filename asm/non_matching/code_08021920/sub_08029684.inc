	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _080296D0
	mov r8, r4
	adds r4, r0, r4
	strb r1, [r4]
	lsls r6, r0, #1
	ldr r4, _080296D4
	add r4, r8
	adds r4, r6, r4
	ldrh r5, [r3]
	strh r5, [r4]
	movs r4, #0x8b
	lsls r4, r4, #2
	add r4, r8
	adds r4, r6, r4
	ldrh r3, [r3, #2]
	strh r3, [r4]
	ldr r5, _080296D8
	add r8, r5
	add r6, r8
	strh r2, [r6]
	ldr r2, _080296DC
	ldr r3, _080296E0
	adds r2, r2, r3
	adds r0, r0, r2
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080296D0: .4byte gSave
_080296D4: .4byte 0x00000222
_080296D8: .4byte 0x00000236
_080296DC: .4byte gGame
_080296E0: .4byte 0x00008294
	.syntax divided
