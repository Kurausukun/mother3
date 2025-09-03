	.syntax unified
sub_0800303C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _08003090
	mov r8, r0
	ldr r1, _08003094
	mov ip, r1
	ldr r6, _08003098
	ldr r5, _0800309C
	ldr r7, _080030A0
_08003054:
	lsls r2, r4, #2
	add r2, ip
	adds r1, r3, #0
	ands r1, r6
	adds r0, r3, #0
	muls r0, r5, r0
	adds r3, r0, #1
	adds r0, r3, #0
	ands r0, r6
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r3, r0, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	bls _08003054
	movs r0, #0x9c
	lsls r0, r0, #2
	mov r1, r8
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003090: .4byte gUnknown_02005BF0
_08003094: .4byte gUnknown_02005230
_08003098: .4byte 0xFFFF0000
_0800309C: .4byte 0x00010DCD
_080030A0: .4byte 0x0000026F
	.syntax divided
