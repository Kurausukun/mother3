	.syntax unified
sub_08068674:
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	movs r6, #0x9c
	lsls r6, r6, #3
_08068680:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r0, r5
	adds r1, r1, r6
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, r0, r6
	adds r0, r5, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #7
	ble _08068680
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, _08068708
	mov r0, sp
	movs r2, #1
	bl sub_080706D0
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E948
	ldr r1, _0806870C
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	movs r3, #0x8b
	lsls r3, r3, #4
	adds r4, r5, r3
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806DEC4
	adds r0, r4, #0
	bl sub_08087260
	ldr r1, _08068710
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _08068714
	adds r0, r5, r3
	movs r1, #0
	bl sub_0806DB38
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068708: .4byte 0x000003A7
_0806870C: .4byte 0x0000081C
_08068710: .4byte 0x00000958
_08068714: .4byte 0x000009F4
	.syntax divided
