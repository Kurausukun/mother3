	.syntax unified
sub_0803917C:
	push {r4, lr}
	sub sp, #8
	ldr r1, _0803928C
	ldr r2, _08039290
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _0803919A
	adds r2, #4
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _080391C2
_0803919A:
	ldr r0, _08039294
	ldr r3, _08039298
	ldr r1, _0803929C
	ldr r2, _080392A0
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	rsbs r2, r2, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x74
	movs r3, #0x20
	bl sub_0803D678
_080391C2:
	ldr r4, _0803928C
	ldr r3, _08039290
	adds r0, r4, r3
	ldr r2, _080392A4
	adds r1, r4, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _08039200
	ldr r0, _080392A8
	ldr r3, _08039298
	ldr r1, _0803929C
	ldr r2, _080392A0
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x98
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x74
	movs r3, #0x20
	bl sub_0803D678
_08039200:
	ldr r3, _080392AC
	adds r0, r4, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08039218
	ldr r2, _080392B0
	adds r0, r4, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _08039242
_08039218:
	ldr r0, _080392B4
	ldr r3, _080392B8
	ldr r1, _0803929C
	ldr r2, _080392A0
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	rsbs r1, r1, #0
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0x4c
	movs r3, #0x20
	bl sub_0803D678
_08039242:
	ldr r0, _0803928C
	ldr r3, _080392AC
	adds r1, r0, r3
	ldr r2, _080392BC
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08039282
	ldr r0, _080392C0
	ldr r3, _080392B8
	ldr r1, _0803929C
	ldr r2, _080392A0
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0xe8
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0x4c
	movs r3, #0x20
	bl sub_0803D678
_08039282:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803928C: .4byte gSomeBlend
_08039290: .4byte 0x0000366E
_08039294: .4byte gUnknown_080C1E80
_08039298: .4byte gUnknown_080C2038
_0803929C: .4byte gGame
_080392A0: .4byte 0x00009D10
_080392A4: .4byte 0x00003676
_080392A8: .4byte gUnknown_080C1E98
_080392AC: .4byte 0x0000366C
_080392B0: .4byte 0x00003670
_080392B4: .4byte gUnknown_080C1EB0
_080392B8: .4byte gUnknown_080C2030
_080392BC: .4byte 0x00003674
_080392C0: .4byte gUnknown_080C1EC8
	.syntax divided
