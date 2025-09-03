	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4]
	ldr r0, _08024F28
	cmp r1, r0
	beq _08024F5E
	ldr r1, _08024F2C
	adds r0, r6, r1
	str r4, [r0]
	movs r5, #1
	ldr r2, _08024F30
	mov r8, r2
	ldr r7, _08024F34
_08024F0C:
	ldrh r0, [r4]
	cmp r0, r8
	bne _08024F38
	adds r4, #4
	lsls r0, r5, #2
	ldr r2, _08024F2C
	adds r1, r6, r2
	adds r1, r1, r0
	str r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08024F4E
	.align 2, 0
_08024F28: .4byte 0x0000FFFF
_08024F2C: .4byte 0x0000089C
_08024F30: .4byte 0x0000FF03
_08024F34: .4byte 0x0000FEFF
_08024F38:
	cmp r0, r7
	bls _08024F4C
	adds r4, #2
	ldrh r0, [r4]
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _08024F4E
_08024F4C:
	adds r4, #2
_08024F4E:
	ldrh r1, [r4]
	ldr r0, _08024F68
	cmp r1, r0
	bne _08024F0C
	ldr r0, _08024F6C
	ldr r2, _08024F70
	adds r0, r0, r2
	strh r5, [r0]
_08024F5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024F68: .4byte 0x0000FFFF
_08024F6C: .4byte gSomeBlend
_08024F70: .4byte 0x000053AE
	.syntax divided
