	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r3, #0
	lsls r1, r1, #0x10
	ldr r4, _08022F2C
	asrs r5, r1, #0x10
	cmp r1, r4
	bne _08022F40
	ldrh r0, [r2]
	lsrs r1, r4, #0x10
	b _08022F38
	.align 2, 0
_08022F2C: .4byte 0xFFFF0000
_08022F30:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2]
_08022F38:
	adds r2, #2
	cmp r0, r1
	bne _08022F30
	b _08022F64
_08022F40:
	movs r1, #0
	cmp r3, r5
	bge _08022F64
	ldrh r0, [r2]
	lsrs r4, r4, #0x10
	b _08022F5E
_08022F4C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r5
	bge _08022F64
	ldrh r0, [r2]
_08022F5E:
	adds r2, #2
	cmp r0, r4
	bne _08022F4C
_08022F64:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
