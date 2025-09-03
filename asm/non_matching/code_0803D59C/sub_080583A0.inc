	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov ip, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r3, r4, #0
	mov r0, sp
	strh r5, [r0]
	ldrh r1, [r1, #2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08058412
	ldrh r0, [r6]
	cmp r0, r8
	beq _080583F2
	cmp r4, #0x40
	bne _080583E6
	movs r0, #0xd0
	bl play_sound
	b _080583EC
_080583E6:
	movs r0, #0xd1
	bl play_sound
_080583EC:
	ldrh r0, [r6]
	subs r0, #1
	b _08058454
_080583F2:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805845A
	cmp r3, #0x40
	bne _08058406
	movs r0, #0xd0
	bl play_sound
	b _0805840C
_08058406:
	movs r0, #0xd1
	bl play_sound
_0805840C:
	strh r7, [r6]
	movs r0, #1
	b _0805845C
_08058412:
	ands r1, r2
	cmp r1, #0
	beq _0805845A
	ldrh r0, [r6]
	cmp r0, r7
	beq _08058436
	cmp r2, #0x80
	bne _0805842A
	movs r0, #0xd0
	bl play_sound
	b _08058430
_0805842A:
	movs r0, #0xd1
	bl play_sound
_08058430:
	ldrh r0, [r6]
	adds r0, #1
	b _08058454
_08058436:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805845A
	mov r0, ip
	cmp r0, #0x80
	bne _0805844C
	movs r0, #0xd0
	bl play_sound
	b _08058452
_0805844C:
	movs r0, #0xd1
	bl play_sound
_08058452:
	mov r0, r8
_08058454:
	strh r0, [r6]
	movs r0, #1
	b _0805845C
_0805845A:
	movs r0, #0
_0805845C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
