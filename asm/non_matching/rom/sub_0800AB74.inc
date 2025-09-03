	.syntax unified
sub_0800AB74:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	adds r3, r5, #0
	adds r3, #0x82
	movs r0, #3
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r7, _0800AC4C
	str r7, [r5, #0x70]
	ldr r0, _0800AC50
	adds r1, r7, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0800ABAA
	adds r0, #7
_0800ABAA:
	lsls r0, r0, #0xd
	lsrs r2, r0, #0x10
	movs r0, #2
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _0800ABB8
	adds r3, #7
_0800ABB8:
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x10
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_08001378
	str r0, [r5, #0x74]
	ldr r1, _0800AC54
	str r1, [r5, #0x78]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0800ABD4
	adds r0, #7
_0800ABD4:
	asrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x78]
	ldr r2, _0800AC58
	str r2, [r5, #0x7c]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0800ABEA
	adds r0, #7
_0800ABEA:
	asrs r1, r0, #3
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0800ABF6
	adds r0, #7
_0800ABF6:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r2
	str r0, [r5, #0x7c]
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrh r0, [r4, #6]
	strh r0, [r5, #6]
	movs r0, #8
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	movs r0, #0xdc
	strh r0, [r5, #0xc]
	movs r0, #0x18
	strh r0, [r5, #0xe]
	ldr r1, _0800AC5C
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800AC64
	movs r4, #0
_0800AC30:
	lsls r0, r4, #5
	adds r0, #0x10
	adds r0, r5, r0
	movs r1, #0x20
	ldr r2, _0800AC60
	bl sub_08001B54
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0800AC30
	b _0800AC90
	.align 2, 0
_0800AC4C: .4byte gUnknown_0202AF38
_0800AC50: .4byte 0xFFFEB140
_0800AC54: .4byte 0x06008000
_0800AC58: .4byte 0x06006000
_0800AC5C: .4byte 0xFFFFCE06
_0800AC60: .4byte 0x77777777
_0800AC64:
	ldr r0, _0800AC98
	movs r1, #0
	bl sub_0800289C
	adds r6, r0, #0
	ldr r0, _0800AC9C
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #5
	adds r6, r6, r0
	movs r4, #0
_0800AC78:
	lsls r1, r4, #5
	adds r1, #0x10
	adds r1, r5, r1
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0800AC78
_0800AC90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC98: .4byte gUnknown_09AF3790
_0800AC9C: .4byte gUnknown_080C2008
	.syntax divided
