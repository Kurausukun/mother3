	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080031AC
	ldr r2, [r0]
	ldr r1, _080031B0
	mov r8, r0
	cmp r2, r1
	ble _08003174
	ldr r0, _080031B4
	cmp r2, r0
	bne _080030C4
	ldr r0, _080031B8
	bl sub_0800303C
_080030C4:
	movs r3, #0
	ldr r0, _080031BC
	mov sb, r0
	ldr r7, _080031C0
	mov ip, sb
	adds r5, r7, #0
_080030D0:
	ldr r4, [r5]
	movs r6, #0x80
	lsls r6, r6, #0x18
	ands r4, r6
	ldr r0, [r5, #4]
	ldr r1, _080031C4
	ands r0, r1
	orrs r4, r0
	ldr r1, _080031C8
	adds r0, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	lsrs r2, r4, #1
	ldr r1, [r0]
	eors r1, r2
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	eors r1, r0
	stm r5!, {r1}
	adds r3, #1
	cmp r3, #0xe2
	ble _080030D0
	ldr r5, _080031CC
	cmp r3, r5
	bgt _0800313E
	ldr r1, _080031C0
	ldr r4, _080031BC
	mov ip, r4
	lsls r0, r3, #2
	adds r2, r0, r1
	ldr r4, _080031D0
	adds r0, r0, r4
	adds r7, r0, r1
_08003118:
	ldr r4, [r2]
	ands r4, r6
	ldr r0, [r2, #4]
	ldr r1, _080031C4
	ands r0, r1
	orrs r4, r0
	lsrs r0, r4, #1
	ldm r7!, {r1}
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	eors r1, r0
	stm r2!, {r1}
	adds r3, #1
	cmp r3, r5
	ble _08003118
_0800313E:
	ldr r2, _080031C0
	ldr r0, _080031D4
	adds r3, r2, r0
	ldr r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r4, r0
	ldr r0, [r2]
	ldr r1, _080031C4
	ands r0, r1
	orrs r4, r0
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r2, r2, r1
	lsrs r0, r4, #1
	ldr r1, [r2]
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sb
	ldr r0, [r0]
	eors r1, r0
	str r1, [r3]
	movs r0, #0
	mov r4, r8
	str r0, [r4]
_08003174:
	ldr r2, _080031C0
	mov r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r1, #1
	mov r0, r8
	str r1, [r0]
	lsrs r0, r4, #0xb
	eors r4, r0
	lsls r0, r4, #7
	ldr r1, _080031D8
	ands r0, r1
	eors r4, r0
	lsls r0, r4, #0xf
	ldr r1, _080031DC
	ands r0, r1
	eors r4, r0
	lsrs r0, r4, #0x12
	eors r4, r0
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080031AC: .4byte gUnknown_02005BF0
_080031B0: .4byte 0x0000026F
_080031B4: .4byte 0x00000271
_080031B8: .4byte 0x00001105
_080031BC: .4byte gUnknown_08CDB9F0
_080031C0: .4byte gUnknown_02005230
_080031C4: .4byte 0x7FFFFFFF
_080031C8: .4byte 0x0000018D
_080031CC: .4byte 0x0000026E
_080031D0: .4byte 0xFFFFFC74
_080031D4: .4byte 0x000009BC
_080031D8: .4byte 0x9D2C5680
_080031DC: .4byte 0xEFC60000
	.syntax divided
