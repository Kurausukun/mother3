	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08009D28
	ldr r3, _08009D2C
	adds r0, r2, r3
	ldrb r3, [r0]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08009CFA
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08009CFA:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08009D34
	adds r6, r2, #0
	adds r6, #0x50
	lsls r0, r3, #0x1b
	lsrs r4, r0, #0x1e
	ldr r3, _08009D30
	adds r0, r2, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08009D18
	adds r0, #7
_08009D18:
	asrs r3, r0, #3
	adds r3, r1, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	b _08009D5E
	.align 2, 0
_08009D28: .4byte gSomeBlend
_08009D2C: .4byte 0x00011D16
_08009D30: .4byte 0x00011C96
_08009D34:
	adds r5, r2, #0
	adds r5, #0x50
	ldr r3, _08009D68
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1e
	subs r3, #0x80
	adds r0, r2, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08009D50
	adds r0, #7
_08009D50:
	asrs r3, r0, #3
	adds r3, r1, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
_08009D5E:
	bl sub_08001378
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08009D68: .4byte 0x00011D9A
	.syntax divided
