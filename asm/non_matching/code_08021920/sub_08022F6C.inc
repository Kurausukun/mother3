	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	lsls r1, r1, #0x10
	ldr r3, _08022FA8
	asrs r6, r1, #0x10
	cmp r1, r3
	bne _08022FB0
	ldrh r0, [r4]
	lsrs r1, r3, #0x10
	cmp r0, r1
	beq _08022FDA
	ldr r7, _08022FAC
	adds r6, r1, #0
_08022F88:
	cmp r0, r7
	bls _08022F98
	ldrh r0, [r4]
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_08022F98:
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r6
	bne _08022F88
	b _08022FDA
	.align 2, 0
_08022FA8: .4byte 0xFFFF0000
_08022FAC: .4byte 0x0000FEFF
_08022FB0:
	movs r2, #0
	cmp r5, r6
	bge _08022FDA
	ldrh r0, [r4]
	lsrs r3, r3, #0x10
	adds r4, #2
	cmp r0, r3
	beq _08022FDA
	adds r1, r6, #0
_08022FC2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r2, r1
	bge _08022FDA
	ldrh r0, [r4]
	adds r4, #2
	cmp r0, r3
	bne _08022FC2
_08022FDA:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
