	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x48
	ldr r0, [r2, #0x44]
	ldrb r1, [r4]
	cmp r0, r1
	bhs _08074900
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x4c]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r2, #0x40]
	str r0, [r2, #0x4c]
	ldr r1, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x18
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r2, #0x44]
	strh r0, [r3]
_08074900:
	ldr r0, [r2, #0x44]
	strb r0, [r4]
	ldr r6, [r2, #0x58]
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	movs r1, #1
	cmp r1, r0
	bge _08074914
	adds r1, r0, #0
_08074914:
	adds r4, r1, #0
	ldr r0, [r2, #0x44]
	adds r3, r0, #0
	muls r3, r4, r3
	ldr r5, [r2, #0x3c]
	ldrb r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	bls _08074936
	subs r1, r4, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	blo _0807493A
_08074936:
	movs r0, #0
	b _08074958
_0807493A:
	ldrb r1, [r5, #5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	bls _08074952
	subs r1, r4, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	blo _08074956
_08074952:
	movs r0, #1
	b _08074958
_08074956:
	movs r0, #2
_08074958:
	str r0, [r2, #0x58]
	cmp r6, #2
	bne _08074998
	ldr r0, [r2, #0x58]
	cmp r0, #2
	beq _080749C8
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r2, r5
	mov r0, sp
	bl __4Base
	ldr r6, _08074990
	ldr r0, _08074994
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	b _080749C8
	.align 2, 0
_08074990: .4byte _vt.3Unk
_08074994: .4byte vt_09F81278
_08074998:
	ldr r0, [r2, #0x58]
	cmp r0, #2
	bne _080749C8
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r2, r5
	mov r0, sp
	bl __4Base
	ldr r6, _080749D0
	ldr r0, _080749D4
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_080749C8:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080749D0: .4byte _vt.3Unk
_080749D4: .4byte vt_09F811F8
	.syntax divided
