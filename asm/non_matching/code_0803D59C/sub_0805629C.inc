	.syntax unified
sub_0805629C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldrb r1, [r5, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08056328
	ldrh r2, [r5, #0x14]
	ldrh r0, [r5, #0x12]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r5, #0x14]
	movs r0, #0
	movs r1, #0x1f
	bl sub_08002E60
	adds r2, r0, #0
	mov r4, r8
	adds r0, r4, r7
	cmp r4, r0
	bge _08056314
	lsls r6, r2, #0x10
_080562D8:
	lsls r0, r4, #5
	ldr r1, _080562F0
	adds r2, r0, r1
	ldr r1, [r5]
	adds r1, r1, r0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080562F4
	cmp r0, #1
	beq _080562FE
	b _08056306
	.align 2, 0
_080562F0: .4byte gUnknown_02018778
_080562F4:
	adds r0, r2, #0
	lsrs r2, r6, #0x10
	bl sub_08056334
	b _08056306
_080562FE:
	adds r0, r2, #0
	lsrs r2, r6, #0x10
	bl sub_08056408
_08056306:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, r8
	adds r0, r1, r7
	cmp r4, r0
	blt _080562D8
_08056314:
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08056324
	ldrb r0, [r5, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x1d]
	b _08056328
_08056324:
	subs r0, #1
	strh r0, [r5, #0x12]
_08056328:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
