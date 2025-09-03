	.syntax unified
sub_08022ED0:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _08022F0C
	ldrh r2, [r0, #2]
	ldr r4, _08022F10
	adds r6, r0, #0
	cmp r2, r4
	beq _08022F00
	cmp r2, r3
	beq _08022F00
	adds r5, r6, #0
	adds r2, r4, #0
_08022EEC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _08022F00
	cmp r0, r3
	bne _08022EEC
_08022F00:
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08022F0C: .4byte gUnknown_08D2DE58
_08022F10: .4byte 0x0000FFFF
	.syntax divided
