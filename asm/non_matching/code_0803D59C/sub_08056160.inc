	.syntax unified
sub_08056160:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080561E4
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r1, r2
	ldrh r2, [r0]
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r6, #0
	adds r3, r1, #0
	ldr r7, _080561E8
	adds r7, r7, r3
	mov sb, r7
	ldr r0, _080561EC
	adds r0, r0, r3
	mov r8, r0
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r1, r1, r3
	mov ip, r1
	ldr r2, _080561F0
	adds r2, r2, r3
	mov sl, r2
	ldr r7, _080561F4
	adds r5, r3, r7
	ldr r0, _080561F8
	adds r4, r3, r0
_080561A2:
	lsls r1, r6, #1
	mov r7, sb
	adds r2, r1, r7
	mov r7, r8
	ldrh r0, [r7]
	strh r0, [r2]
	mov r0, ip
	adds r2, r1, r0
	mov r7, sl
	ldrh r0, [r7]
	strh r0, [r2]
	adds r1, r1, r5
	ldrh r0, [r4]
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _080561A2
	adds r2, r3, #0
	ldr r1, [r2, #8]
	cmp r1, #1
	beq _080561FC
	cmp r1, #2
	beq _08056202
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056208
	lsrs r0, r1, #1
	adds r0, #1
	str r0, [r2, #8]
	b _0805620C
	.align 2, 0
_080561E4: .4byte gSave
_080561E8: .4byte 0x00000222
_080561EC: .4byte 0x0000070A
_080561F0: .4byte 0x0000070C
_080561F4: .4byte 0x00000236
_080561F8: .4byte 0x0000070E
_080561FC:
	movs r0, #0
	str r0, [r2, #8]
	b _0805620C
_08056202:
	movs r0, #1
	str r0, [r2, #8]
	b _0805620C
_08056208:
	lsrs r0, r1, #1
	str r0, [r3, #8]
_0805620C:
	movs r6, #0
	ldr r7, _08056290
_08056210:
	ldr r0, _08056294
	adds r0, r6, r0
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _08056298
	adds r4, r1, r0
	adds r0, r6, #0
	bl sub_08054FF0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803F1A0
	ldr r1, [r4, #0x20]
	ldr r0, [r5, #4]
	adds r2, r1, r0
	cmp r2, r7
	ble _0805623A
	ldr r2, _08056290
_0805623A:
	str r2, [r4, #0x18]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r3, #0xe
	ldrsh r0, [r5, r3]
	adds r0, r1, r0
	cmp r0, r7
	ble _0805624C
	adds r0, r7, #0
_0805624C:
	movs r5, #0
	strh r0, [r4, #0x1c]
	cmp r2, #0
	bgt _0805625A
	movs r0, #1
	str r0, [r4, #0x20]
	str r0, [r4, #0x18]
_0805625A:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08056266
	strh r5, [r4, #0x24]
	strh r5, [r4, #0x1c]
_08056266:
	ldrb r0, [r4]
	bl sub_08001D58
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08056276
	strh r5, [r4, #0x24]
	strh r5, [r4, #0x1c]
_08056276:
	strh r5, [r4, #0x30]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _08056210
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056290: .4byte 0x000003E7
_08056294: .4byte gSave
_08056298: .4byte gCharStats
	.syntax divided
