	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _08049B58
	mov ip, r0
	movs r5, #1
	ldr r7, _08049B5C
_08049B06:
	movs r0, #0x8c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r2, r6, r2
	ldr r0, _08049B60
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08049B64
	adds r3, r2, r0
	ldrh r1, [r3]
	mov r0, ip
	ands r0, r1
	orrs r0, r5
	strh r0, [r3]
	ldr r0, _08049B68
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08049B6C
	adds r2, r2, r0
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x5f
	bls _08049B06
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049B58: .4byte 0xFFFFFC00
_08049B5C: .4byte 0xFFFFF000
_08049B60: .4byte 0x0000268B
_08049B64: .4byte 0x0000268A
_08049B68: .4byte 0x00002689
_08049B6C: .4byte 0x00002688
	.syntax divided
