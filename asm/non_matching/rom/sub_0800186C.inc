	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bhi _080018D4
	ldr r1, _080018A4
	ldr r2, _080018A8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _080018AC
	movs r0, #0
	strh r0, [r3]
	mov r2, sp
	adds r1, #0xce
	ldrh r0, [r1]
	strh r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3]
	cmp r4, #0
	beq _080018B0
	cmp r4, #1
	beq _080018BC
	b _080018BE
	.align 2, 0
_080018A4: .4byte 0x04000132
_080018A8: .4byte 0x00008304
_080018AC: .4byte 0x04000208
_080018B0:
	bl sub_08090FA8
	svc #3
	bl sub_08090FB0
	b _080018BE
_080018BC:
	svc #2
_080018BE:
	ldr r2, _080018DC
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080018E0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_08001960
_080018D4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080018DC: .4byte 0x04000208
_080018E0: .4byte 0x04000200
	.syntax divided
